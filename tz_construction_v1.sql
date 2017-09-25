-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2017 at 04:31 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tz_construction_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_assets`
--

CREATE TABLE `xa4nb_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_assets`
--

INSERT INTO `xa4nb_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 141, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 32, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 33, 34, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 35, 36, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 37, 38, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 39, 40, 1, 'com_login', 'com_login', '{}'),
(13, 1, 41, 42, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 43, 44, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 45, 46, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 47, 52, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 53, 54, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 55, 100, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 101, 104, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 105, 106, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 107, 108, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 109, 110, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 111, 112, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 113, 116, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 117, 118, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 102, 103, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 114, 115, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 119, 120, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 121, 122, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 123, 124, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 125, 126, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 127, 128, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 129, 130, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 56, 57, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 58, 59, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 60, 61, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 62, 63, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 64, 65, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 66, 67, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 68, 69, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 70, 71, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 72, 73, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 74, 75, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 76, 77, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 78, 79, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 80, 81, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 82, 83, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 84, 85, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 48, 49, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 1, 131, 132, 1, 'com_sppagebuilder', 'SP Page Builder', '{}'),
(56, 18, 86, 87, 2, 'com_modules.module.87', 'SP Page Builder', '{}'),
(57, 18, 88, 89, 2, 'com_modules.module.88', 'SP Page Builder', '{}'),
(58, 18, 90, 91, 2, 'com_modules.module.89', 'SP Page Builder Admin Menu', '{}'),
(59, 18, 92, 93, 2, 'com_modules.module.90', 'Mass Top Header', '{}'),
(60, 16, 50, 51, 2, 'com_menus.menu.2', 'Menu Header Masstop', '{}'),
(61, 18, 94, 95, 2, 'com_modules.module.91', 'Menu Header Masstop', '{}'),
(62, 27, 19, 20, 3, 'com_content.article.1', 'Typography', '{}'),
(63, 27, 21, 22, 3, 'com_content.article.2', 'Table', '{}'),
(64, 27, 23, 24, 3, 'com_content.article.3', 'Alerts', '{}'),
(65, 18, 96, 97, 2, 'com_modules.module.92', 'Footer', '{}'),
(66, 18, 98, 99, 2, 'com_modules.module.93', 'Menu Footer 2 Column', '{}'),
(67, 1, 133, 134, 1, 'com_fields', 'com_fields', '{}'),
(68, 1, 135, 136, 1, 'com_associations', 'com_associations', '{}'),
(69, 8, 26, 31, 2, 'com_content.category.8', 'Blog', '{}'),
(70, 69, 27, 28, 3, 'com_content.article.4', 'Bison manufacturing', '{}'),
(71, 69, 29, 30, 3, 'com_content.article.5', 'NEW METROLINK DEAL SEALED', '{}'),
(72, 1, 137, 138, 1, '#__ucm_content.1', '#__ucm_content.1', '{}'),
(73, 1, 139, 140, 1, '#__ucm_content.2', '#__ucm_content.2', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_associations`
--

CREATE TABLE `xa4nb_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_banners`
--

CREATE TABLE `xa4nb_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_banner_clients`
--

CREATE TABLE `xa4nb_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_banner_tracks`
--

CREATE TABLE `xa4nb_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_categories`
--

CREATE TABLE `xa4nb_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_categories`
--

INSERT INTO `xa4nb_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 233, '2017-09-14 08:08:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 233, '2017-09-14 08:08:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 233, '2017-09-14 08:08:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 233, '2017-09-14 08:08:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 233, '2017-09-14 08:08:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 233, '2017-09-14 08:08:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 69, 1, 11, 12, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 233, '2017-09-20 09:29:34', 0, '2017-09-20 09:29:34', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_contact_details`
--

CREATE TABLE `xa4nb_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_contact_details`
--

INSERT INTO `xa4nb_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Templaza', 'templaza', '', '', '', '', '', '', '', '', '', '', 'construction@templaza.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":false,\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 4, 1, '', '', '', '', '', '*', '2017-09-14 10:32:19', 233, '', '2017-09-14 10:32:19', 0, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_content`
--

CREATE TABLE `xa4nb_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_content`
--

INSERT INTO `xa4nb_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 62, 'Typography', 'typography', '<div class=\"tz__title\">\r\n<h5>Typography</h5>\r\n</div>\r\n<div class=\"row flex-basline\">\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\r\n<h1>H1 HEADING</h1>\r\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.</p>\r\n</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\r\n<h2>H2 HEADING</h2>\r\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.</p>\r\n</div>\r\n</div>\r\n<div class=\"row flex-basline\">\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\r\n<h3>H3 HEADING</h3>\r\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.</p>\r\n</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\r\n<h4>H4 HEADING</h4>\r\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.</p>\r\n</div>\r\n</div>\r\n<div class=\"row flex-basline\">\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\r\n<h5>H5 HEADING</h5>\r\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.</p>\r\n</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\r\n<h6>H6 HEADING</h6>\r\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.</p>\r\n</div>\r\n</div>', '', 1, 2, '2017-09-16 02:22:21', 233, '', '2017-09-16 04:05:29', 233, 0, '0000-00-00 00:00:00', '2017-09-16 02:22:21', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 7, 3, '', '', 1, 68, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(2, 63, 'Table', 'table', '<div class=\"tz__title\">\r\n<h5>Table</h5>\r\n</div>\r\n<table class=\"table-bordered text-center\" width=\"100%\">\r\n<thead>\r\n<tr>\r\n<th style=\"width: 149px;\">TABLE 1</th>\r\n<th style=\"width: 149px;\">TABLE 2</th>\r\n<th style=\"width: 150px;\">TABLE 3</th>\r\n<th style=\"width: 150px;\">TABLE 4</th>\r\n<th style=\"width: 150px;\">TABLE 5</th>\r\n<th style=\"width: 150px;\">TABLE 6</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1 </td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6 </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<table class=\"text-center style2 table-striped\" width=\"100%\">\r\n<thead>\r\n<tr>\r\n<th style=\"width: 149px;\">TABLE 1</th>\r\n<th style=\"width: 149px;\">TABLE 2</th>\r\n<th style=\"width: 150px;\">TABLE 3</th>\r\n<th style=\"width: 150px;\">TABLE 4</th>\r\n<th style=\"width: 150px;\">TABLE 5</th>\r\n<th style=\"width: 150px;\">TABLE 6</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1 </td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6 </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 149px;\">Table 1</td>\r\n<td style=\"width: 149px;\">Table 2</td>\r\n<td style=\"width: 150px;\">Table 3</td>\r\n<td style=\"width: 150px;\">Table 4</td>\r\n<td style=\"width: 150px;\">Table 5</td>\r\n<td style=\"width: 150px;\">Table 6</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 2, '2017-09-16 04:28:44', 233, '', '2017-09-16 08:06:02', 233, 0, '0000-00-00 00:00:00', '2017-09-16 04:28:44', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 13, 2, '', '', 1, 87, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(3, 64, 'Alerts', 'alerts', '<div class=\"tz__title\">\r\n<h5>Alerts</h5>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\r\n<div class=\"alert alert-success\">Success Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-info\">Primary Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-warning\">Warning Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-danger\">Danger Message! Your Message Here <button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\r\n<div class=\"alert alert-style-2 alert-success\">Success Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-style-2 alert-info\">Primary Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-style-2 alert-warning\">Warning Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-style-2 alert-danger\">Danger Message! Your Message Here <button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n</div>\r\n</div>\r\n<p class=\"clearfix\"></p>\r\n<p class=\"clearfix\"></p>\r\n<div class=\"alert alert-success\">Success Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-info\">Primary Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-warning\">Warning Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-danger\">Danger Message! Your Message Here <button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<p class=\"clearfix\"></p>\r\n<p class=\"clearfix\"></p>\r\n<div class=\"alert alert-style-2 alert-success\">Success Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-style-2 alert-info\">Primary Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-style-2 alert-warning\">Warning Message! Your Message Here<button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>\r\n<div class=\"alert alert-style-2 alert-danger\">Danger Message! Your Message Here <button class=\"close\" type=\"button\" data-dismiss=\"alert\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></button></div>', '', 1, 2, '2017-09-16 04:28:44', 233, '', '2017-09-16 09:49:47', 233, 0, '0000-00-00 00:00:00', '2017-09-16 04:28:44', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 16, 1, '', '', 1, 71, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(4, 70, 'Bison manufacturing', 'bison-manufacturing', '<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.</p>', '<p>Nam euismod bibendum ipsum in tempor. Integer felis odio, tempor porta turpis nec, auctor luctus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus auctor nibh eget elit accumsan fermentum. Ut id tempus augue. Pellentesque eu hendrerit arcu. Etiam sagittis tellus magna, at varius neque posuere eu. </p>\r\n<p>\r\nInteger dapibus lectus mauris, id lobortis risus aliquam ut. Duis eros felis, dignissim quis odio nec, venenatis rutrum nisi. Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.</p>', 1, 8, '2017-09-20 10:32:25', 233, '', '2017-09-20 11:15:24', 233, 0, '0000-00-00 00:00:00', '2017-09-20 10:32:25', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/blog-1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 1, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(5, 71, 'NEW METROLINK DEAL SEALED', 'new-metrolink-deal-sealed', '<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.</p>', '<p>Nam euismod bibendum ipsum in tempor. Integer felis odio, tempor porta turpis nec, auctor luctus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus auctor nibh eget elit accumsan fermentum. Ut id tempus augue. Pellentesque eu hendrerit arcu. Etiam sagittis tellus magna, at varius neque posuere eu. </p>\r\n<p>\r\nInteger dapibus lectus mauris, id lobortis risus aliquam ut. Duis eros felis, dignissim quis odio nec, venenatis rutrum nisi. Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.</p>', 1, 8, '2017-09-20 10:32:25', 233, '', '2017-09-20 11:15:30', 233, 0, '0000-00-00 00:00:00', '2017-09-20 10:32:25', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/blog-3.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_contentitem_tag_map`
--

CREATE TABLE `xa4nb_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Dumping data for table `xa4nb_contentitem_tag_map`
--

INSERT INTO `xa4nb_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 2, 4, 4, '2017-09-20 11:15:24', 1),
('com_content.article', 1, 5, 2, '2017-09-20 11:15:30', 1),
('com_content.article', 1, 5, 3, '2017-09-20 11:15:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_content_frontpage`
--

CREATE TABLE `xa4nb_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_content_rating`
--

CREATE TABLE `xa4nb_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_content_types`
--

CREATE TABLE `xa4nb_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_content_types`
--

INSERT INTO `xa4nb_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_core_log_searches`
--

CREATE TABLE `xa4nb_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_extensions`
--

CREATE TABLE `xa4nb_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_extensions`
--

INSERT INTO `xa4nb_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"1\",\"link_parent_category\":\"1\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"1\",\"show_create_date\":\"1\",\"show_modify_date\":\"1\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"1\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"none\",\"float_fulltext\":\"none\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"list_show_votes\":\"0\",\"list_show_ratings\":\"0\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"0724b4e39f179c35666db7de840f5a60\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 0, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `xa4nb_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.28\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1506044080}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":1,\"lastrun\":1506044092,\"unique_id\":\"a6f271707fec8e824ef965f56dd3c7a42e81a175\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 0, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"September 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"September 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"September 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"September 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'Plazart Framework', 'plugin', 'plazart', 'system', 0, 1, 1, 0, '{\"name\":\"Plazart Framework\",\"type\":\"plugin\",\"creationDate\":\"18 April 2013\",\"author\":\"TemPlaza.com\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@templaza.com\",\"authorUrl\":\"http:\\/\\/www.plazart.com\",\"version\":\"5.5\",\"description\":\"\\n\\tPlazart Framework installed successful!\\n\\t\",\"group\":\"\",\"filename\":\"plazart\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 0, 'tz_construction', 'template', 'tz_construction', '', 0, 1, 1, 0, '{\"name\":\"tz_construction\",\"type\":\"template\",\"creationDate\":\"09\\/14\\/2017\",\"author\":\"TemPlaza.com\",\"copyright\":\"Copyright (C) 2017 TemPlaza. All rights reserved.\",\"authorEmail\":\"info@templaza.com\",\"authorUrl\":\"\",\"version\":\"1.0.0\",\"description\":\"This is Plazart Framework\",\"group\":\"plazart\",\"filename\":\"templateDetails\"}', '{\"logo_type\":\"image\",\"logo_image\":\"\",\"logo_text\":\"\",\"logo_slogan\":\"\",\"favicon_image\":\"\",\"framework_logo\":\"1\",\"font_size_group1\":\"\",\"font_height_group1\":\"\",\"font_size_group2\":\"\",\"font_height_group2\":\"\",\"font_size_group3\":\"\",\"font_height_group3\":\"\",\"font_size_group4\":\"\",\"font_height_group4\":\"\",\"css_prefixer\":\"0\",\"max_page_width\":\"\",\"max_page_width_value\":\"px\",\"css_custom\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `xa4nb_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10002, 0, 'SP Page Builder', 'component', 'com_sppagebuilder', '', 1, 1, 0, 0, '{\"name\":\"SP Page Builder\",\"type\":\"component\",\"creationDate\":\"Sep 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright @ 2010 - 2017 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"2.5.3\",\"description\":\"\",\"group\":\"\",\"filename\":\"sppagebuilder\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'System - SP PageBuilder', 'plugin', 'sppagebuilder', 'system', 0, 1, 1, 0, '{\"name\":\"System - SP PageBuilder\",\"type\":\"plugin\",\"creationDate\":\"Sep 2016\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2016 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.3\",\"description\":\"SP Page Builder System plugin to add support for 3rd party components\",\"group\":\"\",\"filename\":\"sppagebuilder\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'System - SP Page Builder Pro Updater', 'plugin', 'sppagebuilderproupdater', 'system', 0, 1, 1, 0, '{\"name\":\"System - SP Page Builder Pro Updater\",\"type\":\"plugin\",\"creationDate\":\"Jul 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2016 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.1\",\"description\":\"SP Page Builder Pro Updater Plugin\",\"group\":\"\",\"filename\":\"sppagebuilderproupdater\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'plg_search_sppagebuilder', 'plugin', 'sppagebuilder', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_sppagebuilder\",\"type\":\"plugin\",\"creationDate\":\"July 2015\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.2\",\"description\":\"PLG_SEARCH_SPPAGEBUILDER_DESCRIPTION\",\"group\":\"\",\"filename\":\"sppagebuilder\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'SP Page Builder', 'module', 'mod_sppagebuilder', '', 0, 1, 0, 0, '{\"name\":\"SP Page Builder\",\"type\":\"module\",\"creationDate\":\"Oct 2016\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2016 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.2\",\"description\":\"Module to display content from SP Page Builder\",\"group\":\"\",\"filename\":\"mod_sppagebuilder\"}', '{\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'mod_sppagebuilder_icons', 'module', 'mod_sppagebuilder_icons', '', 1, 1, 2, 0, '{\"name\":\"mod_sppagebuilder_icons\",\"type\":\"module\",\"creationDate\":\"August 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2016 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.0.2\",\"description\":\"MOD_SPPAGEBUILDER_ICONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sppagebuilder_icons\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'mod_sppagebuilder_admin_menu', 'module', 'mod_sppagebuilder_admin_menu', '', 1, 1, 2, 0, '{\"name\":\"mod_sppagebuilder_admin_menu\",\"type\":\"module\",\"creationDate\":\"August 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2017 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.3\",\"description\":\"MOD_SPPAGEBUILDER_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sppagebuilder_admin_menu\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_fields`
--

CREATE TABLE `xa4nb_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_fields_categories`
--

CREATE TABLE `xa4nb_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_fields_groups`
--

CREATE TABLE `xa4nb_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_fields_values`
--

CREATE TABLE `xa4nb_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_filters`
--

CREATE TABLE `xa4nb_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links`
--

CREATE TABLE `xa4nb_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms0`
--

CREATE TABLE `xa4nb_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms1`
--

CREATE TABLE `xa4nb_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms2`
--

CREATE TABLE `xa4nb_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms3`
--

CREATE TABLE `xa4nb_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms4`
--

CREATE TABLE `xa4nb_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms5`
--

CREATE TABLE `xa4nb_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms6`
--

CREATE TABLE `xa4nb_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms7`
--

CREATE TABLE `xa4nb_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms8`
--

CREATE TABLE `xa4nb_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_terms9`
--

CREATE TABLE `xa4nb_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_termsa`
--

CREATE TABLE `xa4nb_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_termsb`
--

CREATE TABLE `xa4nb_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_termsc`
--

CREATE TABLE `xa4nb_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_termsd`
--

CREATE TABLE `xa4nb_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_termse`
--

CREATE TABLE `xa4nb_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_links_termsf`
--

CREATE TABLE `xa4nb_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_taxonomy`
--

CREATE TABLE `xa4nb_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xa4nb_finder_taxonomy`
--

INSERT INTO `xa4nb_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_taxonomy_map`
--

CREATE TABLE `xa4nb_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_terms`
--

CREATE TABLE `xa4nb_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_terms_common`
--

CREATE TABLE `xa4nb_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xa4nb_finder_terms_common`
--

INSERT INTO `xa4nb_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_tokens`
--

CREATE TABLE `xa4nb_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_tokens_aggregate`
--

CREATE TABLE `xa4nb_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_finder_types`
--

CREATE TABLE `xa4nb_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_languages`
--

CREATE TABLE `xa4nb_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_languages`
--

INSERT INTO `xa4nb_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_menu`
--

CREATE TABLE `xa4nb_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_menu`
--

INSERT INTO `xa4nb_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 91, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 48, 1, '*', 0),
(102, 'main', 'COM_SPPAGEBUILDER', 'com-sppagebuilder', '', 'com-sppagebuilder', 'index.php?option=com_sppagebuilder', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 49, 50, 0, '', 1),
(103, 'menu-masstop', 'Career', 'career', '', 'career', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 51, 52, 0, '*', 0),
(104, 'menu-masstop', 'FAQ', 'faq', '', 'faq', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 53, 54, 0, '*', 0),
(105, 'menu-masstop', 'Contact Us', 'contact-us', '', 'contact-us', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 55, 56, 0, '*', 0),
(106, 'mainmenu', 'Services', 'services', '', 'services', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 57, 58, 0, '*', 0),
(107, 'mainmenu', 'Project', 'project', '', 'project', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 59, 60, 0, '*', 0),
(108, 'mainmenu', 'Blog', 'blog', '', 'blog', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 61, 62, 0, '*', 0),
(109, 'mainmenu', 'Page', 'page', '', 'page', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 63, 86, 0, '*', 0),
(110, 'mainmenu', 'Shop', 'shop', '', 'shop', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 87, 88, 0, '*', 0),
(111, 'mainmenu', 'Contact', 'contact', '', 'contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 89, 90, 0, '*', 0),
(112, 'mainmenu', 'Submenu1', 'submenu1', '', 'home/submenu1', '', 'url', 1, 101, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 42, 43, 0, '*', 0),
(113, 'mainmenu', 'Shortcodes', 'shortcodes', '', 'page/shortcodes', 'index.php?option=com_content&view=article&id=1', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 64, 79, 0, '*', 0),
(114, 'mainmenu', 'Submenu3', 'submenu3', '', 'page/submenu3', '', 'url', 1, 109, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 80, 81, 0, '*', 0),
(115, 'mainmenu', 'Submenu4', 'submenu4', '', 'page/submenu4', '', 'url', 1, 109, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 82, 83, 0, '*', 0),
(116, 'mainmenu', 'Submenu5', 'submenu5', '', 'page/submenu5', '', 'url', 1, 109, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 84, 85, 0, '*', 0),
(117, 'mainmenu', 'Typography', 'typography', '', 'page/shortcodes/typography', 'index.php?option=com_content&view=article&id=1', 'component', 1, 113, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 65, 66, 0, '*', 0),
(118, 'mainmenu', 'Alerts', 'alerts', '', 'page/shortcodes/alerts', 'index.php?option=com_content&view=article&id=3', 'component', 1, 113, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 69, 70, 0, '*', 0),
(119, 'mainmenu', 'Tabs', 'tabs', '', 'page/shortcodes/tabs', 'index.php?option=com_sppagebuilder&view=page&id=1', 'component', 1, 113, 3, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 71, 72, 0, '*', 0),
(120, 'mainmenu', 'Submenu1-1', 'submenu1-2', '', 'home/submenu1-2', '', 'url', 1, 101, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 44, 45, 0, '*', 0),
(121, 'mainmenu', 'Submenu1-2', 'submenu1-3', '', 'home/submenu1-3', '', 'url', 1, 101, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 46, 47, 0, '*', 0),
(122, 'mainmenu', 'Table', 'table', '', 'page/shortcodes/table', 'index.php?option=com_content&view=article&id=2', 'component', 1, 113, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 67, 68, 0, '*', 0),
(123, 'mainmenu', 'Accordion', 'accordion', '', 'page/shortcodes/accordion', 'index.php?option=com_sppagebuilder&view=page&id=2', 'component', 1, 113, 3, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 73, 74, 0, '*', 0),
(124, 'mainmenu', 'Button', 'button', '', 'page/shortcodes/button', 'index.php?option=com_sppagebuilder&view=page&id=3', 'component', 1, 113, 3, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 75, 76, 0, '*', 0),
(125, 'mainmenu', 'Progress Bars', 'progress-bars', '', 'page/shortcodes/progress-bars', 'index.php?option=com_sppagebuilder&view=page&id=4', 'component', 1, 113, 3, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 77, 78, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_menu_types`
--

CREATE TABLE `xa4nb_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_menu_types`
--

INSERT INTO `xa4nb_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 60, 'menu-masstop', 'Menu Header Masstop', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_messages`
--

CREATE TABLE `xa4nb_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_messages_cfg`
--

CREATE TABLE `xa4nb_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_modules`
--

CREATE TABLE `xa4nb_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_modules`
--

INSERT INTO `xa4nb_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"113\",\"startLevel\":\"3\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h5\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 56, 'SP Page Builder', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_sppagebuilder', 1, 1, '', 0, '*'),
(88, 57, 'SP Page Builder', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sppagebuilder_icons', 1, 1, '', 1, '*'),
(89, 58, 'SP Page Builder Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sppagebuilder_admin_menu', 1, 1, '', 1, '*'),
(90, 59, 'Mass Top Header', '', '', 1, 'position-14', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sppagebuilder', 1, 0, '{\"content\":\"[{\\\"id\\\":1505379698665,\\\"visibility\\\":true,\\\"collapse\\\":false,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"separator1\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"separator2\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"subtitle_fontsize\\\":\\\"\\\",\\\"title_position\\\":\\\"sppb-text-center\\\",\\\"columns_equal_height\\\":\\\"0\\\",\\\"fullscreen\\\":\\\"0\\\",\\\"no_gutter\\\":\\\"0\\\",\\\"id\\\":\\\"\\\",\\\"class\\\":\\\"tz__block__header--masstop\\\",\\\"padding\\\":\\\"0 0px 0 0px\\\",\\\"margin\\\":\\\"0px 0px 0px 0px\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"rgba(41, 37, 36, 1)\\\",\\\"background_image\\\":\\\"\\\",\\\"background_parallax\\\":\\\"0\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"fixed\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"background_video\\\":\\\"0\\\",\\\"external_background_video\\\":\\\"0\\\",\\\"background_video_mp4\\\":\\\"\\\",\\\"background_video_ogv\\\":\\\"\\\",\\\"background_external_video\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"layout\\\":\\\"6,6\\\",\\\"columns\\\":[{\\\"id\\\":1505379698666,\\\"class_name\\\":\\\"col-md-6\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"color\\\":\\\"\\\",\\\"background\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"scroll\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"padding\\\":\\\"\\\",\\\"boxshadow\\\":\\\"\\\",\\\"class\\\":\\\"tz__block__header--masstop--left\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"separator\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"addons\\\":[{\\\"id\\\":1505379744655,\\\"name\\\":\\\"text_block\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"text\\\":\\\"\\\\t<ul class=\\\\\\\"list-inline\\\\\\\">\\\\n<li>\\\\n<p><em class=\\\\\\\"fa fa-phone\\\\\\\">&nbsp;<\\/em>Call Us: (012) 345 678 9000<\\/p>\\\\n<\\/li>\\\\n<li>\\\\n<p><em class=\\\\\\\"fa fa-envelope\\\\\\\">&nbsp;<\\/em>Email: info@templaza.com<\\/p>\\\\n<\\/li>\\\\n<\\/ul>\\\",\\\"alignment\\\":\\\"sppb-text-left\\\",\\\"class\\\":\\\"tz__block__header--masstop--left\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]},{\\\"id\\\":1505379698667,\\\"class_name\\\":\\\"col-md-6\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"color\\\":\\\"\\\",\\\"background\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"scroll\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"padding\\\":\\\"\\\",\\\"boxshadow\\\":\\\"\\\",\\\"class\\\":\\\"block__child--width--auto tz__block__header--masstop--right\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"separator\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"addons\\\":[{\\\"id\\\":1505381747929,\\\"name\\\":\\\"module\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"separator_options\\\":\\\"\\\",\\\"module_type\\\":\\\"module\\\",\\\"id\\\":\\\"91\\\",\\\"position\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}},{\\\"id\\\":1505381980083,\\\"name\\\":\\\"social_share\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"separator1\\\":\\\"\\\",\\\"show_socials\\\":[\\\"facebook\\\",\\\"twitter\\\",\\\"gplus\\\",\\\"linkedin\\\"],\\\"show_social_names\\\":\\\"0\\\",\\\"show_counter\\\":\\\"0\\\",\\\"show_totalshare\\\":\\\"0\\\",\\\"icon_align\\\":\\\"left\\\",\\\"separator2\\\":\\\"\\\",\\\"social_style\\\":\\\"solid\\\",\\\"background_color\\\":\\\"\\\",\\\"background_hover_color\\\":\\\"\\\",\\\"social_use_border\\\":\\\"0\\\",\\\"social_border_width\\\":\\\"1\\\",\\\"social_border_color\\\":\\\"\\\",\\\"social_border_hover_color\\\":\\\"\\\",\\\"social_border_radius\\\":\\\"0\\\",\\\"class\\\":\\\"\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]}]}]\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(91, 61, 'Menu Header Masstop', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"menu-masstop\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"tz_construction:listinline\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(92, 65, 'Footer', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sppagebuilder', 1, 0, '{\"content\":\"[{\\\"id\\\":1505791661228,\\\"visibility\\\":true,\\\"collapse\\\":false,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"separator1\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"separator2\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"subtitle_fontsize\\\":\\\"\\\",\\\"title_position\\\":\\\"sppb-text-center\\\",\\\"columns_equal_height\\\":\\\"0\\\",\\\"fullscreen\\\":\\\"0\\\",\\\"no_gutter\\\":\\\"0\\\",\\\"id\\\":\\\"\\\",\\\"class\\\":\\\"tz__block__footer\\\",\\\"padding\\\":\\\"50px 15px 50px 15px\\\",\\\"margin\\\":\\\"0px  0px 0\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"rgba(41, 37, 36, 1)\\\",\\\"background_image\\\":\\\"\\\",\\\"background_parallax\\\":\\\"0\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"fixed\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"background_video\\\":\\\"0\\\",\\\"external_background_video\\\":\\\"0\\\",\\\"background_video_mp4\\\":\\\"\\\",\\\"background_video_ogv\\\":\\\"\\\",\\\"background_external_video\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"layout\\\":\\\"12,12\\\",\\\"columns\\\":[{\\\"id\\\":1505791661229,\\\"class_name\\\":\\\"col-md-12\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"color\\\":\\\"\\\",\\\"background\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"scroll\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"padding\\\":\\\"\\\",\\\"boxshadow\\\":\\\"\\\",\\\"class\\\":\\\"border-bottom-1\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"separator\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"addons\\\":[{\\\"id\\\":1505792230416,\\\"type\\\":\\\"inner_row\\\",\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"separator1\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"separator2\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"subtitle_fontsize\\\":\\\"\\\",\\\"title_position\\\":\\\"sppb-text-center\\\",\\\"columns_equal_height\\\":\\\"0\\\",\\\"fullscreen\\\":\\\"0\\\",\\\"no_gutter\\\":\\\"0\\\",\\\"id\\\":\\\"\\\",\\\"class\\\":\\\"tz__footer--top\\\",\\\"padding\\\":\\\"0 0px 0 0px\\\",\\\"margin\\\":\\\"0px -15px 0px -15px\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"background_parallax\\\":\\\"0\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"fixed\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"background_video\\\":\\\"0\\\",\\\"external_background_video\\\":\\\"0\\\",\\\"background_video_mp4\\\":\\\"\\\",\\\"background_video_ogv\\\":\\\"\\\",\\\"background_external_video\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"layout\\\":\\\"4,4,4\\\",\\\"visibility\\\":true,\\\"columns\\\":[{\\\"id\\\":1505792230417,\\\"class_name\\\":\\\"col-md-4\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"color\\\":\\\"\\\",\\\"background\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"scroll\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"padding\\\":\\\"0 0 30px 0\\\",\\\"boxshadow\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"separator\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"addons\\\":[{\\\"id\\\":1505792342289,\\\"name\\\":\\\"image\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"image\\\":\\\"images\\/2017\\/09\\/19\\/logo-construction-template-1.png\\\",\\\"alt_text\\\":\\\"\\\",\\\"position\\\":\\\"sppb-text-left\\\",\\\"open_lightbox\\\":\\\"0\\\",\\\"overlay_color\\\":\\\"rgba(119, 219, 31, 0.5)\\\",\\\"link\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]},{\\\"id\\\":1505792230420,\\\"class_name\\\":\\\"col-md-4\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"color\\\":\\\"\\\",\\\"background\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"scroll\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"padding\\\":\\\"0 0 22px 0\\\",\\\"boxshadow\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"separator\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"addons\\\":[{\\\"id\\\":1505792473056,\\\"name\\\":\\\"text_block\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"text\\\":\\\"<div class=\\\\\\\"tz__block_call\\\\\\\">Call us: <strong>(012) 345 678 9000<\\/strong><\\/div>\\\",\\\"alignment\\\":\\\"sppb-text-center\\\",\\\"class\\\":\\\"\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]},{\\\"id\\\":1505792230421,\\\"class_name\\\":\\\"col-md-4\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"color\\\":\\\"\\\",\\\"background\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"scroll\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"padding\\\":\\\"0 0 30px 0\\\",\\\"boxshadow\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"separator\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"addons\\\":[{\\\"id\\\":1505792278268,\\\"name\\\":\\\"social_share\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"separator1\\\":\\\"\\\",\\\"show_socials\\\":[\\\"facebook\\\",\\\"twitter\\\",\\\"gplus\\\",\\\"linkedin\\\",\\\"pinterest\\\"],\\\"show_social_names\\\":\\\"0\\\",\\\"show_counter\\\":\\\"0\\\",\\\"show_totalshare\\\":\\\"0\\\",\\\"icon_align\\\":\\\"right\\\",\\\"separator2\\\":\\\"\\\",\\\"social_style\\\":\\\"solid\\\",\\\"background_color\\\":\\\"\\\",\\\"background_hover_color\\\":\\\"\\\",\\\"social_use_border\\\":\\\"0\\\",\\\"social_border_width\\\":\\\"1\\\",\\\"social_border_color\\\":\\\"\\\",\\\"social_border_hover_color\\\":\\\"\\\",\\\"social_border_radius\\\":\\\"40px\\\",\\\"class\\\":\\\"\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]}]}]},{\\\"id\\\":1505791712290,\\\"class_name\\\":\\\"col-md-12\\\",\\\"visibility\\\":true,\\\"settings\\\":{},\\\"addons\\\":[{\\\"id\\\":1505794233807,\\\"type\\\":\\\"inner_row\\\",\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"separator1\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"separator2\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"subtitle_fontsize\\\":\\\"\\\",\\\"title_position\\\":\\\"sppb-text-center\\\",\\\"columns_equal_height\\\":\\\"0\\\",\\\"fullscreen\\\":\\\"0\\\",\\\"no_gutter\\\":\\\"0\\\",\\\"id\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"padding\\\":\\\"55px 0 0 0\\\",\\\"margin\\\":\\\"0px -15px 0px -15px\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"background_parallax\\\":\\\"0\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"fixed\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"background_video\\\":\\\"0\\\",\\\"external_background_video\\\":\\\"0\\\",\\\"background_video_mp4\\\":\\\"\\\",\\\"background_video_ogv\\\":\\\"\\\",\\\"background_external_video\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"layout\\\":\\\"3,3,3,3\\\",\\\"visibility\\\":true,\\\"columns\\\":[{\\\"id\\\":1505794233808,\\\"class_name\\\":\\\"col-md-3\\\",\\\"visibility\\\":true,\\\"settings\\\":{},\\\"addons\\\":[{\\\"id\\\":1505794606500,\\\"name\\\":\\\"text_block\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"About Us\\\",\\\"heading_selector\\\":\\\"h6\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"400\\\",\\\"title_text_color\\\":\\\"rgba(255, 255, 255, 1)\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"27\\\",\\\"text\\\":\\\"\\\\t\\\\t\\\\t<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat.<\\/p>\\\\n<p>Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum. Pellentesque ultrices ultrices sapien<\\/p>\\\",\\\"alignment\\\":\\\"sppb-text-left\\\",\\\"class\\\":\\\"\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]},{\\\"id\\\":1505794233811,\\\"class_name\\\":\\\"col-md-3\\\",\\\"visibility\\\":true,\\\"settings\\\":{},\\\"addons\\\":[{\\\"id\\\":1505794688217,\\\"name\\\":\\\"module\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"Navigation\\\",\\\"heading_selector\\\":\\\"h6\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"400\\\",\\\"title_text_color\\\":\\\"rgba(255, 255, 255, 1)\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"28\\\",\\\"separator_options\\\":\\\"\\\",\\\"module_type\\\":\\\"module\\\",\\\"id\\\":\\\"93\\\",\\\"position\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]},{\\\"id\\\":1505794233812,\\\"class_name\\\":\\\"col-md-3\\\",\\\"visibility\\\":true,\\\"settings\\\":{},\\\"addons\\\":[{\\\"id\\\":1505794713800,\\\"name\\\":\\\"text_block\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"Working hours\\\",\\\"heading_selector\\\":\\\"h6\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"400\\\",\\\"title_text_color\\\":\\\"rgba(255, 255, 255, 1)\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"28\\\",\\\"text\\\":\\\"\\\\t\\\\t<p>We work 7 days a week, every day including major holidays. Contact us for any info.<\\/p>\\\\n<div class=\\\\\\\"tz__block__info--flex pb-5\\\\\\\">\\\\n<div class=\\\\\\\"tz__block--left\\\\\\\">Mon - Fri:<\\/div>\\\\n<div class=\\\\\\\"tz__block--right\\\\\\\">08:00 am - 05:00 pm<\\/div>\\\\n<\\/div>\\\\n<div class=\\\\\\\"tz__block__info--flex pb-5\\\\\\\">\\\\n<div class=\\\\\\\"tz__block--left\\\\\\\">Sat - Sun:<\\/div>\\\\n<div class=\\\\\\\"tz__block--right\\\\\\\">10:00 am - 03:00 pm<\\/div>\\\\n<\\/div>\\\\n<div class=\\\\\\\"tz__block__info--flex pb-5\\\\\\\">\\\\n<div class=\\\\\\\"tz__block--left\\\\\\\">Holidays:<\\/div>\\\\n<div class=\\\\\\\"tz__block--right\\\\\\\">10:00 am - 03:00 pm<\\/div>\\\\n<\\/div>\\\",\\\"alignment\\\":\\\"sppb-text-left\\\",\\\"class\\\":\\\"pr-30\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]},{\\\"id\\\":1505794233813,\\\"class_name\\\":\\\"col-md-3\\\",\\\"visibility\\\":true,\\\"settings\\\":{},\\\"addons\\\":[{\\\"id\\\":1505794713805,\\\"name\\\":\\\"text_block\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"Contacts Us\\\",\\\"heading_selector\\\":\\\"h6\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"400\\\",\\\"title_text_color\\\":\\\"rgba(255, 255, 255, 1)\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"28\\\",\\\"text\\\":\\\"\\\\t\\\\t<ul class=\\\\\\\"list-icon\\\\\\\">\\\\n<li><em class=\\\\\\\"fa fa-map-marker\\\\\\\">&nbsp;<\\/em>1725 Toberman St, Los Angeles, CA 90015, USA<\\/li>\\\\n<li><em class=\\\\\\\"fa fa-phone\\\\\\\">&nbsp;<\\/em>(012) 345 678 9000<\\/li>\\\\n<li><em class=\\\\\\\"fa fa-mobile\\\\\\\">&nbsp;<\\/em>(012) 345 678 9000<\\/li>\\\\n<li><em class=\\\\\\\"fa fa-envelope\\\\\\\">&nbsp;<\\/em>info@example.com<\\/li>\\\\n<\\/ul>\\\",\\\"alignment\\\":\\\"sppb-text-left\\\",\\\"class\\\":\\\"\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]}]}]}]},{\\\"id\\\":1505818968366,\\\"visibility\\\":true,\\\"collapse\\\":false,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"separator1\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"separator2\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"subtitle_fontsize\\\":\\\"\\\",\\\"title_position\\\":\\\"sppb-text-center\\\",\\\"columns_equal_height\\\":\\\"0\\\",\\\"fullscreen\\\":\\\"0\\\",\\\"no_gutter\\\":\\\"0\\\",\\\"id\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"padding\\\":\\\"20px 0px 20px 0px\\\",\\\"margin\\\":\\\"0px 0px 0px 0px\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"rgba(24, 23, 23, 1)\\\",\\\"background_image\\\":\\\"\\\",\\\"background_parallax\\\":\\\"0\\\",\\\"overlay\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"fixed\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"background_video\\\":\\\"0\\\",\\\"external_background_video\\\":\\\"0\\\",\\\"background_video_mp4\\\":\\\"\\\",\\\"background_video_ogv\\\":\\\"\\\",\\\"background_external_video\\\":\\\"\\\",\\\"hidden_xs\\\":\\\"\\\",\\\"hidden_sm\\\":\\\"\\\",\\\"hidden_md\\\":\\\"\\\",\\\"animation\\\":\\\"\\\",\\\"animationduration\\\":\\\"300\\\",\\\"animationdelay\\\":\\\"0\\\"},\\\"layout\\\":\\\"12\\\",\\\"columns\\\":[{\\\"id\\\":1505818968367,\\\"class_name\\\":\\\"col-md-12\\\",\\\"visibility\\\":true,\\\"settings\\\":{},\\\"addons\\\":[{\\\"id\\\":1505819016451,\\\"name\\\":\\\"text_block\\\",\\\"visibility\\\":true,\\\"settings\\\":{\\\"admin_label\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"heading_selector\\\":\\\"h3\\\",\\\"title_fontsize\\\":\\\"\\\",\\\"title_lineheight\\\":\\\"\\\",\\\"title_fontstyle\\\":null,\\\"title_letterspace\\\":\\\"0\\\",\\\"title_fontweight\\\":\\\"\\\",\\\"title_text_color\\\":\\\"\\\",\\\"title_margin_top\\\":\\\"\\\",\\\"title_margin_bottom\\\":\\\"\\\",\\\"text\\\":\\\"<div class=\\\\\\\"tz__block__copyright\\\\\\\">&copy; Copyright 2017 <strong>Construction<\\/strong>. Designed by <a href=\\\\\\\"http:\\/\\/templaza.com\\\\\\\">TemPlaza.com<\\/a><\\/div>\\\",\\\"alignment\\\":\\\"sppb-text-center\\\",\\\"class\\\":\\\"\\\",\\\"global_options\\\":\\\"\\\",\\\"global_text_color\\\":\\\"\\\",\\\"global_link_color\\\":\\\"\\\",\\\"global_link_hover_color\\\":\\\"\\\",\\\"global_use_background\\\":\\\"0\\\",\\\"global_background_color\\\":\\\"\\\",\\\"global_background_image\\\":\\\"\\\",\\\"global_background_repeat\\\":\\\"no-repeat\\\",\\\"global_background_size\\\":\\\"cover\\\",\\\"global_background_attachment\\\":\\\"inherit\\\",\\\"global_user_border\\\":\\\"0\\\",\\\"global_border_width\\\":\\\"\\\",\\\"global_border_color\\\":\\\"\\\",\\\"global_boder_style\\\":\\\"none\\\",\\\"global_border_radius\\\":\\\"\\\",\\\"global_margin\\\":\\\"\\\",\\\"global_padding\\\":\\\"\\\",\\\"global_boxshadow\\\":\\\"\\\",\\\"global_use_animation\\\":\\\"0\\\",\\\"global_animation\\\":\\\"\\\",\\\"global_animationduration\\\":\\\"300\\\",\\\"global_animationdelay\\\":\\\"0\\\",\\\"hidden_md\\\":\\\"0\\\",\\\"hidden_sm\\\":\\\"0\\\",\\\"hidden_xs\\\":\\\"0\\\",\\\"acl\\\":null}}]}]}]\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(93, 66, 'Menu Footer 2 Column', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"tz_construction:2column\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_modules_menu`
--

CREATE TABLE `xa4nb_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_modules_menu`
--

INSERT INTO `xa4nb_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_newsfeeds`
--

CREATE TABLE `xa4nb_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_overrider`
--

CREATE TABLE `xa4nb_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_plazart_styles`
--

CREATE TABLE `xa4nb_plazart_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL,
  `style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `style_type` varchar(20) NOT NULL,
  `style_content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xa4nb_plazart_styles`
--

INSERT INTO `xa4nb_plazart_styles` (`id`, `template`, `style_id`, `style_type`, `style_content`) VALUES
(1, 'tz_construction', 9, 'layout', '[{\"name\":\"Masstop Header\",\"class\":\"\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-14\",\"style\":\"tzxhtml\",\"customclass\":\"padding-lr-0\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]},{\"name\":\"Header\",\"class\":\"tz__block__menu\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"3\",\"col-lg\":\"3\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"logo\",\"position\":\"logo\",\"style\":\"\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"},{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"9\",\"col-lg\":\"9\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"megamenu\",\"position\":\"(none)\",\"style\":\"tznone\",\"customclass\":\"text-right\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]},{\"name\":\"Main Body\",\"class\":\"container\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(246, 180, 74, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"30px 0\",\"containertype\":\"container\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"8\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"message\",\"position\":\"\",\"style\":\"xhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\",\"children\":[{\"name\":\"Image Module\",\"class\":\"\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-3\",\"style\":\"tzxhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]},{\"name\":\"Component Area\",\"class\":\"\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"component\",\"position\":\"\",\"style\":\"xhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]}]}]},{\"name\":\"Advertise\",\"class\":\"\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container\",\"children\":[{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"4\",\"col-lg\":\"4\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-9\",\"style\":\"tzxhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"4\",\"col-lg\":\"4\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-11\",\"style\":\"tzxhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"},{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"4\",\"col-lg\":\"4\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-10\",\"style\":\"sp-xhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]},{\"name\":\"Breadcrumb\",\"class\":\"container\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-2\",\"style\":\"tzxhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]},{\"name\":\"Footer\",\"class\":\"container\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"30px 0\",\"containertype\":\"container\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"footer\",\"style\":\"tzxhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]}]'),
(2, 'tz_construction', 10, 'layout', '[{\"name\":\"Masstop Header\",\"class\":\"\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-14\",\"style\":\"tzxhtml\",\"customclass\":\"padding-lr-0\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]},{\"name\":\"Header\",\"class\":\"tz__block__menu\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"3\",\"col-lg\":\"3\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"logo\",\"position\":\"logo\",\"style\":\"\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"},{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"9\",\"col-lg\":\"9\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"megamenu\",\"position\":\"(none)\",\"style\":\"tznone\",\"customclass\":\"text-right\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]},{\"name\":\"Breadcrumb\",\"class\":\"container\",\"responsive\":\"\",\"backgroundimage\":\"images\\/breadcrumb.jpg\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"no-repeat\",\"backgroundsize\":\"cover\",\"backgroundattachment\":\"scroll\",\"backgroundposition\":\"50% 50%\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-2\",\"style\":\"tzxhtml\",\"customclass\":\"padding-lr-0\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]},{\"name\":\"Main Body\",\"class\":\"container\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(246, 180, 74, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"100px 0\",\"containertype\":\"container\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"8\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"message\",\"position\":\"\",\"style\":\"xhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\",\"children\":[{\"name\":\"Component Area\",\"class\":\"\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"3\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-7\",\"style\":\"tzxhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"},{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"9\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"component\",\"position\":\"\",\"style\":\"xhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]}]}]},{\"name\":\"Advertise\",\"class\":\"\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container\",\"children\":[{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"4\",\"col-lg\":\"4\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-9\",\"style\":\"tzxhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"4\",\"col-lg\":\"4\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-11\",\"style\":\"tzxhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"},{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"4\",\"col-lg\":\"4\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"position-10\",\"style\":\"sp-xhtml\",\"customclass\":\"\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]},{\"name\":\"Footer\",\"class\":\"container\",\"responsive\":\"\",\"backgroundimage\":\"\",\"backgroundoverlaycolor\":\"rgba(255, 255, 255, 0)\",\"backgroundrepeat\":\"\",\"backgroundsize\":\"\",\"backgroundattachment\":\"\",\"backgroundposition\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modules\",\"position\":\"footer\",\"style\":\"tzxhtml\",\"customclass\":\"padding-lr-0\",\"customtitle\":\"\",\"customhtml\":\"\",\"responsiveclass\":\"\",\"animationType\":\"\",\"animationSpeed\":\"\",\"animationDelay\":\"\",\"animationOffset\":\"\",\"animationEasing\":\"\"}]}]');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_postinstall_messages`
--

CREATE TABLE `xa4nb_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_postinstall_messages`
--

INSERT INTO `xa4nb_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_redirect_links`
--

CREATE TABLE `xa4nb_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_schemas`
--

CREATE TABLE `xa4nb_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_schemas`
--

INSERT INTO `xa4nb_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.0-2017-07-31'),
(10002, '2.4.8-2017-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_session`
--

CREATE TABLE `xa4nb_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_session`
--

INSERT INTO `xa4nb_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('2h248mgsdanaeh8tiof3a83h4t', 0, 1, '1506046903', 'joomla|s:1352:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyNDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MDYwNDQxMTA7czo0OiJsYXN0IjtpOjE1MDYwNDY3Njg7czozOiJub3ciO2k6MTUwNjA0NjkwMzt9czo1OiJ0b2tlbiI7czozMjoiRjJ3NU54d0RKZmhHRFZXa3RzWldnWmVRUmE2Vk1aUFgiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9czoxMDoiY29tX21haWx0byI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsaW5rcyI7YToyOntzOjQwOiJhNjc5YmE3MjY1ZWQ1NTdiMjI3YTg4M2E1NzFiMzhmMDE0MTIxNTI5IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImxpbmsiO3M6ODg6Imh0dHA6Ly9sb2NhbGhvc3Qvam9vbWxhIS92My43L1R6Q29uc3RydWN0aW9uL2pvb21sYS9pbmRleC5waHAvYmxvZy80LWJpc29uLW1hbnVmYWN0dXJpbmciO3M6NjoiZXhwaXJ5IjtpOjE1MDYwNDY5MDM7fXM6NDA6ImZjMGE2YmRlYWFjZDYyNTg4NjRlOTM3YjNjZjljNzMyNzA5OTM1YjYiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoibGluayI7czo5NDoiaHR0cDovL2xvY2FsaG9zdC9qb29tbGEhL3YzLjcvVHpDb25zdHJ1Y3Rpb24vam9vbWxhL2luZGV4LnBocC9ibG9nLzUtbmV3LW1ldHJvbGluay1kZWFsLXNlYWxlZCI7czo2OiJleHBpcnkiO2k6MTUwNjA0NjkwMzt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_spmedia`
--

CREATE TABLE `xa4nb_spmedia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `caption` varchar(2048) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'image',
  `extension` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xa4nb_spmedia`
--

INSERT INTO `xa4nb_spmedia` (`id`, `title`, `path`, `thumb`, `alt`, `caption`, `description`, `type`, `extension`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'logo-construction-template', 'images/2017/09/19/logo-construction-template.png', '', 'logo-construction-template', '', '', 'image', 'com_sppagebuilder', '2017-09-19 03:39:58', 233, '0000-00-00 00:00:00', 0),
(2, 'logo-construction-template-1', 'images/2017/09/19/logo-construction-template-1.png', '', 'logo-construction-template-1', '', '', 'image', 'com_sppagebuilder', '2017-09-19 03:40:55', 233, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_sppagebuilder`
--

CREATE TABLE `xa4nb_sppagebuilder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT 'com_sppagebuilder',
  `extension_view` varchar(255) NOT NULL DEFAULT 'page',
  `view_id` bigint(20) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `catid` int(10) NOT NULL DEFAULT '0',
  `access` int(10) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `og_title` varchar(255) NOT NULL,
  `og_image` varchar(255) NOT NULL,
  `og_description` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `hits` bigint(20) NOT NULL DEFAULT '0',
  `css` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xa4nb_sppagebuilder`
--

INSERT INTO `xa4nb_sppagebuilder` (`id`, `title`, `text`, `extension`, `extension_view`, `view_id`, `active`, `published`, `catid`, `access`, `ordering`, `created_on`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `og_title`, `og_image`, `og_description`, `language`, `hits`, `css`) VALUES
(1, 'Tabs', '[{\"id\":1505556809554,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"separator1\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"separator2\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"1\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"0 0px 0 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_parallax\":\"0\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"external_background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"background_external_video\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12,6,6,12\",\"columns\":[{\"id\":1505556809555,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505556809567,\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"<div class=\\\"tz__title\\\">\\n<h5>Tabs</h5>\\n</div>\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]},{\"id\":1505556809570,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505556809558,\"name\":\"tab\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"style\":\"lines\",\"active_tab_bg\":\"\",\"active_tab_color\":\"\",\"class\":\"\",\"sp_tab_item\":[{\"title\":\"Tab 1\",\"icon\":\"\",\"content\":\"<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Tab 2\",\"icon\":\"\",\"content\":\"<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Tab 3\",\"icon\":\"\",\"content\":\"<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]},{\"id\":1505556809571,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505556809579,\"name\":\"tab\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"style\":\"tabs\",\"active_tab_bg\":\"\",\"active_tab_color\":\"\",\"class\":\"\",\"sp_tab_item\":[{\"title\":\"Tab 1\",\"icon\":\"\",\"content\":\"<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Tab 2\",\"icon\":\"\",\"content\":\"\\t\\t\\t\\t<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Tab 3\",\"icon\":\"\",\"content\":\"\\t\\t\\t\\t<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]},{\"id\":1505556809572,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"color\":\"\",\"background\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"padding\":\"80px 0 0 0\",\"boxshadow\":\"\",\"class\":\"\",\"sm_col\":\"\",\"xs_col\":\"\",\"separator\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1505556809584,\"name\":\"tab\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"style\":\"pills\",\"active_tab_bg\":\"\",\"active_tab_color\":\"\",\"class\":\"\",\"sp_tab_item\":[{\"title\":\"Tab 1\",\"icon\":\"\",\"content\":\"\\t\\t\\t<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Tab 2\",\"icon\":\"\",\"content\":\"\\t\\t\\t<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Tab 3\",\"icon\":\"\",\"content\":\"\\t\\t\\t<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '0000-00-00 00:00:00', 233, '2017-09-18 03:12:57', 233, 0, '0000-00-00 00:00:00', '', '', '', '*', 24, ''),
(2, 'Accordion', '[{\"id\":1505706304834,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"separator1\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"separator2\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"1\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"0 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_parallax\":\"0\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"external_background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"background_external_video\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12,6,6\",\"columns\":[{\"id\":1505706304835,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505706304845,\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"<div class=\\\"tz__title\\\">\\n<h5>Accordion</h5>\\n</div>\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]},{\"id\":1505706304848,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505706304838,\"name\":\"accordion\",\"visibility\":true,\"settings\":{\"admin_label\":\"Accordion\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"style\":\"panel-default\",\"openitem\":\"\",\"class\":\"\",\"sp_accordion_item\":[{\"title\":\"Accordion Title\",\"icon\":\"\",\"content\":\"\\t<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Accordion Title 2\",\"icon\":\"\",\"content\":\"\\t<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Accordion Title 3\",\"icon\":\"\",\"content\":\"\\t<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]},{\"id\":1505706304849,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505706304852,\"name\":\"accordion\",\"visibility\":true,\"settings\":{\"admin_label\":\"Accordion\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"style\":\"panel-warning\",\"openitem\":\"\",\"class\":\"\",\"sp_accordion_item\":[{\"title\":\"Accordion Title\",\"icon\":\"\",\"content\":\"<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Accordion Title 2\",\"icon\":\"\",\"content\":\"<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"},{\"title\":\"Accordion Title 3\",\"icon\":\"\",\"content\":\"<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '0000-00-00 00:00:00', 233, '2017-09-18 07:11:48', 233, 0, '0000-00-00 00:00:00', '', '', '', '*', 9, ''),
(3, 'Button', '[{\"id\":1505719949225,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"separator1\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"separator2\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"1\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"50px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_parallax\":\"0\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"external_background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"background_external_video\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12\",\"columns\":[{\"id\":1505719949227,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505719949250,\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"<div class=\\\"tz__title\\\">\\n<h5>Table</h5>\\n</div>\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505719949231,\"name\":\"button_group\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"alignment\":\"sppb-text-left\",\"margin\":\"10\",\"class\":\"\",\"sp_button_group_item\":[{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"primary\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"size\":\"xlg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"primary\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"lg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"primary\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"primary\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"sm\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"primary\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"xs\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505719949262,\"name\":\"button_group\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"alignment\":\"sppb-text-left\",\"margin\":\"10\",\"class\":\"\",\"sp_button_group_item\":[{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"default\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"size\":\"xlg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"default\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"lg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"default\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"default\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"sm\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"default\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"xs\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"30px 0 30px 0\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505719949259,\"name\":\"button_group\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"alignment\":\"sppb-text-left\",\"margin\":\"10\",\"class\":\"\",\"sp_button_group_item\":[{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"link\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"size\":\"xlg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"link\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"lg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"link\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"link\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"sm\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"link\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"xs\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505719949271,\"name\":\"button_group\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"alignment\":\"sppb-text-left\",\"margin\":\"10\",\"class\":\"\",\"sp_button_group_item\":[{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"success\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"size\":\"xlg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"success\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"lg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"success\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"success\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"sm\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"success\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"xs\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"30px 0\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505719949274,\"name\":\"button_group\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"alignment\":\"sppb-text-left\",\"margin\":\"10\",\"class\":\"\",\"sp_button_group_item\":[{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"info\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"size\":\"xlg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"info\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"lg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"info\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"info\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"sm\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"info\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"xs\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505719949277,\"name\":\"button_group\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"alignment\":\"sppb-text-left\",\"margin\":\"10\",\"class\":\"\",\"sp_button_group_item\":[{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"warning\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"size\":\"xlg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"warning\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"lg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"warning\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"warning\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"sm\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"warning\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"xs\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"30px 0\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505719949288,\"name\":\"button_group\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"alignment\":\"sppb-text-left\",\"margin\":\"10\",\"class\":\"\",\"sp_button_group_item\":[{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"danger\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"size\":\"xlg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"danger\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"lg\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"danger\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"danger\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"sm\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"},{\"title\":\"Button\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"type\":\"danger\",\"appearance\":\"\",\"background_color\":\"\",\"color\":\"\",\"background_color_hover\":\"\",\"color_hover\":\"\",\"size\":\"xs\",\"button_padding\":\"\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"target\":\"\"}],\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '0000-00-00 00:00:00', 233, '2017-09-18 08:42:28', 233, 0, '0000-00-00 00:00:00', '', '', '', '*', 34, '');
INSERT INTO `xa4nb_sppagebuilder` (`id`, `title`, `text`, `extension`, `extension_view`, `view_id`, `active`, `published`, `catid`, `access`, `ordering`, `created_on`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `og_title`, `og_image`, `og_description`, `language`, `hits`, `css`) VALUES
(4, 'Progress Bar', '[{\"id\":1505726700198,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"separator1\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"separator2\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"1\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"0 0px 25px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_parallax\":\"0\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"external_background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"background_external_video\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12,6,6\",\"columns\":[{\"id\":1505726700199,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505726700256,\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"<div class=\\\"tz__title\\\">\\n<h5>Table</h5>\\n</div>\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]},{\"id\":1505726700205,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505726700253,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"68\",\"style\":\"style-2\",\"bar_height\":\"40\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"Illustrator\",\"active\":\"\",\"show_percentage\":\"1\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700247,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"50\",\"style\":\"style-2\",\"bar_height\":\"40\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"Illustrator\",\"active\":\"\",\"show_percentage\":\"1\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700250,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"70\",\"style\":\"style-2\",\"bar_height\":\"40\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"HTML & CSS\",\"active\":\"\",\"show_percentage\":\"1\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700244,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"50\",\"style\":\"style-2\",\"bar_height\":\"40\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"PHP \",\"active\":\"\",\"show_percentage\":\"1\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]},{\"id\":1505726700206,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505726700220,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"75\",\"style\":\"style-2\",\"bar_height\":\"40\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"Photoshop\",\"active\":\"\",\"show_percentage\":\"0\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700229,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"50\",\"style\":\"style-2\",\"bar_height\":\"40\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"Illustrator\",\"active\":\"\",\"show_percentage\":\"0\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700226,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"90\",\"style\":\"style-2\",\"bar_height\":\"40\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"HTML & CSS\",\"active\":\"\",\"show_percentage\":\"0\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700223,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"77\",\"style\":\"style-2\",\"bar_height\":\"40\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"PHP\",\"active\":\"\",\"show_percentage\":\"0\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]}]},{\"id\":1505786978211,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"separator1\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"separator2\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"1\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"25px 0px 25px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_parallax\":\"0\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"external_background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"background_external_video\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"6,6\",\"columns\":[{\"id\":1505786978213,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505726700238,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"65\",\"style\":\"style-1\",\"bar_height\":\"2\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"HTML & CSS\",\"active\":\"\",\"show_percentage\":\"0\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700235,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"80\",\"style\":\"style-1\",\"bar_height\":\"2\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"PHP\",\"active\":\"\",\"show_percentage\":\"0\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700241,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"40\",\"style\":\"style-1\",\"bar_height\":\"2\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"Illustrator\",\"active\":\"\",\"show_percentage\":\"0\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700232,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"60\",\"style\":\"style-1\",\"bar_height\":\"2\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"Photoshop\",\"active\":\"\",\"show_percentage\":\"0\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]},{\"id\":1505786978212,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1505726700202,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"75\",\"style\":\"style-1\",\"bar_height\":\"2\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"Photoshop\",\"active\":\"\",\"show_percentage\":\"1\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700214,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"80\",\"style\":\"style-1\",\"bar_height\":\"2\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"HTML & CSS\",\"active\":\"\",\"show_percentage\":\"1\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700211,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"90\",\"style\":\"style-1\",\"bar_height\":\"2\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"PHP\",\"active\":\"\",\"show_percentage\":\"1\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}},{\"id\":1505726700217,\"name\":\"progress_bar\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"progress\":\"65\",\"style\":\"style-1\",\"bar_height\":\"2\",\"type\":\"sppb-progress-bar-primary\",\"bar_background\":\"#cccccc\",\"progress_bar_background\":\"#00c1f8\",\"stripped\":\"sppb-progress-bar-striped\",\"text\":\"Illustrator\",\"active\":\"\",\"show_percentage\":\"1\",\"class\":\"\",\"global_options\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_boxshadow\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":null}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '0000-00-00 00:00:00', 233, '2017-09-19 03:26:21', 233, 0, '0000-00-00 00:00:00', '', '', '', '*', 216, '');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_sppagebuilder_integrations`
--

CREATE TABLE `xa4nb_sppagebuilder_integrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `component` varchar(255) NOT NULL,
  `plugin` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_sppagebuilder_languages`
--

CREATE TABLE `xa4nb_sppagebuilder_languages` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `lang_tag` varchar(255) NOT NULL DEFAULT '',
  `lang_key` varchar(100) DEFAULT NULL,
  `version` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_tags`
--

CREATE TABLE `xa4nb_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_tags`
--

INSERT INTO `xa4nb_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 7, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 233, '2017-09-14 08:08:58', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'project', 'Project', 'project', '', '', 1, 0, '2017-09-20 10:38:08', 1, '{}', '', '', '{}', 233, '2017-09-20 10:38:08', '', 0, '2017-09-20 10:38:08', '{}', '{}', 0, '*', 1, '2017-09-20 10:38:08', '2017-09-20 10:38:08'),
(3, 1, 3, 4, 1, 'building', 'Building', 'building', '', '', 1, 0, '2017-09-20 10:38:08', 1, '{}', '', '', '{}', 233, '2017-09-20 10:38:08', '', 0, '2017-09-20 10:38:08', '{}', '{}', 0, '*', 1, '2017-09-20 10:38:08', '2017-09-20 10:38:08'),
(4, 1, 5, 6, 1, 'construction', 'Construction', 'construction', '', '', 1, 0, '2017-09-20 10:38:21', 1, '{}', '', '', '{}', 233, '2017-09-20 10:38:21', '', 0, '2017-09-20 10:38:21', '{}', '{}', 0, '*', 1, '2017-09-20 10:38:21', '2017-09-20 10:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_template_styles`
--

CREATE TABLE `xa4nb_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_template_styles`
--

INSERT INTO `xa4nb_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'tz_construction', 0, '1', 'tz_construction - Default', '{\"logo_type\":\"image\",\"logo_image\":\"images\\/logo-construction-template.png\",\"logo_text\":\"\",\"logo_slogan\":\"\",\"favicon_image\":\"\",\"framework_logo\":\"1\",\"generate\":\"{\\\"styleid\\\":\\\"1\\\"}\",\"font_name_group1\":\"standard;Arial, Helvetica, sans-serif\",\"font_size_group1\":\"\",\"font_height_group1\":\"\",\"font_rules_group1\":\"\",\"font_name_group2\":\"standard;Arial, Helvetica, sans-serif\",\"font_size_group2\":\"\",\"font_height_group2\":\"\",\"font_rules_group2\":\"\",\"font_name_group3\":\"standard;Arial, Helvetica, sans-serif\",\"font_size_group3\":\"\",\"font_height_group3\":\"\",\"font_rules_group3\":\"\",\"font_name_group4\":\"standard;Arial, Helvetica, sans-serif\",\"font_size_group4\":\"\",\"font_height_group4\":\"\",\"font_rules_group4\":\"\",\"css_prefixer\":\"0\",\"max_page_width\":\"\",\"max_page_width_value\":\"px\",\"css_custom\":\"\",\"presetimage\":\"\",\"preset\":\"default\",\"theme\":\"default\",\"layout\":\"default\",\"layout_enable\":\"1\",\"hide_component_area\":\"0\",\"navigation_trigger\":\"hover\",\"navigation_collapse_offcanvas\":\"0\",\"navigation_collapse_showsub\":\"0\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"\",\"navigation_animation_duration\":\"400\",\"mm_access\":\"1\",\"mm_type\":\"mainmenu\",\"mm_config\":\"{\\\"mainmenu\\\":{\\\"item-101\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":112,\\\"width\\\":12}]]}},\\\"item-109\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":113,\\\"width\\\":3},{\\\"item\\\":114,\\\"width\\\":3},{\\\"item\\\":115,\\\"width\\\":3},{\\\"item\\\":116,\\\"width\\\":3}]]},\\\"alignsub\\\":\\\"justify\\\"},\\\"item-113\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":117,\\\"width\\\":12}]]},\\\"group\\\":1}}}\",\"color_code_group1\":\"color;rgba(0,0,0,0.8)\",\"color_rules_group1\":\"\",\"color_code_group2\":\"color;rgba(0,0,0,0.8)\",\"color_rules_group2\":\"\",\"color_code_group3\":\"color;rgba(0,0,0,0.8)\",\"color_rules_group3\":\"\",\"color_code_group4\":\"color;rgba(0,0,0,0.8)\",\"color_rules_group4\":\"\",\"requiredmode\":\"1\",\"devmode\":\"0\",\"layoutsave\":\"0\",\"bootstrapversion\":\"3\",\"bootstraplegacy\":\"0\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":\"\",\"animate\":\"0\",\"ov_clr_file\":\"plz_child_\",\"snippet_open_head\":\"\",\"snippet_close_head\":\"<link href=\\\"https:\\/\\/fonts.googleapis.com\\/css?family=Poppins:100,200,300,400,500,600,700,800,900|Source+Sans+Pro:200,300,400,600,700,900\\\" rel=\\\"stylesheet\\\">\",\"snippet_open_body\":\"\",\"snippet_close_body\":\"\",\"mm_config_needupdate\":\"\",\"0\":null}'),
(10, 'tz_construction', 0, '0', 'tz_construction - Default - Left Sidebar', '{\"logo_type\":\"image\",\"logo_image\":\"images\\/logo-construction-template.png\",\"logo_text\":\"\",\"logo_slogan\":\"\",\"favicon_image\":\"\",\"framework_logo\":\"0\",\"generate\":\"{\\\"styleid\\\":\\\"2\\\"}\",\"font_name_group1\":\"standard;Arial, Helvetica, sans-serif\",\"font_size_group1\":\"\",\"font_height_group1\":\"\",\"font_rules_group1\":\"\",\"font_name_group2\":\"standard;Arial, Helvetica, sans-serif\",\"font_size_group2\":\"\",\"font_height_group2\":\"\",\"font_rules_group2\":\"\",\"font_name_group3\":\"standard;Arial, Helvetica, sans-serif\",\"font_size_group3\":\"\",\"font_height_group3\":\"\",\"font_rules_group3\":\"\",\"font_name_group4\":\"standard;Arial, Helvetica, sans-serif\",\"font_size_group4\":\"\",\"font_height_group4\":\"\",\"font_rules_group4\":\"\",\"css_prefixer\":\"0\",\"max_page_width\":\"\",\"max_page_width_value\":\"px\",\"css_custom\":\"\",\"presetimage\":\"\",\"preset\":\"default\",\"theme\":\"default\",\"layout\":\"default\",\"layout_enable\":\"1\",\"hide_component_area\":\"0\",\"navigation_trigger\":\"hover\",\"navigation_collapse_offcanvas\":\"0\",\"navigation_collapse_showsub\":\"0\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"\",\"navigation_animation_duration\":\"400\",\"mm_access\":\"1\",\"mm_type\":\"mainmenu\",\"mm_config\":\"{\\\"mainmenu\\\":{\\\"item-101\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":112,\\\"width\\\":12}]]}},\\\"item-109\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":113,\\\"width\\\":3},{\\\"item\\\":114,\\\"width\\\":3},{\\\"item\\\":115,\\\"width\\\":3},{\\\"item\\\":116,\\\"width\\\":3}]]},\\\"alignsub\\\":\\\"justify\\\"},\\\"item-113\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":117,\\\"width\\\":12}]]},\\\"group\\\":1}}}\",\"color_code_group1\":\"color;rgba(0,0,0,0.8)\",\"color_rules_group1\":\"\",\"color_code_group2\":\"color;rgba(0,0,0,0.8)\",\"color_rules_group2\":\"\",\"color_code_group3\":\"color;rgba(0,0,0,0.8)\",\"color_rules_group3\":\"\",\"color_code_group4\":\"color;rgba(0,0,0,0.8)\",\"color_rules_group4\":\"\",\"requiredmode\":\"1\",\"devmode\":\"0\",\"layoutsave\":\"0\",\"bootstrapversion\":\"3\",\"bootstraplegacy\":\"0\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":\"\",\"animate\":\"0\",\"ov_clr_file\":\"plz_child_\",\"snippet_open_head\":\"\",\"snippet_close_head\":\"<link href=\\\"https:\\/\\/fonts.googleapis.com\\/css?family=Poppins:100,200,300,400,500,600,700,800,900|Source+Sans+Pro:200,300,400,600,700,900\\\" rel=\\\"stylesheet\\\">\",\"snippet_open_body\":\"\",\"snippet_close_body\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_ucm_base`
--

CREATE TABLE `xa4nb_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_ucm_base`
--

INSERT INTO `xa4nb_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 5, 1, 0),
(2, 4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_ucm_content`
--

CREATE TABLE `xa4nb_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

--
-- Dumping data for table `xa4nb_ucm_content`
--

INSERT INTO `xa4nb_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'NEW METROLINK DEAL SEALED', 'new-metrolink-deal-sealed', '<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.</p>', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 233, '', '2017-09-20 10:32:25', 233, '2017-09-20 11:15:30', '*', '2017-09-20 10:32:25', '0000-00-00 00:00:00', 5, 72, '{\"image_intro\":\"images\\/blog-3.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 8, 0, '', '', 8, '', 1),
(2, 'com_content.article', 'Bison manufacturing', 'bison-manufacturing', '<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.</p>', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 233, '', '2017-09-20 10:32:25', 233, '2017-09-20 11:15:24', '*', '2017-09-20 10:32:25', '0000-00-00 00:00:00', 4, 73, '{\"image_intro\":\"images\\/blog-1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 1, 8, 1, '', '', 8, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_ucm_history`
--

CREATE TABLE `xa4nb_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_ucm_history`
--

INSERT INTO `xa4nb_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 2, '', '2017-09-14 10:32:19', 233, 1715, '15ceb6e5ec36311184b8ae3001aa9043db275f30', '{\"id\":1,\"name\":\"Templaza\",\"alias\":\"templaza\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"construction@templaza.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":false,\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-09-14 10:32:19\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-14 10:32:19\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}', 0),
(2, 1, 1, '', '2017-09-16 02:22:21', 233, 1746, '5bce3ea84e8e8d736038dab2cfc9fef825f201a7', '{\"id\":1,\"asset_id\":62,\"title\":\"Typography\",\"alias\":\"typography\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 02:22:21\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 02:22:21\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-09-16 02:22:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(3, 1, 1, '', '2017-09-16 02:25:04', 233, 2979, '895f4a842f58f04cef9b74f8ec35514bf6fc877c', '{\"id\":1,\"asset_id\":\"62\",\"title\":\"Typography\",\"alias\":\"typography\",\"introtext\":\"<h1>H1 HEADING<\\/h1>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<h2>H2 HEADING<\\/h2>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<h3>H3 HEADING<\\/h3>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<h4>H4 HEADING<\\/h4>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<h5>H5 HEADING<\\/h5>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<h6>H6 HEADING<\\/h6>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 02:22:21\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 02:25:04\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 02:24:13\",\"publish_up\":\"2017-09-16 02:22:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(4, 1, 1, '', '2017-09-16 02:40:19', 233, 3147, 'c8171e9693b843ceb37f9ff0332682b99b41aee7', '{\"id\":1,\"asset_id\":\"62\",\"title\":\"Typography\",\"alias\":\"typography\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h1>H1 HEADING<\\/h1>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<h3>H3 HEADING<\\/h3>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<h5>H5 HEADING<\\/h5>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h2>H2 HEADING<\\/h2>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<h4>H4 HEADING<\\/h4>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<h6>H6 HEADING<\\/h6>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 02:22:21\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 02:40:19\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 02:25:04\",\"publish_up\":\"2017-09-16 02:22:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"5\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(5, 1, 1, '', '2017-09-16 03:01:36', 233, 3484, 'c0a864fbe5a6c49ae8d4b64b63c4598365b840bf', '{\"id\":1,\"asset_id\":\"62\",\"title\":\"Typography\",\"alias\":\"typography\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h1>H1 HEADING<\\/h1>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h2>H2 HEADING<\\/h2>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h3>H3 HEADING<\\/h3>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h4>H4 HEADING<\\/h4>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h5>H5 HEADING<\\/h5>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h6>H6 HEADING<\\/h6>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 02:22:21\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 03:01:36\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 02:40:19\",\"publish_up\":\"2017-09-16 02:22:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"12\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(6, 1, 1, '', '2017-09-16 03:03:39', 233, 3523, '47f4ffec8605c5acb400c0d71c1033025576886f', '{\"id\":1,\"asset_id\":\"62\",\"title\":\"Typography\",\"alias\":\"typography\",\"introtext\":\"<div class=\\\"row flex-basline\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h1>H1 HEADING<\\/h1>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h2>H2 HEADING<\\/h2>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row flex-basline\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h3>H3 HEADING<\\/h3>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h4>H4 HEADING<\\/h4>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row flex-basline\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h5>H5 HEADING<\\/h5>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h6>H6 HEADING<\\/h6>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 02:22:21\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 03:03:39\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 03:01:36\",\"publish_up\":\"2017-09-16 02:22:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"13\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(7, 1, 1, '', '2017-09-16 04:05:11', 233, 3586, '84732b9807ffebc3c1453b012d7aa43539f0804f', '{\"id\":1,\"asset_id\":\"62\",\"title\":\"Typography\",\"alias\":\"typography\",\"introtext\":\"<div class=\\\"tz_title\\\">\\r\\n<h5>Typography<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"row flex-basline\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h1>H1 HEADING<\\/h1>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h2>H2 HEADING<\\/h2>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row flex-basline\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h3>H3 HEADING<\\/h3>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h4>H4 HEADING<\\/h4>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row flex-basline\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h5>H5 HEADING<\\/h5>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h6>H6 HEADING<\\/h6>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 02:22:21\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 04:05:11\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 03:03:39\",\"publish_up\":\"2017-09-16 02:22:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"33\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(8, 1, 1, '', '2017-09-16 04:05:29', 233, 3587, 'f7cbb352826bc66cdac0d16852115bb1c13e0e5f', '{\"id\":1,\"asset_id\":\"62\",\"title\":\"Typography\",\"alias\":\"typography\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Typography<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"row flex-basline\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h1>H1 HEADING<\\/h1>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h2>H2 HEADING<\\/h2>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row flex-basline\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h3>H3 HEADING<\\/h3>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h4>H4 HEADING<\\/h4>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row flex-basline\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h5>H5 HEADING<\\/h5>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<h6>H6 HEADING<\\/h6>\\r\\n<p>Aliquam vel neque suscipit, cursus turpis elementum, ultrices eros. Vestibulum neque quam, ornare id ante et, consequat tempor risus. Pellentesque quis fermentum diam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 02:22:21\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 04:05:29\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 04:05:11\",\"publish_up\":\"2017-09-16 02:22:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"34\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(11, 2, 1, '', '2017-09-16 04:43:43', 233, 3891, 'c5da065bc65af7748d2e7fa5a91a2d4ddc7a9fd5', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<table class=\\\"table-bordered\\\" style=\\\"height: 315px;\\\" width=\\\"938\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">TABLE 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">TABLE 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 04:43:43\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 04:43:00\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"5\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(12, 2, 1, '', '2017-09-16 05:01:48', 233, 3903, 'ad2eec2623e702152ceb27caf99ecb74f94288a5', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<table class=\\\"table-bordered text-center\\\" style=\\\"height: 315px;\\\" width=\\\"938\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">TABLE 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">TABLE 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 05:01:48\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 04:43:43\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"6\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(13, 2, 1, '', '2017-09-16 05:06:26', 233, 4215, 'c516c0e2485943b971a3fd04d180df9b93b4f8ea', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<table class=\\\"table-bordered text-center\\\" style=\\\"height: 315px;\\\" width=\\\"938\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">TABLE 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">TABLE 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 05:06:26\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 05:01:48\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"7\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(14, 2, 1, '', '2017-09-16 07:17:17', 233, 4192, 'afd2685862e2239c8d2ad01eb0a7294396b15ce0', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<table class=\\\"table-bordered text-center\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">TABLE 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">TABLE 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">TABLE 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 07:17:17\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 07:16:52\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"19\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `xa4nb_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(15, 2, 1, '', '2017-09-16 07:23:41', 233, 3904, 'a641245943f1b98ca883be54034e57832b78ea02', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<table class=\\\"table-bordered text-center\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 07:23:41\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 07:17:17\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"31\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(16, 2, 1, '', '2017-09-16 07:40:48', 233, 6063, '15daa03be875901485beb54d1dc101a35ce33897', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<table class=\\\"table-bordered text-center\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<table class=\\\"table-bordered text-center style2\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 07:40:48\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 07:23:41\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"56\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(17, 2, 1, '', '2017-09-16 07:41:13', 233, 6082, '710b69ace94c08813f2ef8c418f9ce7585a764c0', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<table class=\\\"table-bordered text-center\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"table-bordered text-center style2\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 07:41:13\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 07:40:48\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"57\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(18, 2, 1, '', '2017-09-16 07:49:04', 233, 6096, '1fcd752eb21f901f25a09a3ecf58c8443aa4c785', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<table class=\\\"table-bordered text-center\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"table-bordered text-center style2 table-striped\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 07:49:04\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 07:41:13\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"65\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(19, 2, 1, '', '2017-09-16 07:54:19', 233, 6081, 'af8f62c3b1e8510928cf3343c76ca0181f92f7e9', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<table class=\\\"table-bordered text-center\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"text-center style2 table-striped\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 07:54:19\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 07:49:04\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"67\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(20, 2, 1, '', '2017-09-16 08:06:02', 233, 6140, 'ab0a4d2692e7baac82699f2e4599a8eeee6e83b3', '{\"id\":2,\"asset_id\":\"63\",\"title\":\"Table\",\"alias\":\"table\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Table<\\/h5>\\r\\n<\\/div>\\r\\n<table class=\\\"table-bordered text-center\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"text-center style2 table-striped\\\" width=\\\"100%\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 1<\\/th>\\r\\n<th style=\\\"width: 149px;\\\">TABLE 2<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 3<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 4<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 5<\\/th>\\r\\n<th style=\\\"width: 150px;\\\">TABLE 6<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1\\u00a0<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 149px;\\\">Table 1<\\/td>\\r\\n<td style=\\\"width: 149px;\\\">Table 2<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 3<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 4<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 5<\\/td>\\r\\n<td style=\\\"width: 150px;\\\">Table 6<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 08:06:02\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 08:05:50\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"83\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(25, 3, 1, '', '2017-09-16 08:24:54', 233, 2444, '35e30e58f3702255b8f6aafdea66a5c003152fbb', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Table<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\">\\u00d7<\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\">\\u00d7<\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\">\\u00d7<\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\">\\u00d7<\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 08:24:54\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 08:18:14\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"5\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(26, 3, 1, '', '2017-09-16 08:47:10', 233, 2608, '926c31be5ee3b42e17d0ab1799670a5716c950a9', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Table<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"alert alert-success\\\"><i class=\\\"fa fa-check\\\">\\u00a0<\\/i>Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\">\\u00d7<\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\"><i class=\\\"fa fa-bolt\\\">\\u00a0<\\/i>Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\">\\u00d7<\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\"><i class=\\\"fa fa-info-circle\\\">\\u00a0<\\/i>Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\">\\u00d7<\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\"><i class=\\\"fa fa-exclamation-triangle\\\">\\u00a0<\\/i>Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\">\\u00d7<\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 08:47:10\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 08:44:01\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"9\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `xa4nb_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(27, 3, 1, '', '2017-09-16 09:14:03', 233, 2789, '2532ae26b056112de3876d92e2d7172b6ad9ab4e', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Table<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"alert alert-success\\\"><i class=\\\"fa fa-check\\\">\\u00a0<\\/i>Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\"><i class=\\\"fa fa-bolt\\\">\\u00a0<\\/i>Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\"><i class=\\\"fa fa-info-circle\\\">\\u00a0<\\/i>Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\"><i class=\\\"fa fa-exclamation-triangle\\\">\\u00a0<\\/i>Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 09:14:03\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 08:47:26\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"32\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(28, 3, 1, '', '2017-09-16 09:19:34', 233, 2626, '46fdbf2b6b99baafe90fab776c502e39ac49795c', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Table<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 09:19:34\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 09:14:03\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"36\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(29, 3, 1, '', '2017-09-16 09:31:30', 233, 3498, 'a307d8db7a53cc5e4dcc4b88cab2e4a28c06c30c', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Table<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 09:31:30\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 09:19:34\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"49\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(30, 3, 1, '', '2017-09-16 09:46:14', 233, 3499, '31c7c695b41abbbdafdae9a0385cdf747a67fcfe', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Alerts<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 09:46:14\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 09:31:30\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"62\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(31, 3, 1, '', '2017-09-16 09:47:58', 233, 5351, 'd198de2f4e0c3d7b68e171adf45e35d13daf2f07', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Alerts<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 09:47:58\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 09:46:14\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"64\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(32, 3, 1, '', '2017-09-16 09:48:18', 233, 5367, 'fd910bf4a8bbdc6c8e1623974b2fc15eb1f08387', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Alerts<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p><\\/p>\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<p><\\/p>\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 09:48:18\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 09:47:58\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"65\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(33, 3, 1, '', '2017-09-16 09:48:33', 233, 5391, '5bf8ef1a912ee25464064e06072e184a4dfb20a4', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Alerts<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 09:48:33\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 09:48:18\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"66\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(34, 3, 1, '', '2017-09-16 09:49:47', 233, 5467, '802c43415a8d98252c7a154e0d1357f6dc77ad06', '{\"id\":3,\"asset_id\":\"64\",\"title\":\"Alerts\",\"alias\":\"alerts\",\"introtext\":\"<div class=\\\"tz__title\\\">\\r\\n<h5>Alerts<\\/h5>\\r\\n<\\/div>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-6 col-md-6 col-sm-6 col-xs-12\\\">\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p class=\\\"clearfix\\\"><\\/p>\\r\\n<p class=\\\"clearfix\\\"><\\/p>\\r\\n<div class=\\\"alert alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<p class=\\\"clearfix\\\"><\\/p>\\r\\n<p class=\\\"clearfix\\\"><\\/p>\\r\\n<div class=\\\"alert alert-style-2 alert-success\\\">Success Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-info\\\">Primary Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-warning\\\">Warning Message! Your Message Here<button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\\r\\n<div class=\\\"alert alert-style-2 alert-danger\\\">Danger Message! Your Message Here <button class=\\\"close\\\" type=\\\"button\\\" data-dismiss=\\\"alert\\\"><i class=\\\"fa fa-times\\\" aria-hidden=\\\"true\\\"><\\/i><\\/button><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-16 04:28:44\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-16 09:49:47\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-16 09:48:33\",\"publish_up\":\"2017-09-16 04:28:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":16,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"67\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(35, 8, 5, '', '2017-09-20 09:29:34', 233, 551, '9de2b0cde99e2d9dda0af28bddd994b3a4df311c', '{\"id\":8,\"asset_id\":69,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Blog\",\"alias\":\"blog\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"233\",\"created_time\":\"2017-09-20 09:29:34\",\"modified_user_id\":null,\"modified_time\":\"2017-09-20 09:29:34\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(36, 4, 1, '', '2017-09-20 10:32:25', 233, 1793, '3ea757222473d99e3bd4c4ce3ec55592e33a663b', '{\"id\":4,\"asset_id\":70,\"title\":\"Bison manufacturing\",\"alias\":\"bison-manufacturing\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 10:32:25\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-1.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(37, 4, 1, '', '2017-09-20 10:32:37', 233, 1812, 'fd09489d62ec6b9f7073800e454e8cccfe517b03', '{\"id\":4,\"asset_id\":\"70\",\"title\":\"Bison manufacturing\",\"alias\":\"bison-manufacturing\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 10:32:37\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-20 10:32:25\",\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-1.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `xa4nb_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(38, 4, 1, '', '2017-09-20 10:33:25', 233, 2171, '460da401348d5181a61ea546d6a21d4fc0b8f50b', '{\"id\":4,\"asset_id\":\"70\",\"title\":\"Bison manufacturing\",\"alias\":\"bison-manufacturing\",\"introtext\":\"<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 10:33:25\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-20 10:32:37\",\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-1.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(39, 5, 1, '', '2017-09-20 10:36:01', 233, 2139, '4f9488649f174bc16aca2ac832f219260d80753f', '{\"id\":5,\"asset_id\":71,\"title\":\"Bison manufacturing (2)\",\"alias\":\"bison-manufacturing-2\",\"introtext\":\"<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 10:36:01\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-1.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(40, 5, 1, '', '2017-09-20 10:36:28', 233, 2164, '4cb2f940e58335a60ad722cf90f0d0823707ce91', '{\"id\":5,\"asset_id\":\"71\",\"title\":\"NEW METROLINK DEAL SEALED\",\"alias\":\"new-metrolink-deal-sealed\",\"introtext\":\"<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 10:36:28\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-20 10:36:01\",\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-3.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(41, 5, 1, '', '2017-09-20 10:36:43', 233, 2183, '732e903979eb0539d96270e15d84ca5a919350d9', '{\"id\":5,\"asset_id\":\"71\",\"title\":\"NEW METROLINK DEAL SEALED\",\"alias\":\"new-metrolink-deal-sealed\",\"introtext\":\"<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 10:36:43\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-20 10:36:28\",\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-3.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(42, 2, 8, '', '2017-09-20 10:38:08', 233, 557, '3155a0176bb196a935a2c5a82ca53aff90cea508', '{\"id\":2,\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":2,\"level\":1,\"path\":\"project\",\"title\":\"Project\",\"alias\":\"project\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"2017-09-20 10:38:08\",\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":\"233\",\"created_time\":\"2017-09-20 10:38:08\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"2017-09-20 10:38:08\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"2017-09-20 10:38:08\",\"publish_down\":\"2017-09-20 10:38:08\"}', 0),
(43, 3, 8, '', '2017-09-20 10:38:08', 233, 560, '340b0fbf342b40196969b65babdd3c39637b0a59', '{\"id\":3,\"parent_id\":\"1\",\"lft\":\"3\",\"rgt\":4,\"level\":1,\"path\":\"building\",\"title\":\"Building\",\"alias\":\"building\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"2017-09-20 10:38:08\",\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":\"233\",\"created_time\":\"2017-09-20 10:38:08\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"2017-09-20 10:38:08\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"2017-09-20 10:38:08\",\"publish_down\":\"2017-09-20 10:38:08\"}', 0),
(44, 4, 8, '', '2017-09-20 10:38:21', 233, 572, '8a91504eea0641afba62c10542dfdf4be35d283a', '{\"id\":4,\"parent_id\":\"1\",\"lft\":\"5\",\"rgt\":6,\"level\":1,\"path\":\"construction\",\"title\":\"Construction\",\"alias\":\"construction\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"2017-09-20 10:38:21\",\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":\"233\",\"created_time\":\"2017-09-20 10:38:21\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"2017-09-20 10:38:21\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"2017-09-20 10:38:21\",\"publish_down\":\"2017-09-20 10:38:21\"}', 0),
(45, 4, 1, '', '2017-09-20 10:38:21', 233, 2171, 'a5f2556872bc03e78b9add3b980e66cdfe871033', '{\"id\":4,\"asset_id\":\"70\",\"title\":\"Bison manufacturing\",\"alias\":\"bison-manufacturing\",\"introtext\":\"<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 10:38:21\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-20 10:38:14\",\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-1.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(46, 4, 1, '', '2017-09-20 10:48:34', 233, 3027, '4ade9399375eddc24eb9c53ac2c301fb21a9356f', '{\"id\":4,\"asset_id\":\"70\",\"title\":\"Bison manufacturing\",\"alias\":\"bison-manufacturing\",\"introtext\":\"<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"fulltext\":\"<p>Nam euismod bibendum ipsum in tempor. Integer felis odio, tempor porta turpis nec, auctor luctus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus auctor nibh eget elit accumsan fermentum. Ut id tempus augue. Pellentesque eu hendrerit arcu. Etiam sagittis tellus magna, at varius neque posuere eu. <\\/p>\\r\\n<p>\\r\\nInteger dapibus lectus mauris, id lobortis risus aliquam ut. Duis eros felis, dignissim quis odio nec, venenatis rutrum nisi. Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 10:48:34\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-20 10:47:55\",\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-1.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(47, 5, 1, '', '2017-09-20 10:49:01', 233, 3039, 'c335624d939bc70da8cc79a7332aa9f0cff48ba3', '{\"id\":5,\"asset_id\":\"71\",\"title\":\"NEW METROLINK DEAL SEALED\",\"alias\":\"new-metrolink-deal-sealed\",\"introtext\":\"<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"fulltext\":\"<p>Nam euismod bibendum ipsum in tempor. Integer felis odio, tempor porta turpis nec, auctor luctus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus auctor nibh eget elit accumsan fermentum. Ut id tempus augue. Pellentesque eu hendrerit arcu. Etiam sagittis tellus magna, at varius neque posuere eu. <\\/p>\\r\\n<p>\\r\\nInteger dapibus lectus mauris, id lobortis risus aliquam ut. Duis eros felis, dignissim quis odio nec, venenatis rutrum nisi. Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 10:49:01\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-20 10:48:56\",\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-3.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(48, 5, 1, '', '2017-09-20 11:08:28', 233, 3043, '69f1b26a7c85055256cb4101cbefd9ac97111e40', '{\"id\":5,\"asset_id\":\"71\",\"title\":\"NEW METROLINK DEAL SEALED\",\"alias\":\"new-metrolink-deal-sealed\",\"introtext\":\"<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"fulltext\":\"<p>Nam euismod bibendum ipsum in tempor. Integer felis odio, tempor porta turpis nec, auctor luctus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus auctor nibh eget elit accumsan fermentum. Ut id tempus augue. Pellentesque eu hendrerit arcu. Etiam sagittis tellus magna, at varius neque posuere eu. <\\/p>\\r\\n<p>\\r\\nInteger dapibus lectus mauris, id lobortis risus aliquam ut. Duis eros felis, dignissim quis odio nec, venenatis rutrum nisi. Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 11:08:28\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-20 11:08:22\",\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-3.jpg\\\",\\\"float_intro\\\":\\\"none\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(49, 4, 1, '', '2017-09-20 11:14:52', 233, 3031, '39e781da67d3827a0d6e7db7f0aec820c302ba78', '{\"id\":4,\"asset_id\":\"70\",\"title\":\"Bison manufacturing\",\"alias\":\"bison-manufacturing\",\"introtext\":\"<p>Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"fulltext\":\"<p>Nam euismod bibendum ipsum in tempor. Integer felis odio, tempor porta turpis nec, auctor luctus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus auctor nibh eget elit accumsan fermentum. Ut id tempus augue. Pellentesque eu hendrerit arcu. Etiam sagittis tellus magna, at varius neque posuere eu. <\\/p>\\r\\n<p>\\r\\nInteger dapibus lectus mauris, id lobortis risus aliquam ut. Duis eros felis, dignissim quis odio nec, venenatis rutrum nisi. Pellentesque placerat ullamcorper ligula eu ultricies. Mauris nec fringilla libero. Quisque pellentesque imperdiet ante, nec pharetra elit viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis et sapien sodales dapibus. Ut vulputate maximus viverra. Morbi ultricies vel sem sed luctus.<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-09-20 10:32:25\",\"created_by\":\"233\",\"created_by_alias\":\"\",\"modified\":\"2017-09-20 11:14:52\",\"modified_by\":\"233\",\"checked_out\":\"233\",\"checked_out_time\":\"2017-09-20 11:14:47\",\"publish_up\":\"2017-09-20 10:32:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/blog-1.jpg\\\",\\\"float_intro\\\":\\\"none\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_updates`
--

CREATE TABLE `xa4nb_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `xa4nb_updates`
--

INSERT INTO `xa4nb_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(2, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(3, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(4, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(5, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(6, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(7, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(8, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.7.5.2', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(9, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(10, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(11, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(12, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(13, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.7.3.3', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(14, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(15, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(16, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.8.0.2', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(17, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(18, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(19, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(20, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(21, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(22, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(23, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(24, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(25, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(26, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(27, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(28, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(29, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(30, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(31, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(32, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(33, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(34, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(35, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(36, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(37, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(38, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(39, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(40, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(41, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(42, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(43, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(44, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(45, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(46, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(47, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(48, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(49, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(50, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(51, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(52, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(53, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(54, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(55, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(56, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(57, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(58, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(59, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(60, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(61, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(62, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(63, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(64, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(65, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(66, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(67, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(68, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(69, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_update_sites`
--

CREATE TABLE `xa4nb_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `xa4nb_update_sites`
--

INSERT INTO `xa4nb_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1506044096, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1506044101, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1506044101, ''),
(4, 'Plazart Framework Update', 'extension', 'https://raw.githubusercontent.com/templaza/plazart/master/update.xml', 1, 1506044102, ''),
(5, 'SP Page Builder', 'extension', 'https://www.joomshaper.com/updates/com-sp-page-builder-pro.xml', 1, 1506044104, '');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_update_sites_extensions`
--

CREATE TABLE `xa4nb_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `xa4nb_update_sites_extensions`
--

INSERT INTO `xa4nb_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10000),
(5, 10002);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_usergroups`
--

CREATE TABLE `xa4nb_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_usergroups`
--

INSERT INTO `xa4nb_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_users`
--

CREATE TABLE `xa4nb_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_users`
--

INSERT INTO `xa4nb_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(233, 'Super User', 'admin', 'admin@info.com', '$2y$10$zE/eZqfKeLZAZdNEinbUOeaf90B/5T3FJG6W8nL2AMA9P7MxxWZBi', 0, 1, '2017-09-14 08:08:59', '2017-09-22 01:34:50', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_user_keys`
--

CREATE TABLE `xa4nb_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_user_notes`
--

CREATE TABLE `xa4nb_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_user_profiles`
--

CREATE TABLE `xa4nb_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_user_usergroup_map`
--

CREATE TABLE `xa4nb_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_user_usergroup_map`
--

INSERT INTO `xa4nb_user_usergroup_map` (`user_id`, `group_id`) VALUES
(233, 8);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_utf8_conversion`
--

CREATE TABLE `xa4nb_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_utf8_conversion`
--

INSERT INTO `xa4nb_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `xa4nb_viewlevels`
--

CREATE TABLE `xa4nb_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xa4nb_viewlevels`
--

INSERT INTO `xa4nb_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xa4nb_assets`
--
ALTER TABLE `xa4nb_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `xa4nb_associations`
--
ALTER TABLE `xa4nb_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `xa4nb_banners`
--
ALTER TABLE `xa4nb_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xa4nb_banner_clients`
--
ALTER TABLE `xa4nb_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `xa4nb_banner_tracks`
--
ALTER TABLE `xa4nb_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `xa4nb_categories`
--
ALTER TABLE `xa4nb_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xa4nb_contact_details`
--
ALTER TABLE `xa4nb_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `xa4nb_content`
--
ALTER TABLE `xa4nb_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `xa4nb_contentitem_tag_map`
--
ALTER TABLE `xa4nb_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `xa4nb_content_frontpage`
--
ALTER TABLE `xa4nb_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `xa4nb_content_rating`
--
ALTER TABLE `xa4nb_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `xa4nb_content_types`
--
ALTER TABLE `xa4nb_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `xa4nb_extensions`
--
ALTER TABLE `xa4nb_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `xa4nb_fields`
--
ALTER TABLE `xa4nb_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xa4nb_fields_categories`
--
ALTER TABLE `xa4nb_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `xa4nb_fields_groups`
--
ALTER TABLE `xa4nb_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xa4nb_fields_values`
--
ALTER TABLE `xa4nb_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `xa4nb_finder_filters`
--
ALTER TABLE `xa4nb_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `xa4nb_finder_links`
--
ALTER TABLE `xa4nb_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `xa4nb_finder_links_terms0`
--
ALTER TABLE `xa4nb_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_terms1`
--
ALTER TABLE `xa4nb_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_terms2`
--
ALTER TABLE `xa4nb_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_terms3`
--
ALTER TABLE `xa4nb_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_terms4`
--
ALTER TABLE `xa4nb_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_terms5`
--
ALTER TABLE `xa4nb_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_terms6`
--
ALTER TABLE `xa4nb_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_terms7`
--
ALTER TABLE `xa4nb_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_terms8`
--
ALTER TABLE `xa4nb_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_terms9`
--
ALTER TABLE `xa4nb_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_termsa`
--
ALTER TABLE `xa4nb_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_termsb`
--
ALTER TABLE `xa4nb_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_termsc`
--
ALTER TABLE `xa4nb_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_termsd`
--
ALTER TABLE `xa4nb_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_termse`
--
ALTER TABLE `xa4nb_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_links_termsf`
--
ALTER TABLE `xa4nb_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xa4nb_finder_taxonomy`
--
ALTER TABLE `xa4nb_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `xa4nb_finder_taxonomy_map`
--
ALTER TABLE `xa4nb_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `xa4nb_finder_terms`
--
ALTER TABLE `xa4nb_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `xa4nb_finder_terms_common`
--
ALTER TABLE `xa4nb_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `xa4nb_finder_tokens`
--
ALTER TABLE `xa4nb_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `xa4nb_finder_tokens_aggregate`
--
ALTER TABLE `xa4nb_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `xa4nb_finder_types`
--
ALTER TABLE `xa4nb_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `xa4nb_languages`
--
ALTER TABLE `xa4nb_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `xa4nb_menu`
--
ALTER TABLE `xa4nb_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xa4nb_menu_types`
--
ALTER TABLE `xa4nb_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `xa4nb_messages`
--
ALTER TABLE `xa4nb_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `xa4nb_messages_cfg`
--
ALTER TABLE `xa4nb_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `xa4nb_modules`
--
ALTER TABLE `xa4nb_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xa4nb_modules_menu`
--
ALTER TABLE `xa4nb_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `xa4nb_newsfeeds`
--
ALTER TABLE `xa4nb_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `xa4nb_overrider`
--
ALTER TABLE `xa4nb_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xa4nb_plazart_styles`
--
ALTER TABLE `xa4nb_plazart_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xa4nb_postinstall_messages`
--
ALTER TABLE `xa4nb_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `xa4nb_redirect_links`
--
ALTER TABLE `xa4nb_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `xa4nb_schemas`
--
ALTER TABLE `xa4nb_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `xa4nb_session`
--
ALTER TABLE `xa4nb_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `xa4nb_spmedia`
--
ALTER TABLE `xa4nb_spmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xa4nb_sppagebuilder`
--
ALTER TABLE `xa4nb_sppagebuilder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xa4nb_sppagebuilder_integrations`
--
ALTER TABLE `xa4nb_sppagebuilder_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xa4nb_sppagebuilder_languages`
--
ALTER TABLE `xa4nb_sppagebuilder_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xa4nb_tags`
--
ALTER TABLE `xa4nb_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xa4nb_template_styles`
--
ALTER TABLE `xa4nb_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `xa4nb_ucm_base`
--
ALTER TABLE `xa4nb_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `xa4nb_ucm_content`
--
ALTER TABLE `xa4nb_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `xa4nb_ucm_history`
--
ALTER TABLE `xa4nb_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `xa4nb_updates`
--
ALTER TABLE `xa4nb_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `xa4nb_update_sites`
--
ALTER TABLE `xa4nb_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `xa4nb_update_sites_extensions`
--
ALTER TABLE `xa4nb_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `xa4nb_usergroups`
--
ALTER TABLE `xa4nb_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `xa4nb_users`
--
ALTER TABLE `xa4nb_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `xa4nb_user_keys`
--
ALTER TABLE `xa4nb_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `xa4nb_user_notes`
--
ALTER TABLE `xa4nb_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `xa4nb_user_profiles`
--
ALTER TABLE `xa4nb_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `xa4nb_user_usergroup_map`
--
ALTER TABLE `xa4nb_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `xa4nb_viewlevels`
--
ALTER TABLE `xa4nb_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `xa4nb_assets`
--
ALTER TABLE `xa4nb_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `xa4nb_banners`
--
ALTER TABLE `xa4nb_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_banner_clients`
--
ALTER TABLE `xa4nb_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_categories`
--
ALTER TABLE `xa4nb_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `xa4nb_contact_details`
--
ALTER TABLE `xa4nb_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xa4nb_content`
--
ALTER TABLE `xa4nb_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `xa4nb_content_types`
--
ALTER TABLE `xa4nb_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `xa4nb_extensions`
--
ALTER TABLE `xa4nb_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10009;
--
-- AUTO_INCREMENT for table `xa4nb_fields`
--
ALTER TABLE `xa4nb_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_fields_groups`
--
ALTER TABLE `xa4nb_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_finder_filters`
--
ALTER TABLE `xa4nb_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_finder_links`
--
ALTER TABLE `xa4nb_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_finder_taxonomy`
--
ALTER TABLE `xa4nb_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xa4nb_finder_terms`
--
ALTER TABLE `xa4nb_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_finder_types`
--
ALTER TABLE `xa4nb_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_languages`
--
ALTER TABLE `xa4nb_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xa4nb_menu`
--
ALTER TABLE `xa4nb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `xa4nb_menu_types`
--
ALTER TABLE `xa4nb_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `xa4nb_messages`
--
ALTER TABLE `xa4nb_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_modules`
--
ALTER TABLE `xa4nb_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `xa4nb_newsfeeds`
--
ALTER TABLE `xa4nb_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_overrider`
--
ALTER TABLE `xa4nb_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `xa4nb_plazart_styles`
--
ALTER TABLE `xa4nb_plazart_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `xa4nb_postinstall_messages`
--
ALTER TABLE `xa4nb_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `xa4nb_redirect_links`
--
ALTER TABLE `xa4nb_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_spmedia`
--
ALTER TABLE `xa4nb_spmedia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `xa4nb_sppagebuilder`
--
ALTER TABLE `xa4nb_sppagebuilder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `xa4nb_sppagebuilder_integrations`
--
ALTER TABLE `xa4nb_sppagebuilder_integrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_sppagebuilder_languages`
--
ALTER TABLE `xa4nb_sppagebuilder_languages`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_tags`
--
ALTER TABLE `xa4nb_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `xa4nb_template_styles`
--
ALTER TABLE `xa4nb_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `xa4nb_ucm_content`
--
ALTER TABLE `xa4nb_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `xa4nb_ucm_history`
--
ALTER TABLE `xa4nb_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `xa4nb_updates`
--
ALTER TABLE `xa4nb_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `xa4nb_update_sites`
--
ALTER TABLE `xa4nb_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `xa4nb_usergroups`
--
ALTER TABLE `xa4nb_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `xa4nb_users`
--
ALTER TABLE `xa4nb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `xa4nb_user_keys`
--
ALTER TABLE `xa4nb_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_user_notes`
--
ALTER TABLE `xa4nb_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xa4nb_viewlevels`
--
ALTER TABLE `xa4nb_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
