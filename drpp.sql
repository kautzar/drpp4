-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2015 at 08:34 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `drpp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7dbplugin_st`
--

CREATE TABLE IF NOT EXISTS `wp_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL,
  PRIMARY KEY (`submit_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7dbplugin_submits`
--

CREATE TABLE IF NOT EXISTS `wp_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob,
  KEY `submit_time_idx` (`submit_time`),
  KEY `form_name_idx` (`form_name`),
  KEY `field_name_idx` (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-08-19 00:35:57', '2015-08-19 00:35:57', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_easypay_payment_log`
--

CREATE TABLE IF NOT EXISTS `wp_easypay_payment_log` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `txnid` varchar(255) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_actual_amount` decimal(7,2) NOT NULL,
  `payment_fees_rate` decimal(7,2) NOT NULL,
  `payment_currency` varchar(10) NOT NULL,
  `payment_gateway` varchar(25) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` text NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `createdtime` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `custom` longtext,
  `transaction_info` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_easypay_recurring`
--

CREATE TABLE IF NOT EXISTS `wp_easypay_recurring` (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `choice1` varchar(255) NOT NULL,
  `choice2` varchar(255) NOT NULL,
  `choice3` varchar(255) NOT NULL,
  PRIMARY KEY (`ch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_easypay_recurring`
--

INSERT INTO `wp_easypay_recurring` (`ch_id`, `option_id`, `choice1`, `choice2`, `choice3`) VALUES
(1, 0, '1,D', '1,M', '1,M');

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_bookings`
--

CREATE TABLE IF NOT EXISTS `wp_em_bookings` (
  `booking_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL,
  `person_id` bigint(20) unsigned NOT NULL,
  `booking_spaces` int(5) NOT NULL,
  `booking_comment` text,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_status` tinyint(1) NOT NULL DEFAULT '1',
  `booking_price` decimal(14,4) unsigned NOT NULL DEFAULT '0.0000',
  `booking_tax_rate` decimal(7,4) DEFAULT NULL,
  `booking_taxes` decimal(14,4) DEFAULT NULL,
  `booking_meta` longtext,
  PRIMARY KEY (`booking_id`),
  KEY `event_id` (`event_id`),
  KEY `person_id` (`person_id`),
  KEY `booking_status` (`booking_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_events`
--

CREATE TABLE IF NOT EXISTS `wp_em_events` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `event_slug` varchar(200) DEFAULT NULL,
  `event_owner` bigint(20) unsigned DEFAULT NULL,
  `event_status` int(1) DEFAULT NULL,
  `event_name` text,
  `event_start_time` time DEFAULT NULL,
  `event_end_time` time DEFAULT NULL,
  `event_all_day` int(1) DEFAULT NULL,
  `event_start_date` date DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `post_content` longtext,
  `event_rsvp` tinyint(1) NOT NULL DEFAULT '0',
  `event_rsvp_date` date DEFAULT NULL,
  `event_rsvp_time` time DEFAULT NULL,
  `event_rsvp_spaces` int(5) DEFAULT NULL,
  `event_spaces` int(5) DEFAULT '0',
  `event_private` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` bigint(20) unsigned DEFAULT NULL,
  `recurrence_id` bigint(20) unsigned DEFAULT NULL,
  `event_category_id` bigint(20) unsigned DEFAULT NULL,
  `event_attributes` text,
  `event_date_created` datetime DEFAULT NULL,
  `event_date_modified` datetime DEFAULT NULL,
  `recurrence` tinyint(1) NOT NULL DEFAULT '0',
  `recurrence_interval` int(4) DEFAULT NULL,
  `recurrence_freq` tinytext,
  `recurrence_byday` tinytext,
  `recurrence_byweekno` int(4) DEFAULT NULL,
  `recurrence_days` int(4) DEFAULT NULL,
  `recurrence_rsvp_days` int(3) DEFAULT NULL,
  `blog_id` bigint(20) unsigned DEFAULT NULL,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `event_status` (`event_status`),
  KEY `post_id` (`post_id`),
  KEY `blog_id` (`blog_id`),
  KEY `group_id` (`group_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_em_events`
--

INSERT INTO `wp_em_events` (`event_id`, `post_id`, `event_slug`, `event_owner`, `event_status`, `event_name`, `event_start_time`, `event_end_time`, `event_all_day`, `event_start_date`, `event_end_date`, `post_content`, `event_rsvp`, `event_rsvp_date`, `event_rsvp_time`, `event_rsvp_spaces`, `event_spaces`, `event_private`, `location_id`, `recurrence_id`, `event_category_id`, `event_attributes`, `event_date_created`, `event_date_modified`, `recurrence`, `recurrence_interval`, `recurrence_freq`, `recurrence_byday`, `recurrence_byweekno`, `recurrence_days`, `recurrence_rsvp_days`, `blog_id`, `group_id`) VALUES
(1, 81, 'lorem-ipsum', 1, 1, 'Lorem Ipsum', '00:00:00', '00:00:00', 1, '2015-08-20', '2015-08-29', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.', 0, NULL, '00:00:00', NULL, 0, 0, 1, NULL, NULL, 'a:2:{s:14:"slide_template";s:7:"default";s:13:"charity_event";s:166:"a:3:{s:17:"event_video_image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg";s:18:"event_you_tube_url";s:0:"";s:15:"event_vimeo_url";s:0:"";}";}', '2015-08-19 02:54:47', '2015-08-27 06:23:07', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
(2, 85, 'lorem-ipsum-2', 1, 1, 'Lorem Ipsum', '00:00:00', '00:00:00', 1, '2015-08-29', '2015-08-31', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 0, NULL, '00:00:00', NULL, 0, 0, 0, NULL, NULL, 'a:2:{s:14:"slide_template";s:7:"default";s:13:"charity_event";s:416:"a:3:{s:17:"event_video_image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg";s:18:"event_you_tube_url";s:123:"<iframe width="1120" height="630" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";s:15:"event_vimeo_url";s:123:"<iframe width="1120" height="630" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";}";}', '2015-08-19 03:04:16', '2015-08-27 06:19:18', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_locations`
--

CREATE TABLE IF NOT EXISTS `wp_em_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `blog_id` bigint(20) unsigned DEFAULT NULL,
  `location_slug` varchar(200) DEFAULT NULL,
  `location_name` text,
  `location_owner` bigint(20) unsigned NOT NULL DEFAULT '0',
  `location_address` varchar(200) DEFAULT NULL,
  `location_town` varchar(200) DEFAULT NULL,
  `location_state` varchar(200) DEFAULT NULL,
  `location_postcode` varchar(10) DEFAULT NULL,
  `location_region` varchar(200) DEFAULT NULL,
  `location_country` char(2) DEFAULT NULL,
  `location_latitude` float(10,6) DEFAULT NULL,
  `location_longitude` float(10,6) DEFAULT NULL,
  `post_content` longtext,
  `location_status` int(1) DEFAULT NULL,
  `location_private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`),
  KEY `location_state` (`location_state`),
  KEY `location_region` (`location_region`),
  KEY `location_country` (`location_country`),
  KEY `post_id` (`post_id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_em_locations`
--

INSERT INTO `wp_em_locations` (`location_id`, `post_id`, `blog_id`, `location_slug`, `location_name`, `location_owner`, `location_address`, `location_town`, `location_state`, `location_postcode`, `location_region`, `location_country`, `location_latitude`, `location_longitude`, `post_content`, `location_status`, `location_private`) VALUES
(1, 82, 0, 'grha-sabha-pramana', 'Grha Sabha Pramana', 1, 'Bulaksumur', 'Yogyakarta', 'DIY', '55171', NULL, 'ID', -7.770502, 110.384872, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_meta`
--

CREATE TABLE IF NOT EXISTS `wp_em_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  `meta_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`meta_id`),
  KEY `object_id` (`object_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_tickets`
--

CREATE TABLE IF NOT EXISTS `wp_em_tickets` (
  `ticket_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL,
  `ticket_name` tinytext NOT NULL,
  `ticket_description` text,
  `ticket_price` decimal(14,4) DEFAULT NULL,
  `ticket_start` datetime DEFAULT NULL,
  `ticket_end` datetime DEFAULT NULL,
  `ticket_min` int(10) DEFAULT NULL,
  `ticket_max` int(10) DEFAULT NULL,
  `ticket_spaces` int(11) DEFAULT NULL,
  `ticket_members` int(1) DEFAULT NULL,
  `ticket_members_roles` longtext,
  `ticket_guests` int(1) DEFAULT NULL,
  `ticket_required` int(1) DEFAULT NULL,
  `ticket_meta` longtext,
  PRIMARY KEY (`ticket_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_tickets_bookings`
--

CREATE TABLE IF NOT EXISTS `wp_em_tickets_bookings` (
  `ticket_booking_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) unsigned NOT NULL,
  `ticket_id` bigint(20) unsigned NOT NULL,
  `ticket_booking_spaces` int(6) NOT NULL,
  `ticket_booking_price` decimal(14,4) NOT NULL,
  PRIMARY KEY (`ticket_booking_id`),
  KEY `booking_id` (`booking_id`),
  KEY `ticket_id` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3689 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/drpp4', 'yes'),
(2, 'home', 'http://localhost/drpp4', 'yes'),
(3, 'blogname', 'The Learning Center', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kalikautsar@yahoo.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:29:"charity-apps/charity-apps.php";i:1;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:19:"easypay/easypay.php";i:4;s:33:"events-manager/events-manager.php";i:5;s:27:"js_composer/js_composer.php";i:6;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:7;s:23:"revslider/revslider.php";i:8;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:67:"C:\\xampp\\htdocs\\drpp/wp-content/themes/charity/charity-home-one.php";i:1;s:56:"C:\\xampp\\htdocs\\drpp/wp-content/themes/charity/style.css";i:3;s:54:"C:\\xampp\\htdocs\\drpp/wp-content/themes/charity/rtl.css";i:4;s:72:"C:\\xampp\\htdocs\\drpp/wp-content/themes/charity/content/causes-header.php";i:5;s:65:"C:\\xampp\\htdocs\\drpp/wp-content/themes/charity/charity-causes.php";}', 'no'),
(41, 'template', 'charity', 'yes'),
(42, 'stylesheet', 'charity', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33055', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '11', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33055', 'yes'),
(90, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:155:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:14:"publish_events";b:1;s:20:"delete_others_events";b:1;s:18:"edit_others_events";b:1;s:22:"manage_others_bookings";b:1;s:24:"publish_recurring_events";b:1;s:30:"delete_others_recurring_events";b:1;s:28:"edit_others_recurring_events";b:1;s:17:"publish_locations";b:1;s:23:"delete_others_locations";b:1;s:16:"delete_locations";b:1;s:21:"edit_others_locations";b:1;s:23:"delete_event_categories";b:1;s:21:"edit_event_categories";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:57:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:14:"publish_events";b:1;s:20:"delete_others_events";b:1;s:18:"edit_others_events";b:1;s:22:"manage_others_bookings";b:1;s:24:"publish_recurring_events";b:1;s:30:"delete_others_recurring_events";b:1;s:28:"edit_others_recurring_events";b:1;s:17:"publish_locations";b:1;s:23:"delete_others_locations";b:1;s:16:"delete_locations";b:1;s:21:"edit_others_locations";b:1;s:23:"delete_event_categories";b:1;s:21:"edit_event_categories";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:20:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:15:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:12:{s:4:"read";b:1;s:7:"level_0";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(91, 'cron', 'a:7:{i:1441092000;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1441092627;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1441094013;a:2:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1441110967;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1441154183;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1441154814;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(93, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.3.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.3-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.3";s:7:"version";s:3:"4.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1441089029;s:15:"version_checked";s:3:"4.3";s:12:"translations";a:0:{}}', 'yes'),
(94, '_transient_random_seed', '4abd7c87c0219a452b1ac1b87e6f8200', 'yes'),
(99, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1441089051;s:7:"checked";a:4:{s:7:"charity";s:5:"1.4.1";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(100, '_site_transient_timeout_browser_d222b6a854d35c9c9584e695b623c468', '1440549375', 'yes'),
(101, '_site_transient_browser_d222b6a854d35c9c9584e695b623c468', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.155";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(102, 'can_compress_scripts', '1', 'yes'),
(120, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1439944629;s:4:"data";a:0:{}}}', 'yes'),
(121, 'current_theme', 'Charity', 'yes'),
(122, 'theme_mods_charity', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header_menu";i:6;}}', 'yes'),
(123, 'theme_switched', '', 'yes'),
(124, 'easypay_form', '<form class="form-horizontal">\n<!-- Text input-->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="name">Name</label>  \n  <div class="col-md-5">\n  <input id="name" name="name" placeholder="" class="form-control input-md" required="" type="text">\n    \n  </div>\n</div>\n\n<!-- Text input-->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="lastname">Last Name</label>  \n  <div class="col-md-5">\n  <input id="lastname" name="lastname" placeholder="" class="form-control input-md" required="" type="text">\n    \n  </div>\n</div>\n\n<!-- Text input-->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="phone">Phone</label>  \n  <div class="col-md-5">\n  <input id="phone" name="phone" placeholder="" class="form-control input-md" required="" type="text">\n    \n  </div>\n</div>\n\n<!-- Textarea -->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="address">Address</label>\n  <div class="col-md-4">                     \n    <textarea class="form-control" id="address" name="address"></textarea>\n  </div>\n</div>\n\n<!-- Textarea -->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="additional">Additional Note</label>\n  <div class="col-md-4">                     \n    <textarea class="form-control" id="additional" name="additional"></textarea>\n  </div>\n</div>\n\n</form>\n', 'yes'),
(125, 'easypay_options', 'a:18:{s:21:"easypay_paypal_enable";s:4:"true";s:25:"easypay_user_defined_name";s:7:"charity";s:16:"easypay_business";s:41:"ashwaney-facilitator@sparxitsolutions.com";s:15:"easypay_pay_mod";s:45:"https://www.sandbox.paypal.com/cgi-bin/webscr";s:19:"easypay_success_url";s:32:"http://localhost/drpp/thank-you/";s:16:"easypay_fail_url";s:28:"http://localhost/drpp/sorry/";s:20:"easypay_pay_currency";s:3:"USD";s:18:"easypay_paypal_fee";s:3:"2.9";s:17:"easypay_retry_url";s:28:"http://localhost/drpp/sorry/";s:22:"easypay_amt_field_size";s:8:"col-md-5";s:24:"easypay_email_field_size";s:8:"col-md-5";s:22:"easypay_allow_currency";s:0:"";s:29:"easypay_disable_custom_amount";s:0:"";s:24:"easypay_st_amount_enable";s:0:"";s:18:"easypay_st_amounts";s:0:"";s:26:"easypay_paypal_description";s:93:"Pay using PayPal, you can also pay with your credit card if you don’t have a PayPal account";s:12:"pro_settings";a:8:{s:18:"easypay_pro_enable";s:4:"true";s:17:"easypay_pro_email";s:38:"arun-facilitator@sparxtechnologies.com";s:23:"easypay_pro_description";s:104:"Pay using credit card directly from our website, you will not be redirected to gateway for verification.";s:16:"easypay_pro_user";s:43:"arun-facilitator_api1.sparxtechnologies.com";s:20:"easypay_pro_password";s:16:"4QZ4XVZJTVZLY8CS";s:21:"easypay_pro_signature";s:56:"AKZBUR72QqpmoQ8gh0BrvkhB72WUAE4yxsXYkoymrXvSFABAIkQti3wx";s:16:"easypay_pro_mode";s:37:"https://api-3t.sandbox.paypal.com/nvp";s:15:"easypay_pro_fee";s:3:"2.0";}s:24:"easypay_recurring_enable";s:4:"true";}', 'yes'),
(126, 'easypay_form_builder', '[{"title":"Text Input","fields":{"id":{"label":"ID / Name","type":"input","value":"name","name":"id"},"label":{"label":"Label Text","type":"input","value":"Name","name":"label"},"placeholder":{"label":"Placeholder","type":"input","value":"","name":"placeholder"},"helptext":{"label":"Help Text","type":"input","value":"","name":"helptext"},"required":{"label":"Required","type":"checkbox","value":true,"name":"required"},"inputsize":{"label":"Input Size","type":"select","value":[{"value":"col-md-1","selected":false,"label":"Mini"},{"value":"col-md-2","selected":false,"label":"Small"},{"value":"col-md-4","selected":false,"label":"Medium"},{"value":"col-md-5","selected":true,"label":"Large"},{"value":"col-md-6","selected":false,"label":"Xlarge"},{"value":"col-md-8","selected":false,"label":"Xxlarge"}],"name":"inputsize"}}},{"title":"Text Input","fields":{"id":{"label":"ID / Name","type":"input","value":"lastname","name":"id"},"label":{"label":"Label Text","type":"input","value":"Last Name","name":"label"},"placeholder":{"label":"Placeholder","type":"input","value":"","name":"placeholder"},"helptext":{"label":"Help Text","type":"input","value":"","name":"helptext"},"required":{"label":"Required","type":"checkbox","value":true,"name":"required"},"inputsize":{"label":"Input Size","type":"select","value":[{"value":"col-md-1","selected":false,"label":"Mini"},{"value":"col-md-2","selected":false,"label":"Small"},{"value":"col-md-4","selected":false,"label":"Medium"},{"value":"col-md-5","selected":true,"label":"Large"},{"value":"col-md-6","selected":false,"label":"Xlarge"},{"value":"col-md-8","selected":false,"label":"Xxlarge"}],"name":"inputsize"}}},{"title":"Text Input","fields":{"id":{"label":"ID / Name","type":"input","value":"phone","name":"id"},"label":{"label":"Label Text","type":"input","value":"Phone","name":"label"},"placeholder":{"label":"Placeholder","type":"input","value":"","name":"placeholder"},"helptext":{"label":"Help Text","type":"input","value":"","name":"helptext"},"required":{"label":"Required","type":"checkbox","value":true,"name":"required"},"inputsize":{"label":"Input Size","type":"select","value":[{"value":"col-md-1","selected":false,"label":"Mini"},{"value":"col-md-2","selected":false,"label":"Small"},{"value":"col-md-4","selected":false,"label":"Medium"},{"value":"col-md-5","selected":true,"label":"Large"},{"value":"col-md-6","selected":false,"label":"Xlarge"},{"value":"col-md-8","selected":false,"label":"Xxlarge"}],"name":"inputsize"}}},{"title":"Text Area","fields":{"id":{"label":"ID / Name","type":"input","value":"address","name":"id"},"label":{"label":"Label Text","type":"input","value":"Address","name":"label"},"textarea":{"label":"Starting Text","type":"textarea","value":"","name":"textarea"}}},{"title":"Text Area","fields":{"id":{"label":"ID / Name","type":"input","value":"additional","name":"id"},"label":{"label":"Label Text","type":"input","value":"Additional Note","name":"label"},"textarea":{"label":"Starting Text","type":"textarea","value":"","name":"textarea"}}}]', 'yes'),
(127, 'easypay_stripe_setting', 'a:7:{s:20:"easypay_strip_enable";s:4:"true";s:25:"easypay_strip_description";s:46:"Pay using Stripe, if you have a Stripe account";s:19:"easypay_strip_title";s:6:"Stripe";s:19:"easypay_private_key";s:32:"pk_test_y4Ot3N4ZDWL6jb2xH8nHABEp";s:18:"easypay_secret_key";s:32:"sk_test_bajvh4G8hxAwfjOsJZG36uSt";s:23:"easypay_strip_verifySSL";s:4:"true";s:21:"easypay_strip_pay_mod";s:45:"https://www.sandbox.paypal.com/cgi-bin/webscr";}', 'yes'),
(128, 'wpb_js_import_option', '1', 'yes'),
(129, 'vpt_option', 'a:96:{s:18:"single_causes_mode";s:0:"";s:21:"charity_home_1_select";s:2:"11";s:21:"charity_home_2_select";s:2:"11";s:21:"charity_home_3_select";s:2:"11";s:24:"charity_home_shoplanding";s:2:"11";s:11:"home_layout";s:3:"one";s:23:"charity_single_cause_id";s:0:"";s:18:"single_causes_date";s:0:"";s:21:"charity_home_4_select";s:0:"";s:21:"charity_home_5_select";s:0:"";s:18:"causes_home_layout";s:0:"";s:7:"favicon";s:89:"http://localhost/drpp4/wp-content/uploads/2015/08/logo-The-Learning-Center-Diapositif.png";s:9:"site_logo";s:84:"http://localhost/drpp4/wp-content/uploads/2015/08/logo-The-Learning-Center-Putih.png";s:20:"site_header_two_logo";s:84:"http://localhost/drpp4/wp-content/uploads/2015/08/logo-The-Learning-Center-Putih.png";s:11:"theme_color";s:7:"#076e3c";s:11:"theme_fonts";s:23:"''Montserrat'',sans-serif";s:13:"sticky_header";s:9:"sticky-no";s:11:"page_layout";s:10:"full-width";s:25:"become_volunteer_btn_text";s:10:"Membership";s:25:"become_volunteer_btn_link";s:21:"http://localhost/drpp";s:16:"welcome_tag_line";s:30:"Welcome to The Learning Center";s:12:"info_mail_id";s:0:"";s:10:"copy_right";s:62:"© Copyright 2015, All Rights Reserved by The Learning Center.";s:22:"reserve_textarea_error";s:0:"";s:13:"header_layout";s:5:"three";s:13:"footer_layout";s:3:"one";s:22:"charity-gallery-layout";s:8:"col-sm-6";s:28:"charity-causes-single-layout";s:9:"fullwidth";s:32:"charity_global_donation_cause_id";s:0:"";s:23:"charity_urgent_cause_id";s:0:"";s:16:"charity-facebook";s:19:"http://facebook.com";s:19:"charity-google-plus";s:22:"http://plus.google.com";s:15:"charity-twitter";s:18:"http://twitter.com";s:16:"charity-linkedin";s:19:"http://linkedin.com";s:20:"charity-vimeo-square";s:16:"http://vimeo.com";s:7:"img_404";s:59:"http://localhost/drpp/wp-content/uploads/2015/08/quote-.jpg";s:6:"ch_css";s:0:"";s:5:"ch_js";s:0:"";s:21:"coming_soon_page_logo";s:86:"http://theemon.com/c/charity-wp/PlaceHolder/wp-content/uploads/2015/04/launch-logo.png";s:19:"coming_soon_page_bg";s:84:"http://theemon.com/c/charity-wp/PlaceHolder/wp-content/uploads/2015/04/launch-bg.jpg";s:16:"coming_soon_date";s:10:"16-04-2015";s:22:"coming_soon_newsletter";s:12:"[mc4wp_form]";s:16:"coming_soon_mode";s:0:"";s:16:"coming_soon_page";s:0:"";s:26:"coming_soon_copyright_text";s:56:"© Copyright 2014, All Rights Reserved by Charity Theme.";s:20:"ch_hOne_causes_title";s:60:"Who handle your problem? <strong>This is our expert</strong>";s:22:"ch_hOne_how_help_title";s:53:"This is our main features. <strong>See below</strong>";s:25:"ch_hOne_latest_news_title";s:11:"Latest News";s:25:"ch_hOne_testimonial_title";s:48:"Donation Holders say <strong>Read Below</strong>";s:26:"ch_htwo_urgentcauses_title";s:12:"Urgent Cause";s:23:"ch_htwo_allcauses_title";s:10:"All Causes";s:22:"ch_hTwo_how_help_title";s:44:"How can you help? <strong>See below</strong>";s:23:"ch_hTwo_help_video_text";s:21:"Watch our media video";s:25:"ch_hTwo_get_involved_text";s:26:"GET <span>INVOLVED </span>";s:25:"ch_hTwo_latest_news_title";s:39:"Latest News <strong>On Charity</strong>";s:25:"ch_hTwo_testimonial_title";s:25:"What Donation Holders say";s:22:"ch_hThree_causes_title";s:79:"You can help lots of people by donating little. <strong>See our causes</strong>";s:24:"ch_hThree_help_one_title";s:13:"We can change";s:28:"ch_hThree_help_one_sub_title";s:43:"the life of African people with small help ";s:25:"ch_hThree_help_video_text";s:21:"Watch our media video";s:27:"ch_hThree_help_second_title";s:17:"How can you help?";s:31:"ch_hThree_help_second_sub_title";s:9:"See below";s:27:"ch_hThree_latest_news_title";s:36:"Latest News <strong>Charity</strong>";s:27:"ch_hThree_get_involved_text";s:25:"GET <span>INVOLVED</span>";s:27:"ch_hThree_testimonial_title";s:25:"What Donation Holders say";s:29:"ch_shop_landing_product_title";s:71:"Lorem Ipsum is simply dummy printing. <strong>See our products</strong>";s:20:"ch_shop_landing_news";s:53:"Checkout whats going on. <strong>Latest News</strong>";s:27:"ch_shop_landing_testimonial";s:48:"Donation Holders say <strong>Read Below</strong>";s:21:"ch_hfour_causes_title";s:0:"";s:23:"ch_hfour_how_help_title";s:0:"";s:26:"ch_hfour_latest_news_title";s:0:"";s:26:"ch_hfour_testimonial_title";s:0:"";s:21:"ch_hfive_causes_title";s:0:"";s:23:"ch_hfive_how_help_title";s:0:"";s:26:"ch_hfive_latest_news_title";s:0:"";s:26:"ch_hfive_testimonial_title";s:0:"";s:18:"ch_hfive_volunteer";s:0:"";s:12:"ch_404_title";s:33:"No Page Found. Something is Wrong";s:11:"ch_404_desc";s:197:"Phllus felis purus placerat vel augue vitae aliquam tincidunt dolor sed hendrerit diam in mat tis mollis donecut Phasellus felis purus placerat vel augue vitae, Sed hendrerit diam in mattis mollis.";s:18:"ch_our_story_title";s:63:"Who we are? <strong class="border-none">Read our Story</strong>";s:15:"ch_work_section";s:52:"What this site do? <strong>See Our Features</strong>";s:19:"ch_our_team_section";s:8:"Our Team";s:12:"ch_faq_title";s:60:"Please make sure that you finish <strong>FAQ below.</strong>";s:23:"ch_faq_section_onetitle";s:17:"General Questions";s:23:"ch_faq_section_twotitle";s:17:"General Questions";s:18:"ch_volunteer_title";s:64:"We need you, <strong class="border-none">Help us around</strong>";s:26:"ch_volunteer_process_title";s:71:"How you can apply, <strong class="border-none">Here is process</strong>";s:15:"ch_causes_title";s:27:"<strong>Our Expert</strong>";s:31:"ch_donation_steps_section_title";s:0:"";s:24:"ch_related_section_title";s:0:"";s:25:"ch_mission_services_title";s:68:"See Services, <strong class="border-none">We are on Mission</strong>";s:21:"ch_mission_help_title";s:62:"How We Help, <strong class="border-none">Several Ways</strong>";s:34:"ch_portfolio_related_section_title";s:17:"Related Portfolio";s:25:"ch_donation_message_title";s:29:"You have successfully donated";s:22:"ch_donation_form_title";s:20:"You are donating to.";s:0:"";s:0:"";}', 'yes'),
(131, 'revslider_checktables', '1', 'yes'),
(132, 'revslider-static-css', '.tp-caption a {\ncolor:#ff7302;\ntext-shadow:none;\n-webkit-transition:all 0.2s ease-out;\n-moz-transition:all 0.2s ease-out;\n-o-transition:all 0.2s ease-out;\n-ms-transition:all 0.2s ease-out;\n}\n\n.tp-caption a:hover {\ncolor:#ffa902;\n}', 'yes'),
(133, 'revslider-update-check-short', '1440995695', 'yes'),
(134, 'dbem_events_page', '3', 'yes'),
(135, 'dbem_locations_page', '4', 'yes'),
(136, 'dbem_categories_page', '5', 'yes'),
(137, 'dbem_tags_page', '6', 'yes'),
(138, 'dbem_my_bookings_page', '7', 'yes'),
(139, 'dbem_hello_to_user', '1', 'yes'),
(140, 'dbem_time_format', 'g:i a', 'yes'),
(141, 'dbem_date_format', 'd/m/Y', 'yes'),
(142, 'dbem_date_format_js', 'dd/mm/yy', 'yes'),
(143, 'dbem_dates_separator', ' - ', 'yes'),
(144, 'dbem_times_separator', ' - ', 'yes'),
(145, 'dbem_default_category', '-1', 'yes'),
(146, 'dbem_default_location', '0', 'yes'),
(147, 'dbem_events_default_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(148, 'dbem_events_default_order', 'ASC', 'yes'),
(149, 'dbem_events_default_limit', '10', 'yes'),
(150, 'dbem_search_form_submit', 'Search', 'yes'),
(151, 'dbem_search_form_advanced', '1', 'yes'),
(152, 'dbem_search_form_advanced_hidden', '1', 'yes'),
(153, 'dbem_search_form_advanced_show', 'Show Advanced Search', 'yes'),
(154, 'dbem_search_form_advanced_hide', 'Hide Advanced Search', 'yes'),
(155, 'dbem_search_form_text', '1', 'yes'),
(156, 'dbem_search_form_text_label', 'Search', 'yes'),
(157, 'dbem_search_form_geo', '1', 'yes'),
(158, 'dbem_search_form_geo_label', 'Near...', 'yes'),
(159, 'dbem_search_form_geo_units', '1', 'yes'),
(160, 'dbem_search_form_geo_units_label', 'Within', 'yes'),
(161, 'dbem_search_form_geo_unit_default', 'mi', 'yes'),
(162, 'dbem_search_form_geo_distance_default', '25', 'yes'),
(163, 'dbem_search_form_geo_distance_options', '5,10,25,50,100', 'yes'),
(164, 'dbem_search_form_dates', '1', 'yes'),
(165, 'dbem_search_form_dates_label', 'Dates', 'yes'),
(166, 'dbem_search_form_dates_separator', 'and', 'yes'),
(167, 'dbem_search_form_categories', '1', 'yes'),
(168, 'dbem_search_form_categories_label', 'All Categories', 'yes'),
(169, 'dbem_search_form_category_label', 'Category', 'yes'),
(170, 'dbem_search_form_countries', '1', 'yes'),
(171, 'dbem_search_form_default_country', '0', 'yes'),
(172, 'dbem_search_form_countries_label', 'All Countries', 'yes'),
(173, 'dbem_search_form_country_label', 'Country', 'yes'),
(174, 'dbem_search_form_regions', '1', 'yes'),
(175, 'dbem_search_form_regions_label', 'All Regions', 'yes'),
(176, 'dbem_search_form_region_label', 'Region', 'yes'),
(177, 'dbem_search_form_states', '1', 'yes'),
(178, 'dbem_search_form_states_label', 'All States', 'yes'),
(179, 'dbem_search_form_state_label', 'State/County', 'yes'),
(180, 'dbem_search_form_towns', '0', 'yes'),
(181, 'dbem_search_form_towns_label', 'All Cities/Towns', 'yes'),
(182, 'dbem_search_form_town_label', 'City/Town', 'yes'),
(183, 'dbem_events_form_editor', '1', 'yes'),
(184, 'dbem_events_form_reshow', '1', 'yes'),
(185, 'dbem_events_form_result_success', 'You have successfully submitted your event, which will be published pending approval.', 'yes'),
(186, 'dbem_events_form_result_success_updated', 'You have successfully updated your event, which will be republished pending approval.', 'yes'),
(187, 'dbem_events_anonymous_submissions', '0', 'yes'),
(188, 'dbem_events_anonymous_user', '1', 'yes'),
(189, 'dbem_events_anonymous_result_success', 'You have successfully submitted your event, which will be published pending approval.', 'yes'),
(190, 'dbem_event_submitted_email_admin', '', 'yes'),
(191, 'dbem_event_submitted_email_subject', 'Submitted Event Awaiting Approval', 'yes'),
(192, 'dbem_event_submitted_email_body', 'A new event has been submitted by #_CONTACTNAME.\r\n\r\nName : #_EVENTNAME \r\n\r\nDate : #_EVENTDATES \r\n\r\nTime : #_EVENTTIMES \r\n\r\nPlease visit http://localhost/drpp/wp-admin/post.php?action=edit&post=#_EVENTPOSTID to review this event for approval.\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(193, 'dbem_event_resubmitted_email_subject', 'Re-Submitted Event Awaiting Approval', 'yes'),
(194, 'dbem_event_resubmitted_email_body', 'A previously published event has been modified by #_CONTACTNAME, and this event is now unpublished and pending your approval.\r\n\r\nName : #_EVENTNAME \r\n\r\nDate : #_EVENTDATES \r\n\r\nTime : #_EVENTTIMES \r\n\r\nPlease visit http://localhost/drpp/wp-admin/post.php?action=edit&post=#_EVENTPOSTID to review this event for approval.\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(195, 'dbem_event_published_email_subject', 'Published Event - #_EVENTNAME', 'yes'),
(196, 'dbem_event_published_email_body', 'A new event has been published by #_CONTACTNAME.\r\n\r\nName : #_EVENTNAME \r\n\r\nDate : #_EVENTDATES \r\n\r\nTime : #_EVENTTIMES \r\n\r\nEdit this event - http://localhost/drpp/wp-admin/post.php?action=edit&post=#_EVENTPOSTID \r\n\r\n View this event - #_EVENTURL\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(197, 'dbem_event_approved_email_subject', 'Event Approved - #_EVENTNAME', 'yes'),
(198, 'dbem_event_approved_email_body', 'Dear #_CONTACTNAME, \r\n\r\nYour event #_EVENTNAME on #_EVENTDATES has been approved.\r\n\r\nYou can view your event here: #_EVENTURL\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(199, 'dbem_event_reapproved_email_subject', 'Event Approved - #_EVENTNAME', 'yes'),
(200, 'dbem_event_reapproved_email_body', 'Dear #_CONTACTNAME, \r\n\r\nYour event #_EVENTNAME on #_EVENTDATES has been approved.\r\n\r\nYou can view your event here: #_EVENTURL\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(201, 'dbem_events_page_title', 'Events', 'yes'),
(202, 'dbem_events_page_scope', 'future', 'yes'),
(203, 'dbem_events_page_search_form', '1', 'yes'),
(204, 'dbem_event_list_item_format_header', '<table cellpadding="0" cellspacing="0" class="events-table" >\r\n    <thead>\r\n        <tr>\r\n			<th class="event-time" width="150">Date/Time</th>\r\n			<th class="event-description" width="*">Event</th>\r\n		</tr>\r\n   	</thead>\r\n    <tbody>', 'yes'),
(205, 'dbem_event_list_item_format', '<tr>\r\n			<td>\r\n                #_EVENTDATES<br/>\r\n                #_EVENTTIMES\r\n            </td>\r\n            <td>\r\n                #_EVENTLINK\r\n                {has_location}<br/><i>#_LOCATIONNAME, #_LOCATIONTOWN #_LOCATIONSTATE</i>{/has_location}\r\n            </td>\r\n        </tr>', 'yes'),
(206, 'dbem_event_list_item_format_footer', '</tbody></table>', 'yes'),
(207, 'dbem_event_list_groupby', '0', 'yes'),
(208, 'dbem_event_list_groupby_format', '', 'yes'),
(209, 'dbem_event_list_groupby_header_format', '<h2>#s</h2>', 'yes'),
(210, 'dbem_display_calendar_in_events_page', '0', 'yes'),
(211, 'dbem_single_event_format', '<div style="float:right; margin:0px 0px 15px 15px;">#_LOCATIONMAP</div>\r\n<p>\r\n	<strong>Date/Time</strong><br/>\r\n	Date(s) - #_EVENTDATES<br /><i>#_EVENTTIMES</i>\r\n</p>\r\n{has_location}\r\n<p>\r\n	<strong>Location</strong><br/>\r\n	#_LOCATIONLINK\r\n</p>\r\n{/has_location}\r\n<p>\r\n	<strong>Categories</strong>\r\n	#_CATEGORIES\r\n</p>\r\n<br style="clear:both" />\r\n#_EVENTNOTES\r\n{has_bookings}\r\n<h3>Bookings</h3>\r\n#_BOOKINGFORM\r\n{/has_bookings}', 'yes'),
(212, 'dbem_event_excerpt_format', '#_EVENTDATES @ #_EVENTTIMES - #_EVENTEXCERPT', 'yes'),
(213, 'dbem_event_excerpt_alt_format', '#_EVENTDATES @ #_EVENTTIMES - #_EVENTEXCERPT{55}', 'yes'),
(214, 'dbem_event_page_title_format', '#_EVENTNAME', 'yes'),
(215, 'dbem_event_all_day_message', 'All Day', 'yes'),
(216, 'dbem_no_events_message', 'No Events', 'yes'),
(217, 'dbem_locations_default_orderby', 'location_name', 'yes'),
(218, 'dbem_locations_default_order', 'ASC', 'yes'),
(219, 'dbem_locations_default_limit', '10', 'yes'),
(220, 'dbem_locations_page_title', 'Event Locations', 'yes'),
(221, 'dbem_locations_page_search_form', '1', 'yes'),
(222, 'dbem_no_locations_message', 'No Locations', 'yes'),
(223, 'dbem_location_default_country', '0', 'yes'),
(224, 'dbem_location_list_item_format_header', '<ul class="em-locations-list">', 'yes'),
(225, 'dbem_location_list_item_format', '<li>#_LOCATIONLINK<ul><li>#_LOCATIONFULLLINE</li></ul></li>', 'yes'),
(226, 'dbem_location_list_item_format_footer', '</ul>', 'yes'),
(227, 'dbem_location_page_title_format', '#_LOCATIONNAME', 'yes'),
(228, 'dbem_single_location_format', '<div style="float:right; margin:0px 0px 15px 15px;">#_LOCATIONMAP</div>\r\n<p>\r\n	<strong>Address</strong><br/>\r\n	#_LOCATIONADDRESS<br/>\r\n	#_LOCATIONTOWN<br/>\r\n	#_LOCATIONSTATE<br/>\r\n	#_LOCATIONREGION<br/>\r\n	#_LOCATIONPOSTCODE<br/>\r\n	#_LOCATIONCOUNTRY\r\n</p>\r\n<br style="clear:both" />\r\n#_LOCATIONNOTES\r\n\r\n<h3>Upcoming Events</h3>\r\n<p>#_LOCATIONNEXTEVENTS</p>', 'yes'),
(229, 'dbem_location_excerpt_format', '#_LOCATIONEXCERPT', 'yes'),
(230, 'dbem_location_excerpt_alt_format', '#_LOCATIONEXCERPT{55}', 'yes'),
(231, 'dbem_location_no_events_message', '<li>No events in this location</li>', 'yes'),
(232, 'dbem_location_event_list_item_header_format', '<ul>', 'yes'),
(233, 'dbem_location_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(234, 'dbem_location_event_list_item_footer_format', '</ul>', 'yes'),
(235, 'dbem_location_event_list_limit', '20', 'yes'),
(236, 'dbem_location_event_single_format', '#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(237, 'dbem_location_no_event_message', 'No events in this location', 'yes'),
(238, 'dbem_categories_default_limit', '10', 'yes'),
(239, 'dbem_categories_default_orderby', 'name', 'yes'),
(240, 'dbem_categories_default_order', 'ASC', 'yes'),
(241, 'dbem_categories_list_item_format_header', '<ul class="em-categories-list">', 'yes'),
(242, 'dbem_categories_list_item_format', '<li>#_CATEGORYLINK</li>', 'yes'),
(243, 'dbem_categories_list_item_format_footer', '</ul>', 'yes'),
(244, 'dbem_no_categories_message', 'No Categories', 'yes'),
(245, 'dbem_category_page_title_format', '#_CATEGORYNAME', 'yes'),
(246, 'dbem_category_page_format', '#_CATEGORYNOTES<h3>Upcoming Events</h3>#_CATEGORYNEXTEVENTS', 'yes'),
(247, 'dbem_category_no_events_message', '<li>No events in this category</li>', 'yes'),
(248, 'dbem_category_event_list_item_header_format', '<ul>', 'yes'),
(249, 'dbem_category_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(250, 'dbem_category_event_list_item_footer_format', '</ul>', 'yes'),
(251, 'dbem_category_event_list_limit', '20', 'yes'),
(252, 'dbem_category_event_single_format', '#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(253, 'dbem_category_no_event_message', 'No events in this category', 'yes'),
(254, 'dbem_category_default_color', '#a8d144', 'yes'),
(255, 'dbem_tags_default_limit', '10', 'yes'),
(256, 'dbem_tags_default_orderby', 'name', 'yes'),
(257, 'dbem_tags_default_order', 'ASC', 'yes'),
(258, 'dbem_tags_list_item_format_header', '<ul class="em-tags-list">', 'yes'),
(259, 'dbem_tags_list_item_format', '<li>#_TAGLINK</li>', 'yes'),
(260, 'dbem_tags_list_item_format_footer', '</ul>', 'yes'),
(261, 'dbem_no_tags_message', 'No Tags', 'yes'),
(262, 'dbem_tag_page_title_format', '#_TAGNAME', 'yes'),
(263, 'dbem_tag_page_format', '<h3>Upcoming Events</h3>#_TAGNEXTEVENTS', 'yes'),
(264, 'dbem_tag_no_events_message', '<li>No events with this tag</li>', 'yes'),
(265, 'dbem_tag_event_list_item_header_format', '<ul>', 'yes'),
(266, 'dbem_tag_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(267, 'dbem_tag_event_list_item_footer_format', '</ul>', 'yes'),
(268, 'dbem_tag_event_single_format', '#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(269, 'dbem_tag_no_event_message', 'No events with this tag', 'yes'),
(270, 'dbem_tag_event_list_limit', '20', 'yes'),
(271, 'dbem_rss_limit', '0', 'yes'),
(272, 'dbem_rss_scope', 'future', 'yes'),
(273, 'dbem_rss_main_title', 'The Learning Center - Events', 'yes'),
(274, 'dbem_rss_main_description', 'Just another WordPress site - Events', 'yes'),
(275, 'dbem_rss_description_format', '#_EVENTDATES - #_EVENTTIMES <br/>#_LOCATIONNAME <br/>#_LOCATIONADDRESS <br/>#_LOCATIONTOWN', 'yes'),
(276, 'dbem_rss_title_format', '#_EVENTNAME', 'yes'),
(277, 'dbem_rss_order', 'ASC', 'yes'),
(278, 'dbem_rss_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(279, 'em_rss_pubdate', 'Wed, 19 Aug 2015 00:40:47 +0000', 'yes'),
(280, 'dbem_ical_limit', '0', 'yes'),
(281, 'dbem_ical_scope', 'future', 'yes'),
(282, 'dbem_ical_description_format', '#_EVENTNAME - #_LOCATIONNAME - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(283, 'dbem_ical_real_description_format', '#_EVENTEXCERPT', 'yes'),
(284, 'dbem_ical_location_format', '#_LOCATION', 'yes'),
(285, 'dbem_gmap_is_active', '1', 'yes'),
(286, 'dbem_map_default_width', '400px', 'yes'),
(287, 'dbem_map_default_height', '300px', 'yes'),
(288, 'dbem_location_baloon_format', '<strong>#_LOCATIONNAME</strong><br/>#_LOCATIONADDRESS - #_LOCATIONTOWN<br/><a href="#_LOCATIONPAGEURL">Events</a>', 'yes'),
(289, 'dbem_map_text_format', '<strong>#_LOCATIONNAME</strong><p>#_LOCATIONADDRESS</p><p>#_LOCATIONTOWN</p>', 'yes'),
(290, 'dbem_email_disable_registration', '0', 'yes'),
(291, 'dbem_rsvp_mail_port', '465', 'yes'),
(292, 'dbem_smtp_host', 'localhost', 'yes'),
(293, 'dbem_mail_sender_name', '', 'yes'),
(294, 'dbem_rsvp_mail_send_method', 'wp_mail', 'yes'),
(295, 'dbem_rsvp_mail_SMTPAuth', '1', 'yes'),
(296, 'dbem_smtp_html', '1', 'yes'),
(297, 'dbem_smtp_html_br', '1', 'yes'),
(298, 'dbem_image_max_width', '700', 'yes'),
(299, 'dbem_image_max_height', '700', 'yes'),
(300, 'dbem_image_min_width', '50', 'yes'),
(301, 'dbem_image_min_height', '50', 'yes'),
(302, 'dbem_image_max_size', '204800', 'yes'),
(303, 'dbem_list_date_title', 'Events - #j #M #y', 'yes'),
(304, 'dbem_full_calendar_month_format', 'M Y', 'yes'),
(305, 'dbem_full_calendar_event_format', '<li>#_EVENTLINK</li>', 'yes'),
(306, 'dbem_full_calendar_long_events', '0', 'yes'),
(307, 'dbem_full_calendar_initials_length', '0', 'yes'),
(308, 'dbem_full_calendar_abbreviated_weekdays', '1', 'yes'),
(309, 'dbem_display_calendar_day_single_yes', '1', 'yes'),
(310, 'dbem_small_calendar_month_format', 'M Y', 'yes'),
(311, 'dbem_small_calendar_event_title_format', '#_EVENTNAME', 'yes'),
(312, 'dbem_small_calendar_event_title_separator', ', ', 'yes'),
(313, 'dbem_small_calendar_initials_length', '1', 'yes'),
(314, 'dbem_small_calendar_abbreviated_weekdays', '0', 'yes'),
(315, 'dbem_display_calendar_order', 'ASC', 'yes'),
(316, 'dbem_display_calendar_orderby', 'event_name,event_start_time', 'yes'),
(317, 'dbem_display_calendar_events_limit', '3', 'yes'),
(318, 'dbem_display_calendar_events_limit_msg', 'more...', 'yes'),
(319, 'dbem_calendar_direct_links', '1', 'yes'),
(320, 'dbem_require_location', '0', 'yes'),
(321, 'dbem_locations_enabled', '1', 'yes'),
(322, 'dbem_use_select_for_locations', '0', 'yes'),
(323, 'dbem_attributes_enabled', '1', 'yes'),
(324, 'dbem_recurrence_enabled', '0', 'yes'),
(325, 'dbem_rsvp_enabled', '0', 'yes'),
(326, 'dbem_categories_enabled', '1', 'yes'),
(327, 'dbem_tags_enabled', '1', 'yes'),
(328, 'dbem_placeholders_custom', '', 'yes'),
(329, 'dbem_location_attributes_enabled', '1', 'yes'),
(330, 'dbem_location_placeholders_custom', '', 'yes'),
(331, 'dbem_bookings_registration_disable', '0', 'yes'),
(332, 'dbem_bookings_registration_disable_user_emails', '0', 'yes'),
(334, 'dbem_bookings_registration_user', '', 'yes'),
(336, 'dbem_bookings_approval', '1', 'yes'),
(338, 'dbem_bookings_approval_reserved', '0', 'yes'),
(340, 'dbem_bookings_approval_overbooking', '0', 'yes'),
(341, 'dbem_bookings_double', '0', 'yes'),
(342, 'dbem_bookings_user_cancellation', '1', 'yes'),
(343, 'dbem_bookings_currency', 'USD', 'yes'),
(344, 'dbem_bookings_currency_decimal_point', '.', 'yes'),
(346, 'dbem_bookings_currency_thousands_sep', ',', 'yes'),
(347, 'dbem_bookings_currency_format', '@#', 'yes'),
(348, 'dbem_bookings_tax', '0', 'yes'),
(349, 'dbem_bookings_tax_auto_add', '0', 'yes'),
(350, 'dbem_bookings_submit_button', 'Send your booking', 'yes'),
(351, 'dbem_bookings_login_form', '1', 'yes'),
(352, 'dbem_bookings_anonymous', '1', 'yes'),
(353, 'dbem_bookings_form_max', '20', 'yes'),
(354, 'dbem_bookings_form_msg_disabled', 'Online bookings are not available for this event.', 'yes'),
(355, 'dbem_bookings_form_msg_closed', 'Bookings are closed for this event.', 'yes'),
(356, 'dbem_bookings_form_msg_full', 'This event is fully booked.', 'yes'),
(357, 'dbem_bookings_form_msg_attending', 'You are currently attending this event.', 'yes'),
(358, 'dbem_bookings_form_msg_bookings_link', 'Manage my bookings', 'yes'),
(359, 'dbem_booking_warning_cancel', 'Are you sure you want to cancel your booking?', 'yes'),
(360, 'dbem_booking_feedback_cancelled', 'Booking Cancelled', 'yes'),
(361, 'dbem_booking_feedback_pending', 'Booking successful, pending confirmation (you will also receive an email once confirmed).', 'yes'),
(362, 'dbem_booking_feedback', 'Booking successful.', 'yes'),
(363, 'dbem_booking_feedback_full', 'Booking cannot be made, not enough spaces available!', 'yes'),
(364, 'dbem_booking_feedback_log_in', 'You must log in or register to make a booking.', 'yes'),
(365, 'dbem_booking_feedback_nomail', 'However, there were some problems whilst sending confirmation emails to you and/or the event contact person. You may want to contact them directly and letting them know of this error.', 'yes'),
(366, 'dbem_booking_feedback_error', 'Booking could not be created:', 'yes'),
(367, 'dbem_booking_feedback_email_exists', 'This email already exists in our system, please log in to register to proceed with your booking.', 'yes'),
(368, 'dbem_booking_feedback_new_user', 'A new user account has been created for you. Please check your email for access details.', 'yes'),
(369, 'dbem_booking_feedback_reg_error', 'There was a problem creating a user account, please contact a website administrator.', 'yes'),
(370, 'dbem_booking_feedback_already_booked', 'You already have booked a seat at this event.', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(371, 'dbem_booking_feedback_min_space', 'You must request at least one space to book an event.', 'yes'),
(372, 'dbem_booking_feedback_spaces_limit', 'You cannot book more than %d spaces for this event.', 'yes'),
(373, 'dbem_booking_button_msg_book', 'Book Now', 'yes'),
(374, 'dbem_booking_button_msg_booking', 'Booking...', 'yes'),
(375, 'dbem_booking_button_msg_booked', 'Booking Submitted', 'yes'),
(376, 'dbem_booking_button_msg_already_booked', 'Already Booked', 'yes'),
(377, 'dbem_booking_button_msg_error', 'Booking Error. Try again?', 'yes'),
(378, 'dbem_booking_button_msg_full', 'Sold Out', 'yes'),
(379, 'dbem_booking_button_msg_cancel', 'Cancel', 'yes'),
(380, 'dbem_booking_button_msg_canceling', 'Canceling...', 'yes'),
(381, 'dbem_booking_button_msg_cancelled', 'Cancelled', 'yes'),
(382, 'dbem_booking_button_msg_cancel_error', 'Cancellation Error. Try again?', 'yes'),
(383, 'dbem_bookings_notify_admin', '0', 'yes'),
(384, 'dbem_bookings_contact_email', '1', 'yes'),
(385, 'dbem_bookings_contact_email_pending_subject', 'Booking Pending', 'yes'),
(386, 'dbem_bookings_contact_email_pending_body', 'The following booking is pending :\r\n\r\n#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\r\n\r\nNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\r\n\r\nBOOKING DETAILS\r\n\r\nName : #_BOOKINGNAME\r\nEmail : #_BOOKINGEMAIL\r\n\r\n#_BOOKINGSUMMARY\r\n\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(387, 'dbem_bookings_contact_email_confirmed_subject', 'Booking Confirmed', 'yes'),
(388, 'dbem_bookings_contact_email_confirmed_body', 'The following booking is confirmed :\r\n\r\n#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\r\n\r\nNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\r\n\r\nBOOKING DETAILS\r\n\r\nName : #_BOOKINGNAME\r\nEmail : #_BOOKINGEMAIL\r\n\r\n#_BOOKINGSUMMARY\r\n\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(389, 'dbem_bookings_contact_email_rejected_subject', 'Booking Rejected', 'yes'),
(390, 'dbem_bookings_contact_email_rejected_body', 'The following booking is rejected :\r\n\r\n#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\r\n\r\nNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\r\n\r\nBOOKING DETAILS\r\n\r\nName : #_BOOKINGNAME\r\nEmail : #_BOOKINGEMAIL\r\n\r\n#_BOOKINGSUMMARY\r\n\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(391, 'dbem_bookings_contact_email_cancelled_subject', 'Booking Cancelled', 'yes'),
(392, 'dbem_bookings_contact_email_cancelled_body', 'The following booking is cancelled :\r\n\r\n#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\r\n\r\nNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\r\n\r\nBOOKING DETAILS\r\n\r\nName : #_BOOKINGNAME\r\nEmail : #_BOOKINGEMAIL\r\n\r\n#_BOOKINGSUMMARY\r\n\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(393, 'dbem_bookings_email_pending_subject', 'Booking Pending', 'yes'),
(394, 'dbem_bookings_email_pending_body', 'Dear #_BOOKINGNAME, \r\n\r\nYou have requested #_BOOKINGSPACES space/spaces for #_EVENTNAME.\r\n\r\nWhen : #_EVENTDATES @ #_EVENTTIMES\r\n\r\nWhere : #_LOCATIONNAME - #_LOCATIONFULLLINE\r\n\r\nYour booking is currently pending approval by our administrators. Once approved you will receive an automatic confirmation.\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(395, 'dbem_bookings_email_rejected_subject', 'Booking Rejected', 'yes'),
(396, 'dbem_bookings_email_rejected_body', 'Dear #_BOOKINGNAME, \r\n\r\nYour requested booking for #_BOOKINGSPACES spaces at #_EVENTNAME on #_EVENTDATES has been rejected.\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(397, 'dbem_bookings_email_confirmed_subject', 'Booking Confirmed', 'yes'),
(398, 'dbem_bookings_email_confirmed_body', 'Dear #_BOOKINGNAME, \r\n\r\nYou have successfully reserved #_BOOKINGSPACES space/spaces for #_EVENTNAME.\r\n\r\nWhen : #_EVENTDATES @ #_EVENTTIMES\r\n\r\nWhere : #_LOCATIONNAME - #_LOCATIONFULLLINE\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(399, 'dbem_bookings_email_cancelled_subject', 'Booking Cancelled', 'yes'),
(400, 'dbem_bookings_email_cancelled_body', 'Dear #_BOOKINGNAME, \r\n\r\nYour requested booking for #_BOOKINGSPACES spaces at #_EVENTNAME on #_EVENTDATES has been cancelled.\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(401, 'dbem_bookings_email_registration_subject', '[The Learning Center] Your username and password', 'yes'),
(402, 'dbem_bookings_email_registration_body', 'You have successfully created an account at The Learning Center\r\n\r\nYou can log into our site here : http://localhost/drpp/wp-login.php\r\n\r\nUsername : %username%\r\n\r\nPassword : %password%\r\n\r\nTo view your bookings, please visit http://localhost/drpp/?page_id=7 after logging in.', 'yes'),
(403, 'dbem_bookings_tickets_orderby', 'ticket_price DESC, ticket_name ASC', 'yes'),
(404, 'dbem_bookings_tickets_priority', '0', 'yes'),
(405, 'dbem_bookings_tickets_show_unavailable', '0', 'yes'),
(406, 'dbem_bookings_tickets_show_loggedout', '1', 'yes'),
(407, 'dbem_bookings_tickets_single', '0', 'yes'),
(408, 'dbem_bookings_tickets_single_form', '0', 'yes'),
(409, 'dbem_bookings_my_title_format', 'My Bookings', 'yes'),
(410, 'dbem_bp_events_list_format_header', '<ul class="em-events-list">', 'yes'),
(411, 'dbem_bp_events_list_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES<ul><li>#_LOCATIONLINK - #_LOCATIONADDRESS, #_LOCATIONTOWN</li></ul></li>', 'yes'),
(412, 'dbem_bp_events_list_format_footer', '</ul>', 'yes'),
(413, 'dbem_bp_events_list_none_format', '<p class="em-events-list">No Events</p>', 'yes'),
(414, 'dbem_css_editors', '1', 'yes'),
(415, 'dbem_css_rsvp', '1', 'yes'),
(416, 'dbem_css_rsvpadmin', '1', 'yes'),
(417, 'dbem_css_evlist', '1', 'yes'),
(418, 'dbem_css_search', '1', 'yes'),
(419, 'dbem_css_loclist', '1', 'yes'),
(420, 'dbem_css_catlist', '1', 'yes'),
(421, 'dbem_css_taglist', '1', 'yes'),
(422, 'dbem_cp_events_slug', 'events', 'yes'),
(423, 'dbem_cp_locations_slug', 'locations', 'yes'),
(424, 'dbem_taxonomy_category_slug', 'events/categories', 'yes'),
(425, 'dbem_taxonomy_tag_slug', 'events/tags', 'yes'),
(426, 'dbem_cp_events_template', '', 'yes'),
(427, 'dbem_cp_events_body_class', '', 'yes'),
(428, 'dbem_cp_events_post_class', '', 'yes'),
(429, 'dbem_cp_events_formats', '1', 'yes'),
(430, 'dbem_cp_events_has_archive', '1', 'yes'),
(431, 'dbem_events_default_archive_orderby', '_start_ts', 'yes'),
(432, 'dbem_events_default_archive_order', 'ASC', 'yes'),
(433, 'dbem_events_archive_scope', 'past', 'yes'),
(434, 'dbem_cp_events_archive_formats', '1', 'yes'),
(435, 'dbem_cp_events_excerpt_formats', '1', 'yes'),
(436, 'dbem_cp_events_search_results', '0', 'yes'),
(437, 'dbem_cp_events_custom_fields', '1', 'yes'),
(438, 'dbem_cp_events_comments', '1', 'yes'),
(439, 'dbem_cp_locations_template', '', 'yes'),
(440, 'dbem_cp_locations_body_class', '', 'yes'),
(441, 'dbem_cp_locations_post_class', '', 'yes'),
(442, 'dbem_cp_locations_formats', '1', 'yes'),
(443, 'dbem_cp_locations_has_archive', '1', 'yes'),
(444, 'dbem_locations_default_archive_orderby', 'title', 'yes'),
(445, 'dbem_locations_default_archive_order', 'ASC', 'yes'),
(446, 'dbem_cp_locations_archive_formats', '1', 'yes'),
(447, 'dbem_cp_locations_excerpt_formats', '1', 'yes'),
(448, 'dbem_cp_locations_search_results', '0', 'yes'),
(449, 'dbem_cp_locations_custom_fields', '0', 'yes'),
(450, 'dbem_cp_locations_comments', '1', 'yes'),
(451, 'dbem_cp_categories_formats', '1', 'yes'),
(452, 'dbem_categories_default_archive_orderby', '_start_ts', 'yes'),
(453, 'dbem_categories_default_archive_order', 'ASC', 'yes'),
(454, 'dbem_cp_tags_formats', '1', 'yes'),
(455, 'dbem_tags_default_archive_orderby', '_start_ts', 'yes'),
(456, 'dbem_tags_default_archive_order', 'ASC', 'yes'),
(457, 'dbem_disable_thumbnails', '0', 'yes'),
(458, 'dbem_feedback_reminder', '1439944865', 'yes'),
(459, 'dbem_credits', '1', 'yes'),
(460, 'dbem_version', '5.6', 'yes'),
(461, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.2.2";}', 'yes'),
(462, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(463, 'CF7DBPlugin__version', '2.9.8', 'yes'),
(464, 'CF7DBPlugin__installed', '1', 'yes'),
(467, 'woocommerce_default_country', 'GB', 'yes'),
(468, 'woocommerce_allowed_countries', 'all', 'yes'),
(469, 'woocommerce_specific_allowed_countries', '', 'yes'),
(470, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(471, 'woocommerce_demo_store', 'no', 'yes'),
(472, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(473, 'woocommerce_api_enabled', 'yes', 'yes'),
(474, 'woocommerce_currency', 'GBP', 'yes'),
(475, 'woocommerce_currency_pos', 'left', 'yes'),
(476, 'woocommerce_price_thousand_sep', ',', 'yes'),
(477, 'woocommerce_price_decimal_sep', '.', 'yes'),
(478, 'woocommerce_price_num_decimals', '2', 'yes'),
(479, 'woocommerce_weight_unit', 'kg', 'yes'),
(480, 'woocommerce_dimension_unit', 'cm', 'yes'),
(481, 'woocommerce_enable_review_rating', 'yes', 'no'),
(482, 'woocommerce_review_rating_required', 'yes', 'no'),
(483, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(484, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(485, 'woocommerce_shop_page_id', '', 'yes'),
(486, 'woocommerce_shop_page_display', '', 'yes'),
(487, 'woocommerce_category_archive_display', '', 'yes'),
(488, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(489, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(490, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(491, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(492, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(493, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(494, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(495, 'woocommerce_manage_stock', 'yes', 'yes'),
(496, 'woocommerce_hold_stock_minutes', '60', 'no'),
(497, 'woocommerce_notify_low_stock', 'yes', 'no'),
(498, 'woocommerce_notify_no_stock', 'yes', 'no'),
(499, 'woocommerce_stock_email_recipient', 'kalikautsar@yahoo.com', 'no'),
(500, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(501, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(502, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(503, 'woocommerce_stock_format', '', 'yes'),
(504, 'woocommerce_file_download_method', 'force', 'no'),
(505, 'woocommerce_downloads_require_login', 'no', 'no'),
(506, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(507, 'woocommerce_calc_taxes', 'no', 'yes'),
(508, 'woocommerce_prices_include_tax', 'no', 'yes'),
(509, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(510, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(511, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(512, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(513, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(514, 'woocommerce_tax_display_cart', 'excl', 'no'),
(515, 'woocommerce_price_display_suffix', '', 'yes'),
(516, 'woocommerce_tax_total_display', 'itemized', 'no'),
(517, 'woocommerce_enable_coupons', 'yes', 'no'),
(518, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(519, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(520, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(521, 'woocommerce_cart_page_id', '', 'yes'),
(522, 'woocommerce_checkout_page_id', '', 'yes'),
(523, 'woocommerce_terms_page_id', '', 'no'),
(524, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(525, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(526, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(527, 'woocommerce_calc_shipping', 'yes', 'yes'),
(528, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(529, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(530, 'woocommerce_shipping_method_format', '', 'no'),
(531, 'woocommerce_ship_to_destination', 'billing', 'no'),
(532, 'woocommerce_ship_to_countries', '', 'yes'),
(533, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(534, 'woocommerce_myaccount_page_id', '', 'yes'),
(535, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(536, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(537, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(538, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(539, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(540, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(541, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(542, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(543, 'woocommerce_registration_generate_username', 'yes', 'no'),
(544, 'woocommerce_registration_generate_password', 'no', 'no'),
(545, 'woocommerce_email_from_name', 'The Learning Center', 'no'),
(546, 'woocommerce_email_from_address', 'kalikautsar@yahoo.com', 'no'),
(547, 'woocommerce_email_header_image', '', 'no'),
(548, 'woocommerce_email_footer_text', 'The Learning Center - Powered by WooCommerce', 'no'),
(549, 'woocommerce_email_base_color', '#557da1', 'no'),
(550, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(551, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(552, 'woocommerce_email_text_color', '#505050', 'no'),
(553, 'mc4wp_lite', 'a:1:{s:7:"api_key";s:0:"";}', 'yes'),
(554, 'mc4wp_lite_checkbox', 'a:16:{s:5:"label";s:30:"Sign me up for the newsletter!";s:8:"precheck";i:1;s:3:"css";i:1;s:20:"show_at_comment_form";i:0;s:25:"show_at_registration_form";i:0;s:22:"show_at_multisite_form";i:0;s:23:"show_at_buddypress_form";i:0;s:21:"show_at_bbpress_forms";i:0;s:28:"show_at_woocommerce_checkout";i:0;s:20:"show_at_edd_checkout";i:0;s:5:"lists";a:0:{}s:12:"double_optin";i:1;s:15:"update_existing";i:0;s:17:"replace_interests";i:1;s:12:"send_welcome";i:0;s:20:"woocommerce_position";s:5:"order";}', 'yes'),
(555, 'mc4wp_lite_form', 'a:15:{s:3:"css";s:7:"default";s:6:"markup";s:187:"<p>\n	<label>Email address: </label>\n	<input type="email" id="mc4wp_email" name="EMAIL" placeholder="Your email address" required />\n</p>\n\n<p>\n	<input type="submit" value="Sign up" />\n</p>";s:10:"text_error";s:51:"Oops. Something went wrong. Please try again later.";s:18:"text_invalid_email";s:37:"Please provide a valid email address.";s:23:"text_already_subscribed";s:53:"Given email address is already subscribed, thank you!";s:20:"text_invalid_captcha";s:28:"Please complete the CAPTCHA.";s:27:"text_required_field_missing";s:35:"Please fill in the required fields.";s:8:"redirect";s:0:"";s:5:"lists";a:0:{}s:18:"hide_after_success";i:0;s:12:"double_optin";i:1;s:15:"update_existing";i:0;s:17:"replace_interests";i:1;s:12:"send_welcome";i:0;s:15:"text_subscribed";s:79:"Thank you, your sign-up request was successful! Please check your e-mail inbox.";}', 'yes'),
(556, 'vc_version', '4.5.3', 'yes'),
(557, 'mc4wp_lite_version', '2.3.8', 'yes'),
(559, 'woocommerce_db_version', '2.3.7', 'yes'),
(564, 'woocommerce_language_pack_version', 'a:2:{i:0;s:5:"2.4.4";i:1;s:0:"";}', 'yes'),
(565, '_transient_woocommerce_cache_excluded_uris', 'a:0:{}', 'yes'),
(570, '_transient_timeout_geoip_36.73.68.118', '1440549809', 'no'),
(571, '_transient_geoip_36.73.68.118', 'ID', 'no'),
(572, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(575, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(576, 'wpb_js_composer_license_activation_notified', 'yes', 'yes'),
(580, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(621, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(743, 'widget_archives', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(744, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(746, 'widget_address-widget', 'a:3:{i:1;a:0:{}i:2;a:5:{s:5:"title";s:19:"The Learning Center";s:4:"text";s:303:"Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.";s:7:"address";s:84:"Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta";s:7:"phoneNo";s:18:" +62 823-2960-0100";s:6:"mailId";s:28:"contact@nextin-indonesia.com";}s:12:"_multiwidget";i:1;}', 'yes'),
(747, 'widget_custom_archive', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(748, 'widget_custom_cat', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(749, 'widget_contact-info-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(750, 'widget_about-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(751, 'widget_charity_em_widget', 'a:3:{i:1;a:0:{}i:2;a:11:{s:5:"title";s:26:"The Learning Center Events";s:5:"limit";s:1:"5";s:5:"scope";s:6:"future";s:7:"orderby";s:44:"event_start_date,event_start_time,event_name";s:5:"order";s:3:"ASC";s:8:"category";s:1:"0";s:15:"all_events_text";s:10:"all events";s:6:"format";s:73:"<li>#_EVENTLINK<ul><li>#_EVENTDATES</li><li>#_LOCATIONTOWN</li></ul></li>";s:10:"nolistwrap";b:0;s:10:"all_events";i:0;s:14:"no_events_text";s:18:"<li>No events</li>";}s:12:"_multiwidget";i:1;}', 'yes'),
(752, 'widget_charity_flickr', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(753, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(754, 'widget_social-widget', 'a:3:{i:1;a:0:{}i:2;a:7:{s:5:"title";s:9:"Follow Us";s:8:"facebook";s:40:"https://www.facebook.com/nextinindonesia";s:7:"twitter";s:40:"https://www.facebook.com/nextinindonesia";s:7:"dribble";s:40:"https://www.facebook.com/nextinindonesia";s:9:"pinterest";s:40:"https://www.facebook.com/nextinindonesia";s:5:"gplus";s:40:"https://www.facebook.com/nextinindonesia";s:9:"instagram";s:40:"https://www.facebook.com/nextinindonesia";}s:12:"_multiwidget";i:1;}', 'yes'),
(755, 'widget_twitter-charity', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(756, 'widget_nav_menu', 'a:3:{i:1;a:0:{}i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(757, 'widget_em_locations_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(758, 'widget_em_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(759, 'widget_em_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(760, 'widget_mc4wp_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(761, 'widget_meta', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(762, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(763, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(764, 'widget_rev-slider-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(766, 'widget_search', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(767, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(769, 'widget_woocommerce_widget_cart', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(770, 'widget_woocommerce_layered_nav', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(771, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(772, 'widget_woocommerce_price_filter', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(773, 'widget_woocommerce_product_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(774, 'widget_woocommerce_products', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(775, 'widget_woocommerce_product_search', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(776, 'widget_woocommerce_product_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(777, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(778, 'widget_woocommerce_recent_reviews', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(779, 'widget_woocommerce_top_rated_products', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(955, 'gallery-type_children', 'a:0:{}', 'yes'),
(1015, 'causes-category_children', 'a:0:{}', 'yes'),
(1016, 'causes-location_children', 'a:0:{}', 'yes'),
(1168, 'dbem_thumbnails_enabled', '0', 'yes'),
(1169, 'dbem_js_limit', '0', 'yes'),
(1170, 'dbem_js_limit_general', '0', 'yes'),
(1171, 'dbem_js_limit_search', '', 'yes'),
(1172, 'dbem_js_limit_events_form', '', 'yes'),
(1173, 'dbem_js_limit_edit_bookings', '', 'yes'),
(1174, 'dbem_css_limit', '0', 'yes'),
(1175, 'dbem_css_limit_include', '0', 'yes'),
(1176, 'dbem_css_limit_exclude', '0', 'yes'),
(1177, 'dbem_pro_dev_updates', '0', 'yes'),
(1178, 'dbem_disable_title_rewrites', '0', 'yes'),
(1179, 'dbem_title_html', '', 'yes'),
(1180, 'dbem_events_current_are_past', '0', 'yes'),
(1181, 'dbem_bookings_default_orderby', 'event_name', 'yes'),
(1182, 'dbem_bookings_default_order', 'ASC', 'yes'),
(1183, 'dbem_edit_events_page', '', 'yes'),
(1184, 'dbem_edit_locations_page', '', 'yes'),
(1185, 'dbem_edit_bookings_page', '', 'yes'),
(1186, 'dbem_time_24h', '0', 'yes'),
(1187, 'dbem_display_calendar_day_single', '0', 'yes'),
(1188, 'dbem_bookings_tickets_show_member_tickets', '0', 'yes'),
(1189, 'dbem_mail_sender_address', '', 'yes'),
(1190, 'dbem_smtp_username', 'admin', 'yes'),
(1191, 'dbem_smtp_password', 'admin', 'yes'),
(1273, 'portfolio-type_children', 'a:0:{}', 'yes'),
(1320, 'event-categories_children', 'a:0:{}', 'yes'),
(1326, 'em_last_modified', '1440656587', 'yes'),
(1400, 'sidebars_widgets', 'a:16:{s:19:"wp_inactive_widgets";a:0:{}s:23:"default-charity-section";a:0:{}s:22:"footer-one-sidebar-one";a:1:{i:0;s:16:"address-widget-2";}s:22:"footer-one-sidebar-two";a:1:{i:0;s:19:"charity_em_widget-2";}s:24:"footer-one-sidebar-three";a:2:{i:0;s:15:"social-widget-2";i:1;s:10:"nav_menu-2";}s:22:"footer-two-sidebar-one";a:0:{}s:22:"footer-two-sidebar-two";a:0:{}s:24:"footer-two-sidebar-three";a:0:{}s:23:"footer-two-sidebar-four";a:0:{}s:24:"footer-three-sidebar-one";a:0:{}s:24:"footer-three-sidebar-two";a:0:{}s:26:"footer-three-sidebar-three";a:0:{}s:21:"causes-wisget-section";a:0:{}s:12:"charity-shop";a:0:{}s:20:"event-widget-section";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(1919, '_transient_timeout_wc_low_stock_count', '1442550107', 'no'),
(1920, '_transient_wc_low_stock_count', '0', 'no'),
(1921, '_transient_timeout_wc_outofstock_count', '1442550107', 'no'),
(1922, '_transient_wc_outofstock_count', '0', 'no'),
(2117, 'dbem_small_calendar_long_events', '0', 'yes'),
(2120, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(2123, 'woocommerce_admin_notices', 'a:3:{i:0;s:7:"install";i:1;s:6:"update";i:2;s:14:"template_files";}', 'yes'),
(2126, 'woocommerce_version', '2.4.4', 'yes'),
(2133, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(2210, 'revslider-latest-version', '5.0.4.1', 'yes'),
(2402, 'category_children', 'a:0:{}', 'yes'),
(2444, '_site_transient_timeout_available_translations', '1440157365', 'yes'),
(2445, '_site_transient_available_translations', 'a:63:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-12 18:38:38";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3-RC/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 19:15:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 08:45:05";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 04:19:00";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 09:17:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 10:17:07";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-12 10:52:32";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 10:16:51";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 16:32:48";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-13 23:56:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 20:57:21";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:20:50";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 18:40:22";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 00:53:46";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-05 20:09:08";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:44:49";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 09:17:58";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 10:16:37";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.7/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 15:13:38";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 22:00:54";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 12:47:55";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:46:00";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:41:23";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 06:13:38";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 09:57:21";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:59:51";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 07:48:28";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.7/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:45:19";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 06:57:09";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:59:52";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.7/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 10:43:24";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 02:24:55";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:44:05";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 13:19:05";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 16:32:50";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.7/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:16:31";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 10:43:45";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 14:10:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 05:50:57";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.7/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 23:59:25";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 19:10:20";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 00:50:06";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(2447, 'WPLANG', '', 'yes'),
(2450, '_transient_timeout_settings_errors', '1440146624', 'no'),
(2451, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(2509, '_transient_timeout_geoip_::1', '1441247361', 'no'),
(2510, '_transient_geoip_::1', '', 'no'),
(2511, '_transient_timeout_external_ip_address_::1', '1441247363', 'no'),
(2512, '_transient_external_ip_address_::1', '36.79.133.80', 'no'),
(2513, '_transient_timeout_geoip_36.79.133.80', '1441247364', 'no'),
(2514, '_transient_geoip_36.79.133.80', 'ID', 'no'),
(2529, '_site_transient_timeout_browser_229c156fb8caef6704dc9bd068964647', '1441247586', 'yes'),
(2530, '_site_transient_browser_229c156fb8caef6704dc9bd068964647', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.157";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2818, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1440667429', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2819, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(3196, '_transient_timeout_wc_admin_report', '1441082117', 'no'),
(3197, '_transient_wc_admin_report', 'a:1:{s:32:"cfd621cff27bba01f4f7c6b2fb1dc1ae";a:0:{}}', 'no'),
(3199, '_transient_timeout_plugin_slugs', '1441082124', 'no'),
(3200, '_transient_plugin_slugs', 'a:11:{i:0;s:19:"akismet/akismet.php";i:1;s:29:"charity-apps/charity-apps.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:4;s:19:"easypay/easypay.php";i:5;s:33:"events-manager/events-manager.php";i:6;s:9:"hello.php";i:7;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:8;s:23:"revslider/revslider.php";i:9;s:27:"woocommerce/woocommerce.php";i:10;s:27:"js_composer/js_composer.php";}', 'no'),
(3201, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1441038925', 'no'),
(3202, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(3665, '_site_transient_timeout_theme_roots', '1441090839', 'yes'),
(3666, '_site_transient_theme_roots', 'a:4:{s:7:"charity";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(3669, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1441089051;s:8:"response";a:2:{s:37:"mailchimp-for-wp/mailchimp-for-wp.php";O:8:"stdClass":6:{s:2:"id";s:5:"41550";s:4:"slug";s:16:"mailchimp-for-wp";s:6:"plugin";s:37:"mailchimp-for-wp/mailchimp-for-wp.php";s:11:"new_version";s:5:"2.3.9";s:3:"url";s:47:"https://wordpress.org/plugins/mailchimp-for-wp/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/mailchimp-for-wp.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.4.6";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.4.6.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.2.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.2.2.zip";}s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";O:8:"stdClass":6:{s:2:"id";s:5:"16507";s:4:"slug";s:36:"contact-form-7-to-database-extension";s:6:"plugin";s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";s:11:"new_version";s:5:"2.9.8";s:3:"url";s:67:"https://wordpress.org/plugins/contact-form-7-to-database-extension/";s:7:"package";s:85:"https://downloads.wordpress.org/plugin/contact-form-7-to-database-extension.2.9.8.zip";}s:33:"events-manager/events-manager.php";O:8:"stdClass":6:{s:2:"id";s:4:"4075";s:4:"slug";s:14:"events-manager";s:6:"plugin";s:33:"events-manager/events-manager.php";s:11:"new_version";s:3:"5.6";s:3:"url";s:45:"https://wordpress.org/plugins/events-manager/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/events-manager.5.6.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3688, 'rewrite_rules', 'a:426:{s:27:"events/(\\d{4}-\\d{2}-\\d{2})$";s:51:"index.php?pagename=events/&calendar_day=$matches[1]";s:13:"events/rss/?$";s:35:"index.php?post_type=event&feed=feed";s:14:"events/feed/?$";s:35:"index.php?post_type=event&feed=feed";s:19:"events/locations/?$";s:19:"index.php?page_id=4";s:20:"events/categories/?$";s:19:"index.php?page_id=5";s:14:"events/tags/?$";s:19:"index.php?page_id=6";s:21:"events/my-bookings/?$";s:19:"index.php?page_id=7";s:18:"events/event/(.+)$";s:63:"index.php?pagename=events/&em_redirect=1&event_slug=$matches[1]";s:21:"events/location/(.+)$";s:66:"index.php?pagename=events/&em_redirect=1&location_slug=$matches[1]";s:21:"events/category/(.+)$";s:66:"index.php?pagename=events/&em_redirect=1&category_slug=$matches[1]";s:9:"events/?$";s:25:"index.php?pagename=events";s:22:"events/([^/]+)/ical/?$";s:34:"index.php?event=$matches[1]&ical=1";s:25:"locations/([^/]+)/ical/?$";s:37:"index.php?location=$matches[1]&ical=1";s:33:"events/categories/([^/]+)/ical/?$";s:45:"index.php?event-categories=$matches[1]&ical=1";s:27:"events/tags/([^/]+)/ical/?$";s:39:"index.php?event-tags=$matches[1]&ical=1";s:24:"locations/([^/]+)/rss/?$";s:36:"index.php?location=$matches[1]&rss=1";s:9:"causes/?$";s:34:"index.php?post_type=charity-causes";s:39:"causes/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=charity-causes&feed=$matches[1]";s:34:"causes/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=charity-causes&feed=$matches[1]";s:26:"causes/page/([0-9]{1,})/?$";s:52:"index.php?post_type=charity-causes&paged=$matches[1]";s:18:"charity-gallery/?$";s:35:"index.php?post_type=charity-gallery";s:48:"charity-gallery/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=charity-gallery&feed=$matches[1]";s:43:"charity-gallery/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=charity-gallery&feed=$matches[1]";s:35:"charity-gallery/page/([0-9]{1,})/?$";s:53:"index.php?post_type=charity-gallery&paged=$matches[1]";s:20:"charity-portfolio/?$";s:37:"index.php?post_type=charity-portfolio";s:50:"charity-portfolio/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=charity-portfolio&feed=$matches[1]";s:45:"charity-portfolio/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=charity-portfolio&feed=$matches[1]";s:37:"charity-portfolio/page/([0-9]{1,})/?$";s:55:"index.php?post_type=charity-portfolio&paged=$matches[1]";s:20:"charity-our-works/?$";s:37:"index.php?post_type=charity-our-works";s:50:"charity-our-works/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=charity-our-works&feed=$matches[1]";s:45:"charity-our-works/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=charity-our-works&feed=$matches[1]";s:37:"charity-our-works/page/([0-9]{1,})/?$";s:55:"index.php?post_type=charity-our-works&paged=$matches[1]";s:22:"charity_our_mission/?$";s:39:"index.php?post_type=charity_our_mission";s:52:"charity_our_mission/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=charity_our_mission&feed=$matches[1]";s:47:"charity_our_mission/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=charity_our_mission&feed=$matches[1]";s:39:"charity_our_mission/page/([0-9]{1,})/?$";s:57:"index.php?post_type=charity_our_mission&paged=$matches[1]";s:15:"charity_help/?$";s:32:"index.php?post_type=charity_help";s:45:"charity_help/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=charity_help&feed=$matches[1]";s:40:"charity_help/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=charity_help&feed=$matches[1]";s:32:"charity_help/page/([0-9]{1,})/?$";s:50:"index.php?post_type=charity_help&paged=$matches[1]";s:14:"charity_faq/?$";s:31:"index.php?post_type=charity_faq";s:44:"charity_faq/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=charity_faq&feed=$matches[1]";s:39:"charity_faq/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=charity_faq&feed=$matches[1]";s:31:"charity_faq/page/([0-9]{1,})/?$";s:49:"index.php?post_type=charity_faq&paged=$matches[1]";s:14:"testimonial/?$";s:31:"index.php?post_type=testimonial";s:44:"testimonial/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:39:"testimonial/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:31:"testimonial/page/([0-9]{1,})/?$";s:49:"index.php?post_type=testimonial&paged=$matches[1]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:12:"locations/?$";s:28:"index.php?post_type=location";s:42:"locations/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=location&feed=$matches[1]";s:37:"locations/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=location&feed=$matches[1]";s:29:"locations/page/([0-9]{1,})/?$";s:46:"index.php?post_type=location&paged=$matches[1]";s:39:"events/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:34:"events/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:26:"events/page/([0-9]{1,})/?$";s:43:"index.php?post_type=event&paged=$matches[1]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"causes/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"causes/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"causes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"causes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"causes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"causes/([^/]+)/trackback/?$";s:41:"index.php?charity-causes=$matches[1]&tb=1";s:47:"causes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?charity-causes=$matches[1]&feed=$matches[2]";s:42:"causes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?charity-causes=$matches[1]&feed=$matches[2]";s:35:"causes/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?charity-causes=$matches[1]&paged=$matches[2]";s:42:"causes/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?charity-causes=$matches[1]&cpage=$matches[2]";s:32:"causes/([^/]+)/wc-api(/(.*))?/?$";s:55:"index.php?charity-causes=$matches[1]&wc-api=$matches[3]";s:38:"causes/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"causes/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:27:"causes/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?charity-causes=$matches[1]&page=$matches[2]";s:23:"causes/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"causes/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"causes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"causes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"causes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"causes-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?causes-category=$matches[1]&feed=$matches[2]";s:47:"causes-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?causes-category=$matches[1]&feed=$matches[2]";s:40:"causes-type/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?causes-category=$matches[1]&paged=$matches[2]";s:22:"causes-type/([^/]+)/?$";s:37:"index.php?causes-category=$matches[1]";s:56:"causes-location/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?causes-location=$matches[1]&feed=$matches[2]";s:51:"causes-location/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?causes-location=$matches[1]&feed=$matches[2]";s:44:"causes-location/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?causes-location=$matches[1]&paged=$matches[2]";s:26:"causes-location/([^/]+)/?$";s:37:"index.php?causes-location=$matches[1]";s:43:"charity-gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"charity-gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"charity-gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"charity-gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"charity-gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"charity-gallery/([^/]+)/trackback/?$";s:42:"index.php?charity-gallery=$matches[1]&tb=1";s:56:"charity-gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?charity-gallery=$matches[1]&feed=$matches[2]";s:51:"charity-gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?charity-gallery=$matches[1]&feed=$matches[2]";s:44:"charity-gallery/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?charity-gallery=$matches[1]&paged=$matches[2]";s:51:"charity-gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?charity-gallery=$matches[1]&cpage=$matches[2]";s:41:"charity-gallery/([^/]+)/wc-api(/(.*))?/?$";s:56:"index.php?charity-gallery=$matches[1]&wc-api=$matches[3]";s:47:"charity-gallery/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:58:"charity-gallery/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"charity-gallery/([^/]+)(/[0-9]+)?/?$";s:54:"index.php?charity-gallery=$matches[1]&page=$matches[2]";s:32:"charity-gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"charity-gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"charity-gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"charity-gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"charity-gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"gallery-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?gallery-type=$matches[1]&feed=$matches[2]";s:48:"gallery-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?gallery-type=$matches[1]&feed=$matches[2]";s:41:"gallery-type/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?gallery-type=$matches[1]&paged=$matches[2]";s:23:"gallery-type/([^/]+)/?$";s:34:"index.php?gallery-type=$matches[1]";s:45:"charity-portfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"charity-portfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"charity-portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"charity-portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"charity-portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"charity-portfolio/([^/]+)/trackback/?$";s:44:"index.php?charity-portfolio=$matches[1]&tb=1";s:58:"charity-portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?charity-portfolio=$matches[1]&feed=$matches[2]";s:53:"charity-portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?charity-portfolio=$matches[1]&feed=$matches[2]";s:46:"charity-portfolio/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?charity-portfolio=$matches[1]&paged=$matches[2]";s:53:"charity-portfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?charity-portfolio=$matches[1]&cpage=$matches[2]";s:43:"charity-portfolio/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?charity-portfolio=$matches[1]&wc-api=$matches[3]";s:49:"charity-portfolio/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"charity-portfolio/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"charity-portfolio/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?charity-portfolio=$matches[1]&page=$matches[2]";s:34:"charity-portfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"charity-portfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"charity-portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"charity-portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"charity-portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"portfolio-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?portfolio-type=$matches[1]&feed=$matches[2]";s:50:"portfolio-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?portfolio-type=$matches[1]&feed=$matches[2]";s:43:"portfolio-type/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?portfolio-type=$matches[1]&paged=$matches[2]";s:25:"portfolio-type/([^/]+)/?$";s:36:"index.php?portfolio-type=$matches[1]";s:43:"charity-our-works/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"charity-our-works/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"charity-our-works/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"charity-our-works/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"charity-our-works/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"charity-our-works/(.+?)/trackback/?$";s:44:"index.php?charity-our-works=$matches[1]&tb=1";s:56:"charity-our-works/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?charity-our-works=$matches[1]&feed=$matches[2]";s:51:"charity-our-works/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?charity-our-works=$matches[1]&feed=$matches[2]";s:44:"charity-our-works/(.+?)/page/?([0-9]{1,})/?$";s:57:"index.php?charity-our-works=$matches[1]&paged=$matches[2]";s:51:"charity-our-works/(.+?)/comment-page-([0-9]{1,})/?$";s:57:"index.php?charity-our-works=$matches[1]&cpage=$matches[2]";s:41:"charity-our-works/(.+?)/wc-api(/(.*))?/?$";s:58:"index.php?charity-our-works=$matches[1]&wc-api=$matches[3]";s:47:"charity-our-works/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:58:"charity-our-works/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"charity-our-works/(.+?)(/[0-9]+)?/?$";s:56:"index.php?charity-our-works=$matches[1]&page=$matches[2]";s:47:"charity_our_mission/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"charity_our_mission/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"charity_our_mission/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"charity_our_mission/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"charity_our_mission/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"charity_our_mission/([^/]+)/trackback/?$";s:46:"index.php?charity_our_mission=$matches[1]&tb=1";s:60:"charity_our_mission/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?charity_our_mission=$matches[1]&feed=$matches[2]";s:55:"charity_our_mission/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?charity_our_mission=$matches[1]&feed=$matches[2]";s:48:"charity_our_mission/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?charity_our_mission=$matches[1]&paged=$matches[2]";s:55:"charity_our_mission/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?charity_our_mission=$matches[1]&cpage=$matches[2]";s:45:"charity_our_mission/([^/]+)/wc-api(/(.*))?/?$";s:60:"index.php?charity_our_mission=$matches[1]&wc-api=$matches[3]";s:51:"charity_our_mission/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:62:"charity_our_mission/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:40:"charity_our_mission/([^/]+)(/[0-9]+)?/?$";s:58:"index.php?charity_our_mission=$matches[1]&page=$matches[2]";s:36:"charity_our_mission/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"charity_our_mission/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"charity_our_mission/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"charity_our_mission/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"charity_our_mission/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"charity_help/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"charity_help/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"charity_help/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"charity_help/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"charity_help/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"charity_help/(.+?)/trackback/?$";s:39:"index.php?charity_help=$matches[1]&tb=1";s:51:"charity_help/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?charity_help=$matches[1]&feed=$matches[2]";s:46:"charity_help/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?charity_help=$matches[1]&feed=$matches[2]";s:39:"charity_help/(.+?)/page/?([0-9]{1,})/?$";s:52:"index.php?charity_help=$matches[1]&paged=$matches[2]";s:46:"charity_help/(.+?)/comment-page-([0-9]{1,})/?$";s:52:"index.php?charity_help=$matches[1]&cpage=$matches[2]";s:36:"charity_help/(.+?)/wc-api(/(.*))?/?$";s:53:"index.php?charity_help=$matches[1]&wc-api=$matches[3]";s:42:"charity_help/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:53:"charity_help/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:31:"charity_help/(.+?)(/[0-9]+)?/?$";s:51:"index.php?charity_help=$matches[1]&page=$matches[2]";s:39:"charity_faq/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"charity_faq/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"charity_faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"charity_faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"charity_faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"charity_faq/([^/]+)/trackback/?$";s:38:"index.php?charity_faq=$matches[1]&tb=1";s:52:"charity_faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?charity_faq=$matches[1]&feed=$matches[2]";s:47:"charity_faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?charity_faq=$matches[1]&feed=$matches[2]";s:40:"charity_faq/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?charity_faq=$matches[1]&paged=$matches[2]";s:47:"charity_faq/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?charity_faq=$matches[1]&cpage=$matches[2]";s:37:"charity_faq/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?charity_faq=$matches[1]&wc-api=$matches[3]";s:43:"charity_faq/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"charity_faq/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"charity_faq/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?charity_faq=$matches[1]&page=$matches[2]";s:28:"charity_faq/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"charity_faq/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"charity_faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"charity_faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"charity_faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"testimonial/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"testimonial/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"testimonial/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:52:"testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:47:"testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:40:"testimonial/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:47:"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:37:"testimonial/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?testimonial=$matches[1]&wc-api=$matches[3]";s:43:"testimonial/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"testimonial/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"testimonial/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:28:"testimonial/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"testimonial/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"events/tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?event-tags=$matches[1]&feed=$matches[2]";s:47:"events/tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?event-tags=$matches[1]&feed=$matches[2]";s:40:"events/tags/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?event-tags=$matches[1]&paged=$matches[2]";s:22:"events/tags/([^/]+)/?$";s:32:"index.php?event-tags=$matches[1]";s:56:"events/categories/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?event-categories=$matches[1]&feed=$matches[2]";s:51:"events/categories/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?event-categories=$matches[1]&feed=$matches[2]";s:44:"events/categories/(.+?)/page/?([0-9]{1,})/?$";s:56:"index.php?event-categories=$matches[1]&paged=$matches[2]";s:26:"events/categories/(.+?)/?$";s:38:"index.php?event-categories=$matches[1]";s:37:"locations/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"locations/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"locations/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"locations/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"locations/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"locations/([^/]+)/trackback/?$";s:35:"index.php?location=$matches[1]&tb=1";s:50:"locations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?location=$matches[1]&feed=$matches[2]";s:45:"locations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?location=$matches[1]&feed=$matches[2]";s:38:"locations/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?location=$matches[1]&paged=$matches[2]";s:45:"locations/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?location=$matches[1]&cpage=$matches[2]";s:35:"locations/([^/]+)/wc-api(/(.*))?/?$";s:49:"index.php?location=$matches[1]&wc-api=$matches[3]";s:41:"locations/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"locations/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"locations/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?location=$matches[1]&page=$matches[2]";s:26:"locations/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"locations/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"locations/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"locations/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"locations/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"events/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:47:"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:42:"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:35:"events/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:42:"events/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:32:"events/([^/]+)/wc-api(/(.*))?/?$";s:46:"index.php?event=$matches[1]&wc-api=$matches[3]";s:38:"events/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"events/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:27:"events/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:23:"events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:28:"product/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"product_variation/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"shop_order_refund/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=11&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=646 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 8, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(2, 8, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:35:"[your-name] <kalikautsar@yahoo.com>";s:4:"body";s:178:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on The Learning Center (http://localhost/drpp)";s:9:"recipient";s:21:"kalikautsar@yahoo.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(3, 8, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:43:"The Learning Center <kalikautsar@yahoo.com>";s:4:"body";s:120:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on The Learning Center (http://localhost/drpp)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:31:"Reply-To: kalikautsar@yahoo.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 8, '_messages', 'a:6:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:31:"Please fill the required field.";}'),
(5, 8, '_additional_settings', ''),
(6, 8, '_locale', 'en_US'),
(7, 9, '_wp_attached_file', '2015/08/logo-The-Learning-Center-Diapositif.png'),
(8, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:167;s:6:"height";i:167;s:4:"file";s:47:"2015/08/logo-The-Learning-Center-Diapositif.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"logo-The-Learning-Center-Diapositif-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:15:"charity_mission";a:4:{s:4:"file";s:45:"logo-The-Learning-Center-Diapositif-64x65.png";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:45:"logo-The-Learning-Center-Diapositif-98x98.png";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(9, 10, '_wp_attached_file', '2015/08/logo-The-Learning-Center-Putih.png'),
(10, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:653;s:6:"height";i:121;s:4:"file";s:42:"2015/08/logo-The-Learning-Center-Putih.png";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"logo-The-Learning-Center-Putih-150x121.png";s:5:"width";i:150;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:41:"logo-The-Learning-Center-Putih-300x56.png";s:5:"width";i:300;s:6:"height";i:56;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"logo-The-Learning-Center-Putih-180x121.png";s:5:"width";i:180;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"logo-The-Learning-Center-Putih-300x121.png";s:5:"width";i:300;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:42:"logo-The-Learning-Center-Putih-600x121.png";s:5:"width";i:600;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:15:"charity_mission";a:4:{s:4:"file";s:40:"logo-The-Learning-Center-Putih-64x65.png";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:9:"chy_index";a:4:{s:4:"file";s:42:"logo-The-Learning-Center-Putih-360x121.png";s:5:"width";i:360;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:8:"chy_thmb";a:4:{s:4:"file";s:42:"logo-The-Learning-Center-Putih-360x121.png";s:5:"width";i:360;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:42:"logo-The-Learning-Center-Putih-600x121.png";s:5:"width";i:600;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:40:"logo-The-Learning-Center-Putih-98x98.png";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:42:"logo-The-Learning-Center-Putih-553x121.png";s:5:"width";i:553;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:16:"charity_our_work";a:4:{s:4:"file";s:42:"logo-The-Learning-Center-Putih-263x121.png";s:5:"width";i:263;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(11, 11, '_edit_last', '1'),
(12, 11, '_wp_page_template', 'charity-home-one.php'),
(13, 11, '_wpb_vc_js_status', 'false'),
(14, 11, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(15, 11, 'slide_template', 'default'),
(16, 11, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(17, 11, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(18, 11, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(19, 11, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(20, 11, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(21, 11, 'helpicon', 'a:4:{s:14:"helpicon_group";a:2:{i:0;a:3:{s:8:"helpicon";s:71:"http://localhost/drpp4/wp-content/uploads/2015/08/Icon-Consultation.png";s:9:"helptitle";s:12:"Consultation";s:11:"helpcontent";s:303:"Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.";}i:1;a:3:{s:8:"helpicon";s:75:"http://localhost/drpp4/wp-content/uploads/2015/08/Icon-Online-Symposium.png";s:9:"helptitle";s:9:"Symposium";s:11:"helpcontent";s:303:"Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.";}}s:16:"help-video-image";s:58:"http://localhost/drpp4/wp-content/uploads/2015/08/Book.jpg";s:10:"help-video";s:122:"<iframe width="560" height="315" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";s:16:"shortdescription";s:303:"Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.";}'),
(22, 11, 'homeslider', 'a:1:{s:15:"slidershortcode";s:17:"[rev_slider home]";}'),
(23, 11, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(24, 11, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(25, 11, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(26, 11, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(27, 11, '_edit_lock', '1440651610:1'),
(28, 13, '_edit_last', '1'),
(29, 13, '_wp_page_template', 'charity-our-story.php'),
(30, 13, '_wpb_vc_js_status', 'false'),
(31, 13, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(32, 13, 'slide_template', 'default'),
(33, 13, 'breadcrumb', 'a:1:{s:5:"image";s:77:"http://localhost/drpp4/wp-content/uploads/2015/08/Center-Dokter-dokteran2.jpg";}'),
(34, 13, 'our_story', 'a:1:{s:15:"our_story_group";a:2:{i:0;a:1:{s:15:"our_story_image";s:65:"http://localhost/drpp4/wp-content/uploads/2015/08/quote-1-fix.jpg";}i:1;a:1:{s:15:"our_story_image";s:60:"http://localhost/drpp4/wp-content/uploads/2015/08/quote-.jpg";}}}'),
(35, 13, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:303:"Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.";s:14:"our_story_text";s:1884:"Berlatar belakang keinginan untuk berbagi pengalaman dari apa yang kami ketahui dan dapatkan selama ini dalam bidang kelaianan perkembangan dan saraf anak, behavioral (perilaku) anak, pendidikan anak dan juga masalah masalah yang berhubungan dengan minat, bakat dan kreatifitas anak, kami yang tergabung dalam satu tim yang terdiri dari: dokter spesialis saraf anak (pediatic neirologist), dokter spesialis anak, dokter spesialis rehabilitasi medik, dokter spesialis bedah ortopedi anak, dokter spesialis gizi anak, psikolog perkembangan anak membuka portal sebagai media konsultasi online tentang kelainan perkembangan dan saraf anak. Kami yang tergabung dalam satu kesempatan, juga ingin berbagi pengetahuan dari apa yang kami dapatkan selama ini buat para orang tua, guru, profesional lain yang berkecimpung dalam masalah perkembangan anak, kelaianan perkembangan dan saraf anak dan juga masalah masalah yang berhubungan dengan pendidikan anak.\r\n\r\nTim kami mengelola 3 tempat terapi: (Child Development Center) Rumah Sakit Santosa Bandung International Hospital, Indigrow Child Development Center, Kidz Potentia-Child development and dyslexia Center. Selain itu, kami bekerja sama erat dengan beberapa Center kelainan perkembangan anak di luar negeri (Persatuan dyslexia Malaysia, Segawa Neurological Cilinic Tokyo, Dyslexia Association of Singapore) dan melaksanakan berbagai simposium, seminar serta work shop di bidang kelainan Perkembangan dan Saraf anak.\r\n\r\nKonsultasi online yang kami lakukan, terbuka bagi siapa saja yang ingin melakukan komunikasi dengan kami untuk semua hal yang berhubungan dengan perkembangan anak, kelainan perkembangan dan saraf anak. Kami sangat berharap dapat terjalinnya hubungan yang erat antara kami dan semua individu yang mempunyai keseminatan yang sama dibidang perkembangan dan kelaian perkembangan dan saraf anak. Salam perkenalan dari kami.";}'),
(36, 13, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(37, 13, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(38, 13, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(39, 13, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(40, 13, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(41, 13, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(42, 13, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(43, 13, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(44, 13, '_edit_lock', '1440655368:1'),
(45, 15, '_edit_last', '1'),
(46, 15, '_wp_page_template', 'default'),
(47, 15, '_wpb_vc_js_status', 'false'),
(48, 15, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(49, 15, 'slide_template', 'default'),
(50, 15, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(51, 15, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(52, 15, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(53, 15, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(54, 15, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(55, 15, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(56, 15, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(57, 15, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(58, 15, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(59, 15, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(60, 15, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(61, 15, '_edit_lock', '1439949174:1'),
(62, 17, '_edit_last', '1'),
(63, 17, '_wp_page_template', 'charity-blog.php'),
(64, 17, '_wpb_vc_js_status', 'false'),
(65, 17, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(66, 17, 'slide_template', 'default'),
(67, 17, 'breadcrumb', 'a:1:{s:5:"image";s:82:"http://localhost/drpp4/wp-content/uploads/2015/08/Center-Orang-Depan-Komputer1.jpg";}'),
(68, 17, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(69, 17, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(70, 17, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(71, 17, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(72, 17, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(73, 17, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(74, 17, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(75, 17, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(76, 17, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(77, 17, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(78, 17, '_edit_lock', '1440655564:1'),
(79, 19, '_edit_last', '1'),
(80, 19, '_wp_page_template', 'charity-gallery.php'),
(81, 19, '_wpb_vc_js_status', 'false'),
(82, 19, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(83, 19, 'slide_template', 'default'),
(84, 19, 'breadcrumb', 'a:1:{s:5:"image";s:82:"http://localhost/drpp4/wp-content/uploads/2015/08/Center-Orang-Depan-Komputer1.jpg";}'),
(85, 19, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(86, 19, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(87, 19, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(88, 19, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(89, 19, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(90, 19, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(91, 19, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(92, 19, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(93, 19, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(94, 19, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(95, 19, '_edit_lock', '1440655923:1'),
(96, 22, '_edit_last', '1'),
(97, 22, '_wp_page_template', 'default'),
(98, 22, '_wpb_vc_js_status', 'false'),
(99, 22, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(100, 22, 'slide_template', 'default'),
(101, 22, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(102, 22, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(103, 22, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(104, 22, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(105, 22, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(106, 22, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(107, 22, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(108, 22, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(109, 22, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(110, 22, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(111, 22, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(112, 22, '_edit_lock', '1439945232:1'),
(113, 24, '_edit_last', '1'),
(114, 24, '_wp_page_template', 'charity-portfolio.php'),
(115, 24, '_wpb_vc_js_status', 'false'),
(116, 24, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(117, 24, 'slide_template', 'default'),
(118, 24, 'breadcrumb', 'a:1:{s:5:"image";s:74:"http://localhost/drpp4/wp-content/uploads/2015/08/Center-Laboratorium1.jpg";}'),
(119, 24, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(120, 24, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(121, 24, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(122, 24, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(123, 24, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(124, 24, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(125, 24, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(126, 24, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(127, 24, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(128, 24, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(129, 24, '_edit_lock', '1440656483:1'),
(130, 28, '_edit_last', '1'),
(131, 28, '_wp_page_template', 'default'),
(132, 28, '_wpb_vc_js_status', 'false'),
(133, 28, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(134, 28, 'slide_template', 'default'),
(135, 28, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(136, 28, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(137, 28, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(138, 28, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(139, 28, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(140, 28, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(141, 28, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(142, 28, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(143, 28, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(144, 28, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(145, 28, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(146, 28, '_edit_lock', '1439945304:1'),
(147, 30, '_edit_last', '1'),
(148, 30, '_wp_page_template', 'charity-contact-us.php'),
(149, 30, '_wpb_vc_js_status', 'false'),
(150, 30, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(151, 30, 'slide_template', 'default'),
(152, 30, 'breadcrumb', 'a:1:{s:5:"image";s:77:"http://localhost/drpp4/wp-content/uploads/2015/08/Center-Dokter-dokteran2.jpg";}'),
(153, 30, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(154, 30, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(155, 30, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(156, 30, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:46:"[contact-form-7 id="8" title="Contact form 1"]";}'),
(157, 30, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(158, 30, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(159, 30, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(160, 30, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(161, 30, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(162, 30, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(163, 30, '_edit_lock', '1440665947:1'),
(164, 32, '_menu_item_type', 'custom'),
(165, 32, '_menu_item_menu_item_parent', '0'),
(166, 32, '_menu_item_object_id', '32'),
(167, 32, '_menu_item_object', 'custom'),
(168, 32, '_menu_item_target', ''),
(169, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 32, '_menu_item_xfn', ''),
(171, 32, '_menu_item_url', 'http://localhost/drpp/'),
(172, 32, '_menu_item_orphaned', '1439945572'),
(173, 33, '_menu_item_type', 'post_type'),
(174, 33, '_menu_item_menu_item_parent', '43'),
(175, 33, '_menu_item_object_id', '28'),
(176, 33, '_menu_item_object', 'page'),
(177, 33, '_menu_item_target', ''),
(178, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(179, 33, '_menu_item_xfn', ''),
(180, 33, '_menu_item_url', ''),
(182, 34, '_menu_item_type', 'post_type'),
(183, 34, '_menu_item_menu_item_parent', '0'),
(184, 34, '_menu_item_object_id', '30'),
(185, 34, '_menu_item_object', 'page'),
(186, 34, '_menu_item_target', ''),
(187, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(188, 34, '_menu_item_xfn', ''),
(189, 34, '_menu_item_url', ''),
(191, 35, '_menu_item_type', 'post_type'),
(192, 35, '_menu_item_menu_item_parent', '42'),
(193, 35, '_menu_item_object_id', '19'),
(194, 35, '_menu_item_object', 'page'),
(195, 35, '_menu_item_target', ''),
(196, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(197, 35, '_menu_item_xfn', ''),
(198, 35, '_menu_item_url', ''),
(200, 36, '_menu_item_type', 'post_type'),
(201, 36, '_menu_item_menu_item_parent', '0'),
(202, 36, '_menu_item_object_id', '11'),
(203, 36, '_menu_item_object', 'page'),
(204, 36, '_menu_item_target', ''),
(205, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(206, 36, '_menu_item_xfn', ''),
(207, 36, '_menu_item_url', ''),
(209, 37, '_menu_item_type', 'post_type'),
(210, 37, '_menu_item_menu_item_parent', '43'),
(211, 37, '_menu_item_object_id', '24'),
(212, 37, '_menu_item_object', 'page'),
(213, 37, '_menu_item_target', ''),
(214, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 37, '_menu_item_xfn', ''),
(216, 37, '_menu_item_url', ''),
(227, 39, '_menu_item_type', 'post_type'),
(228, 39, '_menu_item_menu_item_parent', '42'),
(229, 39, '_menu_item_object_id', '17'),
(230, 39, '_menu_item_object', 'page'),
(231, 39, '_menu_item_target', ''),
(232, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(233, 39, '_menu_item_xfn', ''),
(234, 39, '_menu_item_url', ''),
(236, 40, '_menu_item_type', 'post_type'),
(237, 40, '_menu_item_menu_item_parent', '41'),
(238, 40, '_menu_item_object_id', '13'),
(239, 40, '_menu_item_object', 'page'),
(240, 40, '_menu_item_target', ''),
(241, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(242, 40, '_menu_item_xfn', ''),
(243, 40, '_menu_item_url', ''),
(245, 41, '_menu_item_type', 'custom'),
(246, 41, '_menu_item_menu_item_parent', '0'),
(247, 41, '_menu_item_object_id', '41'),
(248, 41, '_menu_item_object', 'custom'),
(249, 41, '_menu_item_target', ''),
(250, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 41, '_menu_item_xfn', ''),
(252, 41, '_menu_item_url', '#'),
(254, 42, '_menu_item_type', 'custom'),
(255, 42, '_menu_item_menu_item_parent', '0'),
(256, 42, '_menu_item_object_id', '42'),
(257, 42, '_menu_item_object', 'custom'),
(258, 42, '_menu_item_target', ''),
(259, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(260, 42, '_menu_item_xfn', ''),
(261, 42, '_menu_item_url', '#'),
(263, 43, '_menu_item_type', 'custom'),
(264, 43, '_menu_item_menu_item_parent', '0'),
(265, 43, '_menu_item_object_id', '43'),
(266, 43, '_menu_item_object', 'custom'),
(267, 43, '_menu_item_target', ''),
(268, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(269, 43, '_menu_item_xfn', ''),
(270, 43, '_menu_item_url', '#'),
(272, 44, '_menu_item_type', 'post_type'),
(273, 44, '_menu_item_menu_item_parent', '42'),
(274, 44, '_menu_item_object_id', '3'),
(275, 44, '_menu_item_object', 'page'),
(276, 44, '_menu_item_target', ''),
(277, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(278, 44, '_menu_item_xfn', ''),
(279, 44, '_menu_item_url', ''),
(281, 45, '_edit_last', '1'),
(282, 45, '_wp_page_template', 'charity-causes.php'),
(283, 45, '_wpb_vc_js_status', 'false'),
(284, 45, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(285, 45, 'slide_template', 'default'),
(286, 45, 'breadcrumb', 'a:1:{s:5:"image";s:77:"http://localhost/drpp4/wp-content/uploads/2015/08/Center-Dokter-dokteran2.jpg";}'),
(287, 45, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(288, 45, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(289, 45, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(290, 45, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(291, 45, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(292, 45, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(293, 45, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(294, 45, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(295, 45, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(296, 45, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(297, 45, '_edit_lock', '1440655500:1'),
(298, 36, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(299, 41, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(300, 40, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(302, 42, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(303, 39, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(304, 35, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(305, 44, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(306, 43, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(307, 37, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(308, 33, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(309, 34, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(310, 47, '_menu_item_type', 'post_type'),
(311, 47, '_menu_item_menu_item_parent', '41'),
(312, 47, '_menu_item_object_id', '45'),
(313, 47, '_menu_item_object', 'page'),
(314, 47, '_menu_item_target', ''),
(315, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(316, 47, '_menu_item_xfn', ''),
(317, 47, '_menu_item_url', ''),
(319, 47, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(320, 48, '_wp_attached_file', '2015/08/Keunggulan-Online-Consultation.jpg'),
(321, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1650;s:6:"height";i:1100;s:4:"file";s:42:"2015/08/Keunggulan-Online-Consultation.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:43:"Keunggulan-Online-Consultation-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:40:"Keunggulan-Online-Consultation-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:43:"Keunggulan-Online-Consultation-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:40:"Keunggulan-Online-Consultation-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:42:"Keunggulan-Online-Consultation-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(322, 49, '_wp_attached_file', '2015/08/Persuasive-Question.jpg'),
(323, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1650;s:6:"height";i:1100;s:4:"file";s:31:"2015/08/Persuasive-Question.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Persuasive-Question-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Persuasive-Question-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"Persuasive-Question-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"Persuasive-Question-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"Persuasive-Question-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"Persuasive-Question-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:29:"Persuasive-Question-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:31:"Persuasive-Question-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:31:"Persuasive-Question-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:31:"Persuasive-Question-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:31:"Persuasive-Question-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:31:"Persuasive-Question-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:32:"Persuasive-Question-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:29:"Persuasive-Question-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:31:"Persuasive-Question-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:31:"Persuasive-Question-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(324, 50, '_wp_attached_file', '2015/08/Icon-Consultation.png'),
(325, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:284;s:6:"height";i:284;s:4:"file";s:29:"2015/08/Icon-Consultation.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"Icon-Consultation-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"Icon-Consultation-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:15:"charity_mission";a:4:{s:4:"file";s:27:"Icon-Consultation-64x65.png";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:9:"chy_index";a:4:{s:4:"file";s:29:"Icon-Consultation-284x240.png";s:5:"width";i:284;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:8:"chy_thmb";a:4:{s:4:"file";s:29:"Icon-Consultation-284x240.png";s:5:"width";i:284;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:27:"Icon-Consultation-98x98.png";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:29:"Icon-Consultation-284x188.png";s:5:"width";i:284;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:16:"charity_our_work";a:4:{s:4:"file";s:29:"Icon-Consultation-263x175.png";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(326, 51, '_wp_attached_file', '2015/08/Icon-Online-Symposium.png'),
(327, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:284;s:6:"height";i:284;s:4:"file";s:33:"2015/08/Icon-Online-Symposium.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Icon-Online-Symposium-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"Icon-Online-Symposium-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:15:"charity_mission";a:4:{s:4:"file";s:31:"Icon-Online-Symposium-64x65.png";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:9:"chy_index";a:4:{s:4:"file";s:33:"Icon-Online-Symposium-284x240.png";s:5:"width";i:284;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:8:"chy_thmb";a:4:{s:4:"file";s:33:"Icon-Online-Symposium-284x240.png";s:5:"width";i:284;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:31:"Icon-Online-Symposium-98x98.png";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:33:"Icon-Online-Symposium-284x188.png";s:5:"width";i:284;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:16:"charity_our_work";a:4:{s:4:"file";s:33:"Icon-Online-Symposium-263x175.png";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(328, 52, '_wp_attached_file', '2015/08/Book.jpg'),
(329, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:761;s:4:"file";s:16:"2015/08/Book.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"Book-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"Book-300x254.jpg";s:5:"width";i:300;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"Book-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"Book-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"Book-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:14:"Book-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:16:"Book-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:16:"Book-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:16:"Book-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:16:"Book-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:16:"Book-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:16:"Book-900x421.jpg";s:5:"width";i:900;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:14:"Book-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:16:"Book-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:16:"Book-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.399999999999999911182158029987476766109466552734375;s:6:"credit";s:0:"";s:6:"camera";s:15:"Nokia Lumia 710";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1422872388;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";s:17:"0.071428571428571";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(330, 54, '_edit_last', '1'),
(331, 54, '_edit_lock', '1439946381:1'),
(332, 55, '_wp_attached_file', '2015/08/Flyer-depan.png'),
(333, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:874;s:6:"height";i:1240;s:4:"file";s:23:"2015/08/Flyer-depan.png";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Flyer-depan-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"Flyer-depan-211x300.png";s:5:"width";i:211;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:24:"Flyer-depan-722x1024.png";s:5:"width";i:722;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Flyer-depan-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"Flyer-depan-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:23:"Flyer-depan-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:15:"charity_mission";a:4:{s:4:"file";s:21:"Flyer-depan-64x65.png";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:9:"chy_index";a:4:{s:4:"file";s:23:"Flyer-depan-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:8:"chy_thmb";a:4:{s:4:"file";s:23:"Flyer-depan-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:11:"chy_details";a:4:{s:4:"file";s:23:"Flyer-depan-850x626.png";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:9:"image/png";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:23:"Flyer-depan-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:23:"Flyer-depan-849x421.png";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:9:"image/png";}s:19:"charity_causes_full";a:4:{s:4:"file";s:23:"Flyer-depan-874x421.png";s:5:"width";i:874;s:6:"height";i:421;s:9:"mime-type";s:9:"image/png";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:21:"Flyer-depan-98x98.png";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:23:"Flyer-depan-553x188.png";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:16:"charity_our_work";a:4:{s:4:"file";s:23:"Flyer-depan-263x175.png";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(334, 56, '_wp_attached_file', '2015/08/quote-.jpg'),
(335, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1000;s:4:"file";s:18:"2015/08/quote-.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"quote--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"quote--300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"quote--1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"quote--180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"quote--300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"quote--600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:16:"quote--64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:18:"quote--360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:18:"quote--360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:18:"quote--850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:18:"quote--600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:18:"quote--849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:19:"quote--1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:16:"quote--98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:18:"quote--553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:18:"quote--263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(336, 57, '_wp_attached_file', '2015/08/quote-1-fix.jpg'),
(337, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:23:"2015/08/quote-1-fix.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"quote-1-fix-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"quote-1-fix-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"quote-1-fix-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"quote-1-fix-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"quote-1-fix-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"quote-1-fix-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:21:"quote-1-fix-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:23:"quote-1-fix-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:23:"quote-1-fix-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:23:"quote-1-fix-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:23:"quote-1-fix-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:23:"quote-1-fix-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:24:"quote-1-fix-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:21:"quote-1-fix-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:23:"quote-1-fix-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:23:"quote-1-fix-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(338, 54, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(339, 54, 'slide_template', 'default');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(340, 54, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"image";s:19:"charity-meta-images";a:1:{i:0;a:1:{s:23:"upload-gallery-or-image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/Flyer-depan.png";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:0:"";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
(341, 58, '_edit_last', '1'),
(342, 58, '_edit_lock', '1439946428:1'),
(343, 58, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(344, 58, 'slide_template', 'default'),
(345, 58, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"image";s:19:"charity-meta-images";a:1:{i:0;a:1:{s:23:"upload-gallery-or-image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/Flyer-depan.png";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:0:"";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
(346, 61, '_edit_last', '1'),
(347, 61, '_edit_lock', '1439947152:1'),
(350, 61, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(351, 61, 'slide_template', 'default'),
(352, 61, 'gallery_meta', 'a:1:{s:13:"gallery_group";a:1:{i:0;a:1:{s:13:"gallery_image";s:0:"";}}}'),
(353, 61, 'video_meta', 'a:3:{s:11:"video_image";s:0:"";s:20:"charity_you_tube_url";s:0:"";s:17:"charity_viemo_url";s:0:"";}'),
(354, 61, 'audio_meta', 'a:3:{s:9:"audio_ogg";s:0:"";s:9:"audio_mp3";s:0:"";s:9:"audio_wav";s:0:"";}'),
(355, 61, 'quote_meta', 'a:2:{s:10:"quote_text";s:0:"";s:17:"quote_footer_text";s:0:"";}'),
(356, 61, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(357, 61, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(358, 61, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(359, 61, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(360, 61, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(361, 61, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(362, 61, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(363, 61, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(364, 61, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(365, 61, '_thumbnail_id', '57'),
(368, 63, '_edit_last', '1'),
(369, 63, '_edit_lock', '1439947195:1'),
(370, 63, '_thumbnail_id', '57'),
(373, 63, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(374, 63, 'slide_template', 'default'),
(375, 63, 'gallery_meta', 'a:1:{s:13:"gallery_group";a:1:{i:0;a:1:{s:13:"gallery_image";s:0:"";}}}'),
(376, 63, 'video_meta', 'a:3:{s:11:"video_image";s:0:"";s:20:"charity_you_tube_url";s:0:"";s:17:"charity_viemo_url";s:0:"";}'),
(377, 63, 'audio_meta', 'a:3:{s:9:"audio_ogg";s:0:"";s:9:"audio_mp3";s:0:"";s:9:"audio_wav";s:0:"";}'),
(378, 63, 'quote_meta', 'a:2:{s:10:"quote_text";s:0:"";s:17:"quote_footer_text";s:0:"";}'),
(379, 63, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(380, 63, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(381, 63, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(382, 63, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(383, 63, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(384, 63, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(385, 63, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(386, 63, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(387, 63, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(388, 65, '_edit_last', '1'),
(389, 65, '_edit_lock', '1439947264:1'),
(390, 65, '_thumbnail_id', '57'),
(393, 65, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(394, 65, 'slide_template', 'default'),
(395, 65, 'gallery_meta', 'a:1:{s:13:"gallery_group";a:1:{i:0;a:1:{s:13:"gallery_image";s:0:"";}}}'),
(396, 65, 'video_meta', 'a:3:{s:11:"video_image";s:0:"";s:20:"charity_you_tube_url";s:0:"";s:17:"charity_viemo_url";s:0:"";}'),
(397, 65, 'audio_meta', 'a:3:{s:9:"audio_ogg";s:0:"";s:9:"audio_mp3";s:0:"";s:9:"audio_wav";s:0:"";}'),
(398, 65, 'quote_meta', 'a:2:{s:10:"quote_text";s:0:"";s:17:"quote_footer_text";s:0:"";}'),
(399, 65, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(400, 65, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(401, 65, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(402, 65, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(403, 65, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(404, 65, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(405, 65, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(406, 65, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(407, 65, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(408, 67, '_edit_last', '1'),
(409, 67, '_edit_lock', '1439947354:1'),
(410, 67, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(411, 67, 'slide_template', 'default'),
(412, 67, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"image";s:19:"charity-meta-images";a:4:{i:0;a:1:{s:23:"upload-gallery-or-image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg";}i:1;a:1:{s:23:"upload-gallery-or-image";s:59:"http://localhost/drpp/wp-content/uploads/2015/08/quote-.jpg";}i:2;a:1:{s:23:"upload-gallery-or-image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/Flyer-depan.png";}i:3;a:1:{s:23:"upload-gallery-or-image";s:57:"http://localhost/drpp/wp-content/uploads/2015/08/Book.jpg";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:0:"";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
(413, 68, '_edit_last', '1'),
(414, 68, '_edit_lock', '1439947397:1'),
(415, 68, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(416, 68, 'slide_template', 'default'),
(417, 68, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"image";s:19:"charity-meta-images";a:4:{i:0;a:1:{s:23:"upload-gallery-or-image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg";}i:1;a:1:{s:23:"upload-gallery-or-image";s:59:"http://localhost/drpp/wp-content/uploads/2015/08/quote-.jpg";}i:2;a:1:{s:23:"upload-gallery-or-image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/Flyer-depan.png";}i:3;a:1:{s:23:"upload-gallery-or-image";s:57:"http://localhost/drpp/wp-content/uploads/2015/08/Book.jpg";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:0:"";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
(418, 69, '_edit_last', '1'),
(419, 69, '_edit_lock', '1439954530:1'),
(420, 69, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(421, 69, 'slide_template', 'default'),
(422, 69, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"video";s:19:"charity-meta-images";a:1:{i:0;a:1:{s:23:"upload-gallery-or-image";s:0:"";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg";s:21:"txt-youtube-video-url";s:122:"<iframe width="560" height="315" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";s:19:"txt-vimeo-video-url";s:122:"<iframe width="560" height="315" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";}}}'),
(423, 70, '_edit_last', '1'),
(424, 70, '_edit_lock', '1439954082:1'),
(425, 70, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(426, 70, 'slide_template', 'default'),
(427, 70, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"image";s:19:"charity-meta-images";a:1:{i:0;a:1:{s:23:"upload-gallery-or-image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:0:"";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
(428, 71, '_edit_last', '1'),
(429, 71, '_edit_lock', '1439947640:1'),
(430, 71, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(431, 71, 'slide_template', 'default'),
(432, 71, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"video";s:19:"charity-meta-images";a:1:{i:0;a:1:{s:23:"upload-gallery-or-image";s:0:"";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:43:"https://www.youtube.com/watch?v=OZmufS9nKks";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
(433, 72, '_edit_last', '1'),
(434, 72, '_edit_lock', '1439947842:1'),
(435, 72, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(436, 72, 'slide_template', 'default'),
(437, 72, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"video";s:19:"charity-meta-images";a:1:{i:0;a:1:{s:23:"upload-gallery-or-image";s:0:"";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:122:"<iframe width="560" height="315" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
(438, 72, '_wp_trash_meta_status', 'publish'),
(439, 72, '_wp_trash_meta_time', '1439948001'),
(440, 71, '_wp_trash_meta_status', 'publish'),
(441, 71, '_wp_trash_meta_time', '1439948001'),
(442, 74, '_edit_last', '1'),
(443, 74, '_edit_lock', '1439948153:1'),
(444, 74, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(445, 74, 'slide_template', 'default'),
(446, 75, '_edit_last', '1'),
(447, 75, '_edit_lock', '1439948636:1'),
(448, 75, '_thumbnail_id', '57'),
(449, 75, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(450, 75, 'slide_template', 'default'),
(451, 75, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"1";}'),
(452, 75, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(453, 75, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(454, 75, '_wp_trash_meta_status', 'publish'),
(455, 75, '_wp_trash_meta_time', '1439948803'),
(456, 77, '_edit_last', '1'),
(457, 77, '_edit_lock', '1439949006:1'),
(458, 77, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(459, 77, 'slide_template', 'default'),
(460, 78, '_edit_last', '1'),
(461, 78, '_edit_lock', '1439949178:1'),
(462, 78, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(463, 78, 'slide_template', 'default'),
(464, 45, '_wpb_shortcodes_custom_css', '.vc_custom_1439533858156{margin-top: 180px !important;}.vc_custom_1439534043825{margin-left: -60px !important;}.vc_custom_1439533869114{margin-right: -60px !important;}.vc_custom_1439534056914{margin-top: 80px !important;}.vc_custom_1439533878661{margin-top: 180px !important;}.vc_custom_1439534078501{margin-left: -60px !important;}.vc_custom_1439533886339{margin-right: -60px !important;}.vc_custom_1439534089852{margin-top: 80px !important;}.vc_custom_1439533878661{margin-top: 180px !important;}.vc_custom_1439534078501{margin-left: -60px !important;}.vc_custom_1439533908528{margin-right: -60px !important;}.vc_custom_1439534109307{margin-top: 80px !important;}.vc_custom_1439533922304{margin-top: 180px !important;}.vc_custom_1439534117823{margin-left: -60px !important;}'),
(465, 81, '_edit_last', '1'),
(466, 81, '_edit_lock', '1440656469:1'),
(467, 81, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(468, 81, 'slide_template', 'default'),
(469, 82, 'charity_event', 'a:3:{s:17:"event_video_image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg";s:18:"event_you_tube_url";s:43:"https://www.youtube.com/watch?v=OZmufS9nKks";s:15:"event_vimeo_url";s:0:"";}'),
(470, 82, '_location_id', '1'),
(471, 82, '_blog_id', ''),
(472, 82, '_location_address', 'Bulaksumur'),
(473, 82, '_location_town', 'Yogyakarta'),
(474, 82, '_location_state', 'DIY'),
(475, 82, '_location_postcode', '55171'),
(476, 82, '_location_region', ''),
(477, 82, '_location_country', 'ID'),
(478, 82, '_location_latitude', '-7.770501700000001'),
(479, 82, '_location_longitude', '110.38487170000008'),
(480, 82, '_location_status', '1'),
(481, 81, '_event_id', '1'),
(482, 81, '_event_start_time', '00:00:00'),
(483, 81, '_event_end_time', '00:00:00'),
(484, 81, '_event_all_day', '1'),
(485, 81, '_event_start_date', '2015-08-20'),
(486, 81, '_event_end_date', '2015-08-29'),
(487, 81, '_event_rsvp', '0'),
(488, 81, '_event_rsvp_date', ''),
(489, 81, '_event_rsvp_time', '00:00:00'),
(490, 81, '_event_rsvp_spaces', ''),
(491, 81, '_event_spaces', ''),
(492, 81, '_location_id', '1'),
(493, 81, '_recurrence_id', ''),
(494, 81, '_event_status', '1'),
(495, 81, '_event_private', '0'),
(496, 81, '_event_date_created', ''),
(497, 81, '_event_date_modified', ''),
(498, 81, '_blog_id', ''),
(499, 81, '_group_id', '0'),
(500, 81, '_recurrence', '0'),
(501, 81, '_recurrence_interval', ''),
(502, 81, '_recurrence_freq', ''),
(503, 81, '_recurrence_days', '0'),
(504, 81, '_recurrence_byday', ''),
(505, 81, '_recurrence_byweekno', ''),
(506, 81, '_recurrence_rsvp_days', ''),
(507, 81, '_start_ts', '1440028800'),
(508, 81, '_end_ts', '1440806400'),
(510, 81, 'charity_event', 'a:3:{s:17:"event_video_image";s:65:"http://localhost/drpp4/wp-content/uploads/2015/08/quote-1-fix.jpg";s:18:"event_you_tube_url";s:0:"";s:15:"event_vimeo_url";s:0:"";}'),
(511, 3, '_edit_lock', '1440656174:1'),
(512, 3, '_edit_last', '1'),
(513, 3, '_wp_page_template', 'charity-events.php'),
(514, 3, '_wpb_vc_js_status', 'false'),
(515, 3, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(516, 3, 'slide_template', 'default'),
(517, 3, 'breadcrumb', 'a:1:{s:5:"image";s:82:"http://localhost/drpp4/wp-content/uploads/2015/08/Center-Orang-Depan-Komputer1.jpg";}'),
(518, 3, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(519, 3, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(520, 3, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(521, 3, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(522, 3, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(523, 3, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(524, 3, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(525, 3, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(526, 3, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(527, 3, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(528, 84, '_wp_attached_file', '2015/08/2-Foto-M.-Risqi-Utama-Saputra-e1439956200176.jpg'),
(529, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:675;s:4:"file";s:56:"2015/08/2-Foto-M.-Risqi-Utama-Saputra-e1439956200176.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:42:"2-Foto-M.-Risqi-Utama-Saputra-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:39:"2-Foto-M.-Risqi-Utama-Saputra-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:42:"2-Foto-M.-Risqi-Utama-Saputra-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:39:"2-Foto-M.-Risqi-Utama-Saputra-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:41:"2-Foto-M.-Risqi-Utama-Saputra-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:74099370.67000000178813934326171875;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";s:15:"74099370.666667";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:15:"74099370.666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(530, 84, '_edit_lock', '1439953088:1'),
(531, 85, '_edit_last', '1'),
(532, 85, '_edit_lock', '1440656283:1'),
(534, 85, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(535, 85, '_event_id', '2'),
(536, 85, '_event_start_time', '00:00:00'),
(537, 85, '_event_end_time', '00:00:00'),
(538, 85, '_event_all_day', '1'),
(539, 85, '_event_start_date', '2015-08-29'),
(540, 85, '_event_end_date', '2015-08-31'),
(541, 85, '_event_rsvp', '0'),
(542, 85, '_event_rsvp_date', ''),
(543, 85, '_event_rsvp_time', '00:00:00'),
(544, 85, '_event_rsvp_spaces', ''),
(545, 85, '_event_spaces', ''),
(546, 85, '_location_id', '0'),
(547, 85, '_recurrence_id', ''),
(548, 85, '_event_status', '1'),
(549, 85, '_event_private', '0'),
(550, 85, '_event_date_created', ''),
(551, 85, '_event_date_modified', ''),
(552, 85, '_blog_id', ''),
(553, 85, '_group_id', '0'),
(554, 85, '_recurrence', '0'),
(555, 85, '_recurrence_interval', ''),
(556, 85, '_recurrence_freq', ''),
(557, 85, '_recurrence_days', '0'),
(558, 85, '_recurrence_byday', ''),
(559, 85, '_recurrence_byweekno', ''),
(560, 85, '_recurrence_rsvp_days', ''),
(561, 85, '_start_ts', '1440806400'),
(562, 85, '_end_ts', '1440979200'),
(563, 85, 'slide_template', 'default'),
(564, 85, 'charity_event', 'a:3:{s:17:"event_video_image";s:65:"http://localhost/drpp4/wp-content/uploads/2015/08/quote-1-fix.jpg";s:18:"event_you_tube_url";s:123:"<iframe width="1120" height="630" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";s:15:"event_vimeo_url";s:123:"<iframe width="1120" height="630" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";}'),
(565, 89, '_wp_attached_file', '2015/08/950-x-500-Keunggulan-Online-Consultation.jpg'),
(566, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:950;s:6:"height";i:500;s:4:"file";s:52:"2015/08/950-x-500-Keunggulan-Online-Consultation.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-300x158.jpg";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-600x500.jpg";s:5:"width";i:600;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:50:"950-x-500-Keunggulan-Online-Consultation-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-850x500.jpg";s:5:"width";i:850;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-950x421.jpg";s:5:"width";i:950;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:50:"950-x-500-Keunggulan-Online-Consultation-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:52:"950-x-500-Keunggulan-Online-Consultation-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(567, 90, '_wp_attached_file', '2015/08/950-x-500-Persuasive-Question.jpg'),
(568, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:950;s:6:"height";i:500;s:4:"file";s:41:"2015/08/950-x-500-Persuasive-Question.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-300x158.jpg";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-600x500.jpg";s:5:"width";i:600;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:39:"950-x-500-Persuasive-Question-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-850x500.jpg";s:5:"width";i:850;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-950x421.jpg";s:5:"width";i:950;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:39:"950-x-500-Persuasive-Question-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:41:"950-x-500-Persuasive-Question-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(569, 91, '_edit_last', '1'),
(570, 91, '_edit_lock', '1439957643:1'),
(572, 91, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(573, 91, 'slide_template', 'default'),
(574, 91, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(575, 91, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(576, 91, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(578, 84, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:1664;s:6:"height";i:2496;s:4:"file";s:33:"2-Foto-M.-Risqi-Utama-Saputra.jpg";}}'),
(579, 91, '_thumbnail_id', '52'),
(580, 15, '_wp_trash_meta_status', 'publish'),
(581, 15, '_wp_trash_meta_time', '1439956759'),
(582, 92, '_edit_last', '1'),
(583, 92, '_edit_lock', '1439957698:1'),
(584, 92, '_thumbnail_id', '84'),
(585, 92, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(586, 92, 'slide_template', 'default'),
(587, 92, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(588, 92, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(589, 92, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(590, 93, '_edit_last', '1'),
(591, 93, '_edit_lock', '1439960725:1'),
(592, 93, '_thumbnail_id', '84'),
(593, 93, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(594, 93, 'slide_template', 'default'),
(595, 93, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(596, 93, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(597, 93, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(598, 94, '_edit_last', '1'),
(599, 94, '_edit_lock', '1439957786:1'),
(600, 94, '_thumbnail_id', '84'),
(601, 94, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(602, 94, 'slide_template', 'default'),
(603, 94, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(604, 94, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(605, 94, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(606, 95, '_edit_last', '1'),
(607, 95, '_edit_lock', '1439957815:1'),
(608, 95, '_thumbnail_id', '84'),
(609, 95, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(610, 95, 'slide_template', 'default'),
(611, 95, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(612, 95, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(613, 95, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(614, 96, '_wp_attached_file', '2015/08/1650-x-1100-Keunggulan-Online-Consultation.jpg'),
(615, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1650;s:6:"height";i:1100;s:4:"file";s:54:"2015/08/1650-x-1100-Keunggulan-Online-Consultation.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:55:"1650-x-1100-Keunggulan-Online-Consultation-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:52:"1650-x-1100-Keunggulan-Online-Consultation-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:55:"1650-x-1100-Keunggulan-Online-Consultation-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:52:"1650-x-1100-Keunggulan-Online-Consultation-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:54:"1650-x-1100-Keunggulan-Online-Consultation-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(616, 97, '_wp_attached_file', '2015/08/1650-x-1100-Persuasive-Question.jpg'),
(617, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1650;s:6:"height";i:1100;s:4:"file";s:43:"2015/08/1650-x-1100-Persuasive-Question.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"1650-x-1100-Persuasive-Question-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:41:"1650-x-1100-Persuasive-Question-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:44:"1650-x-1100-Persuasive-Question-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:41:"1650-x-1100-Persuasive-Question-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:43:"1650-x-1100-Persuasive-Question-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(620, 99, '_wp_attached_file', '2015/08/Laboratorium.jpg'),
(621, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:24:"2015/08/Laboratorium.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Laboratorium-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Laboratorium-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"Laboratorium-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"Laboratorium-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"Laboratorium-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"Laboratorium-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:22:"Laboratorium-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:24:"Laboratorium-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:24:"Laboratorium-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:24:"Laboratorium-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:24:"Laboratorium-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:24:"Laboratorium-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:25:"Laboratorium-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:22:"Laboratorium-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:24:"Laboratorium-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:24:"Laboratorium-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(622, 100, '_wp_attached_file', '2015/08/Orang-Depan-Komputer.jpg'),
(623, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:32:"2015/08/Orang-Depan-Komputer.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"Orang-Depan-Komputer-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:30:"Orang-Depan-Komputer-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:33:"Orang-Depan-Komputer-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:30:"Orang-Depan-Komputer-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:32:"Orang-Depan-Komputer-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(626, 103, '_wp_attached_file', '2015/08/Center-Laboratorium.jpg'),
(627, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:31:"2015/08/Center-Laboratorium.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Center-Laboratorium-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Center-Laboratorium-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"Center-Laboratorium-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"Center-Laboratorium-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"Center-Laboratorium-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"Center-Laboratorium-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:29:"Center-Laboratorium-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:31:"Center-Laboratorium-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:31:"Center-Laboratorium-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:31:"Center-Laboratorium-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:31:"Center-Laboratorium-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:31:"Center-Laboratorium-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:32:"Center-Laboratorium-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:29:"Center-Laboratorium-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:31:"Center-Laboratorium-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:31:"Center-Laboratorium-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(628, 104, '_wp_attached_file', '2015/08/Center-Orang-Depan-Komputer.jpg'),
(629, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:39:"2015/08/Center-Orang-Depan-Komputer.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:37:"Center-Orang-Depan-Komputer-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:37:"Center-Orang-Depan-Komputer-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:39:"Center-Orang-Depan-Komputer-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(636, 108, '_wp_attached_file', '2015/08/Center-Dokter-dokteran2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(637, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:35:"2015/08/Center-Dokter-dokteran2.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"Center-Dokter-dokteran2-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:33:"Center-Dokter-dokteran2-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:36:"Center-Dokter-dokteran2-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:33:"Center-Dokter-dokteran2-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(638, 109, '_wp_attached_file', '2015/08/Center-Laboratorium1.jpg'),
(639, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:32:"2015/08/Center-Laboratorium1.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Center-Laboratorium1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"Center-Laboratorium1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"Center-Laboratorium1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"Center-Laboratorium1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"Center-Laboratorium1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:32:"Center-Laboratorium1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:30:"Center-Laboratorium1-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:32:"Center-Laboratorium1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:32:"Center-Laboratorium1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:32:"Center-Laboratorium1-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:32:"Center-Laboratorium1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:32:"Center-Laboratorium1-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:33:"Center-Laboratorium1-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:30:"Center-Laboratorium1-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:32:"Center-Laboratorium1-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:32:"Center-Laboratorium1-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(640, 110, '_wp_attached_file', '2015/08/Center-Orang-Depan-Komputer1.jpg'),
(641, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:40:"2015/08/Center-Orang-Depan-Komputer1.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"Center-Orang-Depan-Komputer1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:38:"Center-Orang-Depan-Komputer1-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:41:"Center-Orang-Depan-Komputer1-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:38:"Center-Orang-Depan-Komputer1-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(642, 10, '_edit_lock', '1440644325:1'),
(643, 112, '_wp_attached_file', '2015/08/Foto-Ibuk-dan-dua-anaknya.jpg'),
(644, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:886;s:4:"file";s:37:"2015/08/Foto-Ibuk-dan-dua-anaknya.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-300x222.jpg";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"Foto-Ibuk-dan-dua-anaknya-1024x756.jpg";s:5:"width";i:1024;s:6:"height";i:756;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:35:"Foto-Ibuk-dan-dua-anaknya-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:38:"Foto-Ibuk-dan-dua-anaknya-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:35:"Foto-Ibuk-dan-dua-anaknya-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1300027912;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"100";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(645, 116, '_edit_lock', '1440661021:2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=117 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-08-19 00:35:57', '2015-08-19 00:35:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-08-19 00:35:57', '2015-08-19 00:35:57', '', 0, 'http://localhost/drpp/?p=1', 0, 'post', '', 1),
(3, 1, '2015-08-19 00:40:18', '2015-08-19 00:40:18', '', 'Events', 'CONTENTS', 'publish', 'closed', 'open', '', 'events', '', '', '2015-08-27 06:18:02', '2015-08-27 06:18:02', '', 0, 'http://localhost/drpp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2015-08-19 00:40:19', '2015-08-19 00:40:19', 'CONTENTS', 'Locations', '', 'publish', 'closed', 'open', '', 'locations', '', '', '2015-08-19 00:40:19', '2015-08-19 00:40:19', '', 3, 'http://localhost/drpp/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-08-19 00:40:19', '2015-08-19 00:40:19', 'CONTENTS', 'Categories', '', 'publish', 'closed', 'open', '', 'categories', '', '', '2015-08-19 00:40:19', '2015-08-19 00:40:19', '', 3, 'http://localhost/drpp/?page_id=5', 0, 'page', '', 0),
(6, 1, '2015-08-19 00:40:19', '2015-08-19 00:40:19', 'CONTENTS', 'Tags', '', 'publish', 'closed', 'open', '', 'tags', '', '', '2015-08-19 00:40:19', '2015-08-19 00:40:19', '', 3, 'http://localhost/drpp/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-08-19 00:40:20', '2015-08-19 00:40:20', 'CONTENTS', 'My Bookings', '', 'publish', 'closed', 'open', '', 'my-bookings', '', '', '2015-08-19 00:40:20', '2015-08-19 00:40:20', '', 3, 'http://localhost/drpp/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-08-19 00:41:44', '2015-08-19 00:41:44', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <kalikautsar@yahoo.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on The Learning Center (http://localhost/drpp)\nkalikautsar@yahoo.com\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nThe Learning Center <kalikautsar@yahoo.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on The Learning Center (http://localhost/drpp)\n[your-email]\nReply-To: kalikautsar@yahoo.com\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2015-08-19 00:41:44', '2015-08-19 00:41:44', '', 0, 'http://localhost/drpp/?post_type=wpcf7_contact_form&p=8', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2015-08-19 00:44:21', '2015-08-19 00:44:21', '', 'logo The Learning Center Diapositif', '', 'inherit', 'open', 'closed', '', 'logo-the-learning-center-diapositif', '', '', '2015-08-19 00:44:21', '2015-08-19 00:44:21', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/logo-The-Learning-Center-Diapositif.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2015-08-19 00:44:23', '2015-08-19 00:44:23', '', 'logo The Learning Center Putih', '', 'inherit', 'open', 'closed', '', 'logo-the-learning-center-putih', '', '', '2015-08-19 00:44:23', '2015-08-19 00:44:23', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/logo-The-Learning-Center-Putih.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2015-08-19 00:47:11', '2015-08-19 00:47:11', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-08-27 03:11:43', '2015-08-27 03:11:43', '', 0, 'http://localhost/drpp/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-08-19 00:47:11', '2015-08-19 00:47:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-08-19 00:47:11', '2015-08-19 00:47:11', '', 11, 'http://localhost/drpp/?p=12', 0, 'revision', '', 0),
(13, 1, '2015-08-19 00:47:53', '2015-08-19 00:47:53', '', 'What is The Learning Center?', '', 'publish', 'closed', 'closed', '', 'what-is-the-learning-center', '', '', '2015-08-27 06:04:47', '2015-08-27 06:04:47', '', 0, 'http://localhost/drpp/?page_id=13', 0, 'page', '', 0),
(14, 1, '2015-08-19 00:47:53', '2015-08-19 00:47:53', '', 'What is The Learning Center?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-08-19 00:47:53', '2015-08-19 00:47:53', '', 13, 'http://localhost/drpp/?p=14', 0, 'revision', '', 0),
(15, 1, '2015-08-19 00:48:16', '2015-08-19 00:48:16', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text css_animation="top-to-bottom"]The Learning Center have two main features, consultation and symposium, lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum[/vc_column_text][vc_separator color="grey" align="align_center" style="" border_width="" el_width=""][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="12" alignment="center" border_color="grey" img_link_large="" img_link_target="_self" img_size="600x600" css_animation="left-to-right"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<h2>Consultation</h2>\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][vc_btn title="Register Now!" style="flat" shape="rounded" color="green" size="md" align="inline" i_align="left" i_type="fontawesome" i_icon_fontawesome="fa fa-adjust" i_icon_openiconic="vc-oi vc-oi-dial" i_icon_typicons="typcn typcn-adjust-brightness" i_icon_entypo="entypo-icon entypo-icon-note" i_icon_linecons="vc_li vc_li-heart" button_block="" add_icon="" i_icon_pixelicons="vc_pixel_icon vc_pixel_icon-alert" css_animation="right-to-left"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="11" alignment="center" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="500x500"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<h2>Consultation</h2>\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][vc_btn title="Register Now!" style="flat" shape="rounded" color="green" size="md" align="inline" i_align="left" i_type="fontawesome" i_icon_fontawesome="fa fa-adjust" i_icon_openiconic="vc-oi vc-oi-dial" i_icon_typicons="typcn typcn-adjust-brightness" i_icon_entypo="entypo-icon entypo-icon-note" i_icon_linecons="vc_li vc_li-heart" button_block="" add_icon="" i_icon_pixelicons="vc_pixel_icon vc_pixel_icon-alert" css_animation="right-to-left"][/vc_column][/vc_row]', 'Main Features', '', 'trash', 'closed', 'closed', '', 'main-features', '', '', '2015-08-19 03:59:19', '2015-08-19 03:59:19', '', 0, 'http://localhost/drpp/?page_id=15', 0, 'page', '', 0),
(16, 1, '2015-08-19 00:48:16', '2015-08-19 00:48:16', '', 'Main Features', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2015-08-19 00:48:16', '2015-08-19 00:48:16', '', 15, 'http://localhost/drpp/?p=16', 0, 'revision', '', 0),
(17, 1, '2015-08-19 00:48:36', '2015-08-19 00:48:36', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2015-08-27 06:08:16', '2015-08-27 06:08:16', '', 0, 'http://localhost/drpp/?page_id=17', 0, 'page', '', 0),
(18, 1, '2015-08-19 00:48:36', '2015-08-19 00:48:36', '', 'News', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2015-08-19 00:48:36', '2015-08-19 00:48:36', '', 17, 'http://localhost/drpp/?p=18', 0, 'revision', '', 0),
(19, 1, '2015-08-19 00:49:02', '2015-08-19 00:49:02', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2015-08-27 06:14:10', '2015-08-27 06:14:10', '', 0, 'http://localhost/drpp/?page_id=19', 0, 'page', '', 0),
(20, 1, '2015-08-19 00:49:02', '2015-08-19 00:49:02', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2015-08-19 00:49:02', '2015-08-19 00:49:02', '', 19, 'http://localhost/drpp/?p=20', 0, 'revision', '', 0),
(22, 1, '2015-08-19 00:49:23', '2015-08-19 00:49:23', '', 'Event', '', 'publish', 'closed', 'closed', '', 'event', '', '', '2015-08-19 00:49:23', '2015-08-19 00:49:23', '', 0, 'http://localhost/drpp/?page_id=22', 0, 'page', '', 0),
(23, 1, '2015-08-19 00:49:23', '2015-08-19 00:49:23', '', 'Event', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-08-19 00:49:23', '2015-08-19 00:49:23', '', 22, 'http://localhost/drpp/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-08-19 00:49:51', '2015-08-19 00:49:51', '', 'Journal', '', 'publish', 'closed', 'closed', '', 'journal', '', '', '2015-08-27 06:23:05', '2015-08-27 06:23:05', '', 0, 'http://localhost/drpp/?page_id=24', 0, 'page', '', 0),
(25, 1, '2015-08-19 00:49:51', '2015-08-19 00:49:51', '', 'Journal', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-08-19 00:49:51', '2015-08-19 00:49:51', '', 24, 'http://localhost/drpp/?p=25', 0, 'revision', '', 0),
(26, 1, '2015-08-19 00:50:07', '2015-08-19 00:50:07', '', 'Collaboration', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-08-19 00:50:07', '2015-08-19 00:50:07', '', 24, 'http://localhost/drpp/?p=26', 0, 'revision', '', 0),
(27, 1, '2015-08-19 00:50:19', '2015-08-19 00:50:19', '', 'Journal', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-08-19 00:50:19', '2015-08-19 00:50:19', '', 24, 'http://localhost/drpp/?p=27', 0, 'revision', '', 0),
(28, 1, '2015-08-19 00:50:37', '2015-08-19 00:50:37', '', 'Collaboration', '', 'publish', 'closed', 'closed', '', 'collaboration', '', '', '2015-08-19 00:50:37', '2015-08-19 00:50:37', '', 0, 'http://localhost/drpp/?page_id=28', 0, 'page', '', 0),
(29, 1, '2015-08-19 00:50:37', '2015-08-19 00:50:37', '', 'Collaboration', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-08-19 00:50:37', '2015-08-19 00:50:37', '', 28, 'http://localhost/drpp/?p=29', 0, 'revision', '', 0),
(30, 1, '2015-08-19 00:50:58', '2015-08-19 00:50:58', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta</small></li>\r\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-08-27 09:00:48', '2015-08-27 09:00:48', '', 0, 'http://localhost/drpp/?page_id=30', 0, 'page', '', 0),
(31, 1, '2015-08-19 00:50:58', '2015-08-19 00:50:58', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-08-19 00:50:58', '2015-08-19 00:50:58', '', 30, 'http://localhost/drpp/?p=31', 0, 'revision', '', 0),
(32, 1, '2015-08-19 00:52:50', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-08-19 00:52:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/drpp/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2015-08-19 00:56:24', '2015-08-19 00:56:24', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=33', 11, 'nav_menu_item', '', 0),
(34, 1, '2015-08-19 00:56:24', '2015-08-19 00:56:24', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=34', 12, 'nav_menu_item', '', 0),
(35, 1, '2015-08-19 00:56:22', '2015-08-19 00:56:22', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=35', 7, 'nav_menu_item', '', 0),
(36, 1, '2015-08-19 00:56:18', '2015-08-19 00:56:18', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2015-08-27 06:34:46', '2015-08-27 06:34:46', '', 0, 'http://localhost/drpp/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2015-08-19 00:56:23', '2015-08-19 00:56:23', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=37', 10, 'nav_menu_item', '', 0),
(39, 1, '2015-08-19 00:56:21', '2015-08-19 00:56:21', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=39', 6, 'nav_menu_item', '', 0),
(40, 1, '2015-08-19 00:56:20', '2015-08-19 00:56:20', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2015-08-19 00:56:19', '2015-08-19 00:56:19', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2015-08-27 06:34:46', '2015-08-27 06:34:46', '', 0, 'http://localhost/drpp/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2015-08-19 00:56:21', '2015-08-19 00:56:21', '', 'Media', '', 'publish', 'closed', 'closed', '', 'media', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=42', 5, 'nav_menu_item', '', 0),
(43, 1, '2015-08-19 00:56:23', '2015-08-19 00:56:23', '', 'Research', '', 'publish', 'closed', 'closed', '', 'research', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=43', 9, 'nav_menu_item', '', 0),
(44, 1, '2015-08-19 00:56:23', '2015-08-19 00:56:23', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=44', 8, 'nav_menu_item', '', 0),
(45, 1, '2015-08-19 00:56:14', '2015-08-19 00:56:14', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533858156{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534043825{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533869114{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534056914{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533886339{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534089852{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533908528{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534109307{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533922304{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534117823{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row]', 'Our Expert', '', 'publish', 'closed', 'closed', '', 'our-expert', '', '', '2015-08-27 06:07:06', '2015-08-27 06:07:06', '', 0, 'http://localhost/drpp/?page_id=45', 0, 'page', '', 0),
(46, 1, '2015-08-19 00:56:14', '2015-08-19 00:56:14', '', 'Our Expert', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2015-08-19 00:56:14', '2015-08-19 00:56:14', '', 45, 'http://localhost/drpp/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-08-19 00:56:45', '2015-08-19 00:56:45', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2015-08-27 06:34:47', '2015-08-27 06:34:47', '', 0, 'http://localhost/drpp/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2015-08-19 01:00:23', '2015-08-19 01:00:23', '', 'Keunggulan Online Consultation', '', 'inherit', 'open', 'closed', '', 'keunggulan-online-consultation', '', '', '2015-08-19 01:00:23', '2015-08-19 01:00:23', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/Keunggulan-Online-Consultation.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2015-08-19 01:00:27', '2015-08-19 01:00:27', '', 'Persuasive Question', '', 'inherit', 'open', 'closed', '', 'persuasive-question', '', '', '2015-08-19 01:00:27', '2015-08-19 01:00:27', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/Persuasive-Question.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2015-08-19 01:01:58', '2015-08-19 01:01:58', '', 'Icon Consultation', '', 'inherit', 'open', 'closed', '', 'icon-consultation', '', '', '2015-08-19 01:01:58', '2015-08-19 01:01:58', '', 11, 'http://localhost/drpp/wp-content/uploads/2015/08/Icon-Consultation.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2015-08-19 01:02:01', '2015-08-19 01:02:01', '', 'Icon Online Symposium', '', 'inherit', 'open', 'closed', '', 'icon-online-symposium', '', '', '2015-08-19 01:02:01', '2015-08-19 01:02:01', '', 11, 'http://localhost/drpp/wp-content/uploads/2015/08/Icon-Online-Symposium.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2015-08-19 01:03:26', '2015-08-19 01:03:26', '', 'Book', '', 'inherit', 'open', 'closed', '', 'book', '', '', '2015-08-19 01:03:26', '2015-08-19 01:03:26', '', 11, 'http://localhost/drpp/wp-content/uploads/2015/08/Book.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2015-08-19 01:08:36', '2015-08-19 01:08:36', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.', 'Lorem Ipsum', '', 'publish', 'open', 'closed', '', 'lorem-ipsum', '', '', '2015-08-19 01:08:36', '2015-08-19 01:08:36', '', 0, 'http://localhost/drpp/?post_type=charity-portfolio&#038;p=54', 0, 'charity-portfolio', '', 0),
(55, 1, '2015-08-19 01:07:19', '2015-08-19 01:07:19', '', 'Flyer depan', '', 'inherit', 'open', 'closed', '', 'flyer-depan', '', '', '2015-08-19 01:07:19', '2015-08-19 01:07:19', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/Flyer-depan.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2015-08-19 01:08:06', '2015-08-19 01:08:06', '', 'quote', '', 'inherit', 'open', 'closed', '', 'quote', '', '', '2015-08-19 01:08:06', '2015-08-19 01:08:06', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/quote-.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2015-08-19 01:08:10', '2015-08-19 01:08:10', '', 'quote 1 fix', '', 'inherit', 'open', 'closed', '', 'quote-1-fix', '', '', '2015-08-19 01:08:10', '2015-08-19 01:08:10', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2015-08-19 01:09:07', '2015-08-19 01:09:07', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.', 'Lorem Ipsum', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-2', '', '', '2015-08-19 01:09:07', '2015-08-19 01:09:07', '', 0, 'http://localhost/drpp/?post_type=charity-portfolio&#038;p=58', 0, 'charity-portfolio', '', 0),
(60, 1, '2015-08-19 01:18:32', '2015-08-19 01:18:32', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta</small></li>\r\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-08-19 01:18:32', '2015-08-19 01:18:32', '', 30, 'http://localhost/drpp/30-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-08-19 01:20:48', '2015-08-19 01:20:48', 'Written by University of Illinois at Chicago\r\n\r\nResearchers at the University of Illinois at Chicago are the first to use brain imaging to examine the effects of emotion on working memory function in children with pediatric bipolar disorder or attention deficit hyperactivity disorder. The study is published in the October issue of the Journal of the American Academy of Child &amp; Adolescent Psychiatry. PBD and ADHD are very severe developmental disorders that share behavioral characteristics such as impulsivity, irritability and attention problems.\r\n\r\nUsing functional magnetic resonance imaging, researchers at UIC examined the brain activity of children as they performed a working memory task while viewing faces with different emotions, such as angry, happy or neutral expressions.\r\n\r\nThe children, ages 10 to 18, were asked to remember the faces and to press a button in the MR-scanner if they saw the same face that was presented two trials earlier. The study involved 23 non-medicated children with bipolar disorder, 14 non-medicated children with ADHD and 19 healthy controls.\r\n\r\n"It''s a simple yet elegant working memory test that tells us a lot about how their brain remembers stimuli like faces or objects," said Alessandra Passarotti, assistant professor of psychiatry at UIC and lead author of the study. "We also added in an emotional component -- because both disorders show emotional deficits -- to study how their working memory is affected by emotional challenge."\r\n\r\nThe researchers found that while both disorders show dysfunction in the prefrontal cortex relative to healthy controls, the ADHD group had the most severe dysfunction in this important region. The prefrontal cortex controls behavior, such as impulsivity, and executive function, as well as complex cognitive processes such as working memory, attention and language.\r\n\r\nFrom a treatment, learning and intervention perspective, the next step for researchers and clinicians is to figure out how to help patients use their prefrontal cortex, Passarotti said.\r\n\r\nThe researchers also found that while the ADHD group had greater dysfunction in working memory circuits in the brain, the bipolar group had more deficits in regions of the brain involved in emotion-processing and regulation.\r\n\r\nNow that researchers are starting to differentiate between the two disorders at a brain network level, rather than just at a behavioral level, the long-term goal is to develop diagnostic tests based on neurological and behavioral markers of illness that can be used in a clinical setting. Currently patients are diagnosed using clinical measures, questionnaires, behavior scales and interviews with parents.\r\n\r\nIt is difficult for physicians to differentiate between the two disorders behaviorally, which may lead to an incorrect diagnosis and wrong medications, a worsening of symptoms, and greater frustration for children and parents, said Passarotti, a researcher in UIC''s Institute for Juvenile Research.\r\n\r\nShe said that while researchers still do not understand all of the neurological deficits that characterize ADHD and PBD profiles, they know that drug treatment that works for ADHD does not work for bipolar disorder.\r\n\r\n"In fact, if you give a stimulant to a child with bipolar disorder, they become more manic, and this makes their illness even worse, whereas if you give the mood-regulation medicine commonly prescribed for PBD to a child with ADHD, they still show a lot of attention deficits and do not show any improvement," Passarotti said.\r\n\r\n"Our hope is that by better differentiating between these two severe developmental illnesses, we can help develop more accurate diagnoses and more targeted treatments for PBD and ADHD."\r\n\r\nCo-authors of the study are Dr. Mani Pavuluri, the Berger-Colbeth Term Chair in Child Psychiatry and director of the Pediatric Brain Research and Intervention Center at UIC, and John Sweeney, professor of psychiatry, neurology and psychology and director of the Center for Cognitive Medicine at UIC.', 'Brain Imaging Identifies Differences in Childhood Bipolar Disorder, ADHD', '', 'publish', 'open', 'open', '', 'brain-imaging-identifies-differences-in-childhood-bipolar-disorder-adhd', '', '', '2015-08-19 01:21:21', '2015-08-19 01:21:21', '', 0, 'http://localhost/drpp/?p=61', 0, 'post', '', 0),
(62, 1, '2015-08-19 01:20:48', '2015-08-19 01:20:48', 'Written by University of Illinois at Chicago\r\n\r\nResearchers at the University of Illinois at Chicago are the first to use brain imaging to examine the effects of emotion on working memory function in children with pediatric bipolar disorder or attention deficit hyperactivity disorder. The study is published in the October issue of the Journal of the American Academy of Child &amp; Adolescent Psychiatry. PBD and ADHD are very severe developmental disorders that share behavioral characteristics such as impulsivity, irritability and attention problems.\r\n\r\nUsing functional magnetic resonance imaging, researchers at UIC examined the brain activity of children as they performed a working memory task while viewing faces with different emotions, such as angry, happy or neutral expressions.\r\n\r\nThe children, ages 10 to 18, were asked to remember the faces and to press a button in the MR-scanner if they saw the same face that was presented two trials earlier. The study involved 23 non-medicated children with bipolar disorder, 14 non-medicated children with ADHD and 19 healthy controls.\r\n\r\n"It''s a simple yet elegant working memory test that tells us a lot about how their brain remembers stimuli like faces or objects," said Alessandra Passarotti, assistant professor of psychiatry at UIC and lead author of the study. "We also added in an emotional component -- because both disorders show emotional deficits -- to study how their working memory is affected by emotional challenge."\r\n\r\nThe researchers found that while both disorders show dysfunction in the prefrontal cortex relative to healthy controls, the ADHD group had the most severe dysfunction in this important region. The prefrontal cortex controls behavior, such as impulsivity, and executive function, as well as complex cognitive processes such as working memory, attention and language.\r\n\r\nFrom a treatment, learning and intervention perspective, the next step for researchers and clinicians is to figure out how to help patients use their prefrontal cortex, Passarotti said.\r\n\r\nThe researchers also found that while the ADHD group had greater dysfunction in working memory circuits in the brain, the bipolar group had more deficits in regions of the brain involved in emotion-processing and regulation.\r\n\r\nNow that researchers are starting to differentiate between the two disorders at a brain network level, rather than just at a behavioral level, the long-term goal is to develop diagnostic tests based on neurological and behavioral markers of illness that can be used in a clinical setting. Currently patients are diagnosed using clinical measures, questionnaires, behavior scales and interviews with parents.\r\n\r\nIt is difficult for physicians to differentiate between the two disorders behaviorally, which may lead to an incorrect diagnosis and wrong medications, a worsening of symptoms, and greater frustration for children and parents, said Passarotti, a researcher in UIC''s Institute for Juvenile Research.\r\n\r\nShe said that while researchers still do not understand all of the neurological deficits that characterize ADHD and PBD profiles, they know that drug treatment that works for ADHD does not work for bipolar disorder.\r\n\r\n"In fact, if you give a stimulant to a child with bipolar disorder, they become more manic, and this makes their illness even worse, whereas if you give the mood-regulation medicine commonly prescribed for PBD to a child with ADHD, they still show a lot of attention deficits and do not show any improvement," Passarotti said.\r\n\r\n"Our hope is that by better differentiating between these two severe developmental illnesses, we can help develop more accurate diagnoses and more targeted treatments for PBD and ADHD."\r\n\r\nCo-authors of the study are Dr. Mani Pavuluri, the Berger-Colbeth Term Chair in Child Psychiatry and director of the Pediatric Brain Research and Intervention Center at UIC, and John Sweeney, professor of psychiatry, neurology and psychology and director of the Center for Cognitive Medicine at UIC.', 'Brain Imaging Identifies Differences in Childhood Bipolar Disorder, ADHD', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-08-19 01:20:48', '2015-08-19 01:20:48', '', 61, 'http://localhost/drpp/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-08-19 01:22:09', '2015-08-19 01:22:09', 'Written Karen Mallet (Georgetown University Medical Center)\r\n\r\nNeuroscientists at Georgetown University Medical Center (GUMC) say brain scans show that a gene nominally linked to attention deficit hyperactivity disorder (ADHD) leads to increased interference by brain regions associated with mind wandering during mental tasks. Presented at the annual meeting of the Society for Neuroscience, these researchers believe their findings are the first to show, through brain scanning, the differences in brain network relationships between individuals with this particular form of gene and others with a different form.\r\n\r\n"Our goal is to narrow down the function of candidate genes associated with ADHD, and in this study, we find this gene is tied to competition between brain networks. This could lead to increased inattention, but it likely has nothing to do with hyperactivity," says the study''s lead author, Evan Gordon, a doctoral candidate in the Interdisciplinary Program in Neuroscience at GUMC. "This is just one gene, and it does not cause ADHD but likely contributes to it. The disorder is believed to be due to a myriad of genetic factors."\r\n\r\nThe gene in question is DAT1; its protein produces the dopamine transporter that helps regulate dopamine transmission between brain cells. The DAT1 gene comes in two alleles, or forms - DAT1 10 and DAT1 9. People who inherit two 10 alleles (10/10) are said to be at greater risk for developing ADHD than people who inherit 10/9 alleles. Rarely does someone inherit two 9 alleles, according to Gordon; he says, in fact, that the10 allele is slightly more common than the 9 allele.\r\n\r\nThe biological significance of inheriting a DAT1 10 allele is that the brain produces excess quantities of dopamine transporters, and that results in less dopamine signaling between neurons. Too many dopamine transporters quickly scoop up dopamine released by neurons, leaving fewer available to actually reach other neurons and pass on a signal. If there are fewer transporters, more dopamine stays in the synapse between neurons, triggering a reaction.\r\n\r\nThat is important, Gordon says, because dopamine is important for "gating" the transfer of information between brain regions - that is, allowing or preventing new information to come in. "The belief is that dopamine helps teach certain brain regions how and when to gate, and that 10/10 carriers are not gating as quickly or effectively as is possible."\r\n\r\nThat is exactly what the researchers found when they used functional MRI (fMRI) on a group of 38 participants. Half of the groups were 10/10 carriers and half were 10/9 carriers, and none of the participants were diagnosed with ADHD.\r\n\r\nThe researchers investigated the activity in two areas of the brain, the default mode network (DMN), which is associated with mind wandering or daydreaming and is active when the mind is at rest, and task-positive networks (TPNs), which are active during problem solving and other cognitive work. In this study, participants were asked to remember letters they saw on a screen inside the fMRI machine, and to recall them, thus activating TPNs.\r\n\r\nScanning demonstrated that in 10/10 carriers, the mind wandering areas tended to communicate with regions performing memory tasks more strongly than in did in 10/9 carriers. "Dopamine in the 10/10 carriers was not doing a good enough job in preventing the mind wandering regions from interfering with memory performance regions, resulting in less efficient cognition," Gordon says.\r\n\r\nThey also found no differences between genotype when the participants were at rest after their memory tasks. "That tells us that the DAT1 genotype affects gating only when release of dopamine is high, such as during a memory task, and that less dopamine signaling leads to increased inattention," he says. "Being a DAT1 10/10 carrier does not mean a person has ADHD; it is not a diagnostic marker," Gordon says. "It has been viewed as a contributing factor, and now we know one reason why." The study was funded by the National Institute of Mental Health.', 'Gene Linked to ADHD Allows Memory Task to Be Interrupted By Brain Regions Tied to Daydreaming', '', 'publish', 'open', 'open', '', 'gene-linked-to-adhd-allows-memory-task-to-be-interrupted-by-brain-regions-tied-to-daydreaming', '', '', '2015-08-19 01:22:09', '2015-08-19 01:22:09', '', 0, 'http://localhost/drpp/?p=63', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(64, 1, '2015-08-19 01:22:09', '2015-08-19 01:22:09', 'Written Karen Mallet (Georgetown University Medical Center)\r\n\r\nNeuroscientists at Georgetown University Medical Center (GUMC) say brain scans show that a gene nominally linked to attention deficit hyperactivity disorder (ADHD) leads to increased interference by brain regions associated with mind wandering during mental tasks. Presented at the annual meeting of the Society for Neuroscience, these researchers believe their findings are the first to show, through brain scanning, the differences in brain network relationships between individuals with this particular form of gene and others with a different form.\r\n\r\n"Our goal is to narrow down the function of candidate genes associated with ADHD, and in this study, we find this gene is tied to competition between brain networks. This could lead to increased inattention, but it likely has nothing to do with hyperactivity," says the study''s lead author, Evan Gordon, a doctoral candidate in the Interdisciplinary Program in Neuroscience at GUMC. "This is just one gene, and it does not cause ADHD but likely contributes to it. The disorder is believed to be due to a myriad of genetic factors."\r\n\r\nThe gene in question is DAT1; its protein produces the dopamine transporter that helps regulate dopamine transmission between brain cells. The DAT1 gene comes in two alleles, or forms - DAT1 10 and DAT1 9. People who inherit two 10 alleles (10/10) are said to be at greater risk for developing ADHD than people who inherit 10/9 alleles. Rarely does someone inherit two 9 alleles, according to Gordon; he says, in fact, that the10 allele is slightly more common than the 9 allele.\r\n\r\nThe biological significance of inheriting a DAT1 10 allele is that the brain produces excess quantities of dopamine transporters, and that results in less dopamine signaling between neurons. Too many dopamine transporters quickly scoop up dopamine released by neurons, leaving fewer available to actually reach other neurons and pass on a signal. If there are fewer transporters, more dopamine stays in the synapse between neurons, triggering a reaction.\r\n\r\nThat is important, Gordon says, because dopamine is important for "gating" the transfer of information between brain regions - that is, allowing or preventing new information to come in. "The belief is that dopamine helps teach certain brain regions how and when to gate, and that 10/10 carriers are not gating as quickly or effectively as is possible."\r\n\r\nThat is exactly what the researchers found when they used functional MRI (fMRI) on a group of 38 participants. Half of the groups were 10/10 carriers and half were 10/9 carriers, and none of the participants were diagnosed with ADHD.\r\n\r\nThe researchers investigated the activity in two areas of the brain, the default mode network (DMN), which is associated with mind wandering or daydreaming and is active when the mind is at rest, and task-positive networks (TPNs), which are active during problem solving and other cognitive work. In this study, participants were asked to remember letters they saw on a screen inside the fMRI machine, and to recall them, thus activating TPNs.\r\n\r\nScanning demonstrated that in 10/10 carriers, the mind wandering areas tended to communicate with regions performing memory tasks more strongly than in did in 10/9 carriers. "Dopamine in the 10/10 carriers was not doing a good enough job in preventing the mind wandering regions from interfering with memory performance regions, resulting in less efficient cognition," Gordon says.\r\n\r\nThey also found no differences between genotype when the participants were at rest after their memory tasks. "That tells us that the DAT1 genotype affects gating only when release of dopamine is high, such as during a memory task, and that less dopamine signaling leads to increased inattention," he says. "Being a DAT1 10/10 carrier does not mean a person has ADHD; it is not a diagnostic marker," Gordon says. "It has been viewed as a contributing factor, and now we know one reason why." The study was funded by the National Institute of Mental Health.', 'Gene Linked to ADHD Allows Memory Task to Be Interrupted By Brain Regions Tied to Daydreaming', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-08-19 01:22:09', '2015-08-19 01:22:09', '', 63, 'http://localhost/drpp/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-08-19 01:22:45', '2015-08-19 01:22:45', 'Written by Wendy Leopold - Northwestern University\r\n\r\nScientists long have recognized that many perceptual skills important for language comprehension and reading can be enhanced through practice. Now research from Northwestern University suggests a new way of training that could reduce by at least half the effort previously thought necessary to make learning gains. The research also may be the first behavioral demonstration of metaplasticity -- the idea that experiences that on their own do not generate learning can influence how effective later experiences are at generating learning.\r\n\r\n"Prior to our work much of the research into perceptual learning could be summed up as ''no pain, no gain,''" says Beverly Wright, first author of a study in the Sept. 22 Journal of Neuroscience and communication sciences and disorders professor at Northwestern. "Our work suggests that you can have the same gain in learning with substantially less pain."\r\n\r\nThe findings could lead to less effortful therapies for children who suffer from language learning impairments involving perceptual skills. And they hold potential for members of the general population with an interest in enhancing perceptual abilities -- for musicians seeking to sharpen their sensitivity to sound, people studying a second language or physicians learning to tell the difference between regular and irregular heartbeats.\r\n\r\nPrevious research showed that individuals become better at many perceptual tasks by performing them again and again, typically making the training tedious and long in length. It also showed that mere exposure to the perceptual stimuli used during practice on these tasks does not generate learning.\r\n\r\nBut the Northwestern researchers found that robust learning occurred when they combined periods of practice that alone were too brief to cause learning with periods of mere exposure to perceptual stimuli. "To our surprise, we found that two ''wrongs'' actually can make a right when it comes to perceptual learning," says Wright.\r\n\r\nWhat''s more, they found that the combination led to perceptual learning gains that were equal to the learning gains made by participants who performed twice as much continuous task training (training which by nature of its repetition and length often is onerous).\r\n\r\n"It''s as though once you get your system revved up by practicing a particular skill, the brain acts as though you are still engaged in the task when you are not and learning still takes place," says Wright, who teaches in Northwestern''s School of Communication.\r\n\r\nWright and Northwestern researchers Andrew Sabin, Yuxuan Zhang, Nicole Marrone and Matthew Fitzgerald worked with four groups of adult participants aged 18 to 30 years with normal hearing and no previous experience with psychoacoustic tasks. Their goal was to improve participants'' ability to discriminate between the pitches of different tones.\r\n\r\nThe researchers initially determined the smallest difference in pitch that participants could discriminate from a 1,000 Hertz standard tone. They then divided the participants into four groups, each of which went through a different training regimen.Participants in one group were trained for 20 minutes per day for a week on the pitch-discrimination task. Over and over again, they were asked to tell the difference between the 1,000 Hertz tone and a lower tone but showed no improvement.\r\n\r\nOf greatest importance for the study, participants in a second group showed significant learning gains when the same amount of target task training (20 minutes) was combined with 20 minutes of work on an unrelated puzzle while repeatedly presenting a 1,000 Hertz tone through headphones. Impressively, the learning of the second group also was comparable to that of a third group that for a week practiced the pitch-discrimination target task for 40 minutes per day. A fourth group of participants repeatedly exposed to a 1,000 Hertz tone for 40 minutes per day while performing an unrelated task showed no learning gains.\r\n\r\nFurther experiments revealed that the order of presentation -- whether the 20 minutes of target task training occurred before or after the 20 minutes of the related task - did not affect learning. Each scenario yielded equal pitch discrimination learning gains.\r\n\r\nIn addition, the researchers discovered that the effectiveness of the combination of the target task training and of the unrelated training plus stimuli presentation began declining if the two tasks were separated by more than 15 minutes. Pitch discrimination learning - or evidence of metaplasticity -- disappeared completely if the sessions were separated by four hours.\r\n\r\nThe article in the Journal of Neuroscience (Sept. 22, 2010) is titled "Enhancing Perceptual Learning by Combining Practice with Additional Sensory Stimulation." The research is supported by the National Institute on Deafness and Other Communication Disorders-National Institutes of Health.', 'Less Pain for Learning Gain', '', 'publish', 'open', 'open', '', 'less-pain-for-learning-gain', '', '', '2015-08-19 01:22:45', '2015-08-19 01:22:45', '', 0, 'http://localhost/drpp/?p=65', 0, 'post', '', 0),
(66, 1, '2015-08-19 01:22:45', '2015-08-19 01:22:45', 'Written by Wendy Leopold - Northwestern University\r\n\r\nScientists long have recognized that many perceptual skills important for language comprehension and reading can be enhanced through practice. Now research from Northwestern University suggests a new way of training that could reduce by at least half the effort previously thought necessary to make learning gains. The research also may be the first behavioral demonstration of metaplasticity -- the idea that experiences that on their own do not generate learning can influence how effective later experiences are at generating learning.\r\n\r\n"Prior to our work much of the research into perceptual learning could be summed up as ''no pain, no gain,''" says Beverly Wright, first author of a study in the Sept. 22 Journal of Neuroscience and communication sciences and disorders professor at Northwestern. "Our work suggests that you can have the same gain in learning with substantially less pain."\r\n\r\nThe findings could lead to less effortful therapies for children who suffer from language learning impairments involving perceptual skills. And they hold potential for members of the general population with an interest in enhancing perceptual abilities -- for musicians seeking to sharpen their sensitivity to sound, people studying a second language or physicians learning to tell the difference between regular and irregular heartbeats.\r\n\r\nPrevious research showed that individuals become better at many perceptual tasks by performing them again and again, typically making the training tedious and long in length. It also showed that mere exposure to the perceptual stimuli used during practice on these tasks does not generate learning.\r\n\r\nBut the Northwestern researchers found that robust learning occurred when they combined periods of practice that alone were too brief to cause learning with periods of mere exposure to perceptual stimuli. "To our surprise, we found that two ''wrongs'' actually can make a right when it comes to perceptual learning," says Wright.\r\n\r\nWhat''s more, they found that the combination led to perceptual learning gains that were equal to the learning gains made by participants who performed twice as much continuous task training (training which by nature of its repetition and length often is onerous).\r\n\r\n"It''s as though once you get your system revved up by practicing a particular skill, the brain acts as though you are still engaged in the task when you are not and learning still takes place," says Wright, who teaches in Northwestern''s School of Communication.\r\n\r\nWright and Northwestern researchers Andrew Sabin, Yuxuan Zhang, Nicole Marrone and Matthew Fitzgerald worked with four groups of adult participants aged 18 to 30 years with normal hearing and no previous experience with psychoacoustic tasks. Their goal was to improve participants'' ability to discriminate between the pitches of different tones.\r\n\r\nThe researchers initially determined the smallest difference in pitch that participants could discriminate from a 1,000 Hertz standard tone. They then divided the participants into four groups, each of which went through a different training regimen.Participants in one group were trained for 20 minutes per day for a week on the pitch-discrimination task. Over and over again, they were asked to tell the difference between the 1,000 Hertz tone and a lower tone but showed no improvement.\r\n\r\nOf greatest importance for the study, participants in a second group showed significant learning gains when the same amount of target task training (20 minutes) was combined with 20 minutes of work on an unrelated puzzle while repeatedly presenting a 1,000 Hertz tone through headphones. Impressively, the learning of the second group also was comparable to that of a third group that for a week practiced the pitch-discrimination target task for 40 minutes per day. A fourth group of participants repeatedly exposed to a 1,000 Hertz tone for 40 minutes per day while performing an unrelated task showed no learning gains.\r\n\r\nFurther experiments revealed that the order of presentation -- whether the 20 minutes of target task training occurred before or after the 20 minutes of the related task - did not affect learning. Each scenario yielded equal pitch discrimination learning gains.\r\n\r\nIn addition, the researchers discovered that the effectiveness of the combination of the target task training and of the unrelated training plus stimuli presentation began declining if the two tasks were separated by more than 15 minutes. Pitch discrimination learning - or evidence of metaplasticity -- disappeared completely if the sessions were separated by four hours.\r\n\r\nThe article in the Journal of Neuroscience (Sept. 22, 2010) is titled "Enhancing Perceptual Learning by Combining Practice with Additional Sensory Stimulation." The research is supported by the National Institute on Deafness and Other Communication Disorders-National Institutes of Health.', 'Less Pain for Learning Gain', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-08-19 01:22:45', '2015-08-19 01:22:45', '', 65, 'http://localhost/drpp/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-08-19 01:24:47', '2015-08-19 01:24:47', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2015-08-19 01:24:47', '2015-08-19 01:24:47', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=67', 0, 'charity-gallery', '', 0),
(68, 1, '2015-08-19 01:25:32', '2015-08-19 01:25:32', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-2', '', '', '2015-08-19 01:25:32', '2015-08-19 01:25:32', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=68', 0, 'charity-gallery', '', 0),
(69, 1, '2015-08-19 01:26:21', '2015-08-19 01:26:21', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-3', '', '', '2015-08-19 03:21:32', '2015-08-19 03:21:32', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=69', 0, 'charity-gallery', '', 0),
(70, 1, '2015-08-19 01:29:15', '2015-08-19 01:29:15', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-4', '', '', '2015-08-19 01:29:15', '2015-08-19 01:29:15', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=70', 0, 'charity-gallery', '', 0),
(71, 1, '2015-08-19 01:29:38', '2015-08-19 01:29:38', '', 'Lorem Ipsum', '', 'trash', 'closed', 'closed', '', 'lorem-ipsum-5', '', '', '2015-08-19 01:33:21', '2015-08-19 01:33:21', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=71', 0, 'charity-gallery', '', 0),
(72, 1, '2015-08-19 01:30:15', '2015-08-19 01:30:15', '', 'Lorem Ipsum', '', 'trash', 'closed', 'closed', '', 'lorem-ipsum-6', '', '', '2015-08-19 01:33:21', '2015-08-19 01:33:21', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=72', 0, 'charity-gallery', '', 0),
(74, 1, '2015-08-19 01:37:07', '2015-08-19 01:37:07', 'Berlatar belakang keinginan untuk berbagi pengalaman dari apa yang kami ketahui dan dapatkan selama ini dalam bidang kelaianan perkembangan dan saraf anak, behavioral (perilaku) anak, pendidikan anak dan juga masalah masalah yang berhubungan dengan minat, bakat dan kreatifitas anak, kami yang tergabung dalam satu tim yang terdiri dari: dokter spesialis saraf anak (pediatic neirologist), dokter spesialis anak, dokter spesialis rehabilitasi medik, dokter spesialis bedah ortopedi anak, dokter spesialis gizi anak, psikolog perkembangan anak membuka portal sebagai media konsultasi online tentang kelainan perkembangan dan saraf anak. Kami yang tergabung dalam satu kesempatan, juga ingin berbagi pengetahuan dari apa yang kami dapatkan selama ini buat para orang tua, guru, profesional lain yang berkecimpung dalam masalah perkembangan anak, kelaianan perkembangan dan saraf anak dan juga masalah masalah yang berhubungan dengan pendidikan anak.\r\n\r\nTim kami mengelola <b>3 </b><b>tempat</b> <b>terapi</b><b>: (Child Development Center) </b><b>Rumah</b> <b>Sakit</b><b> Santosa Bandung International Hospital, Indigrow Child Development Center, </b><b>Kidz</b> <b>Potentia</b><b>-Child development and dyslexia Center</b>. Selain itu, kami bekerja sama erat dengan beberapa Center kelainan perkembangan anak di luar negeri (Persatuan dyslexia Malaysia, Segawa Neurological Cilinic Tokyo, Dyslexia Association of Singapore) dan melaksanakan berbagai simposium, seminar serta work shop di bidang kelainan Perkembangan dan Saraf anak.\r\n\r\nKonsultasi online yang kami lakukan, terbuka bagi siapa saja yang ingin melakukan komunikasi dengan kami untuk semua hal yang berhubungan dengan perkembangan anak, kelainan perkembangan dan saraf anak. Kami sangat berharap dapat terjalinnya hubungan yang erat antara kami dan semua individu yang mempunyai keseminatan yang sama dibidang perkembangan dan kelaian perkembangan dan saraf anak. Salam perkenalan dari kami.', 'What is The Learning Center?', '', 'publish', 'open', 'closed', '', 'what-is-the-learning-center', '', '', '2015-08-19 01:37:07', '2015-08-19 01:37:07', '', 0, 'http://localhost/drpp/?post_type=charity_our_mission&#038;p=74', 0, 'charity_our_mission', '', 0),
(75, 1, '2015-08-19 01:39:11', '2015-08-19 01:39:11', 'Berlatar belakang keinginan untuk berbagi pengalaman dari apa yang kami ketahui dan dapatkan selama ini dalam bidang kelaianan perkembangan dan saraf anak, behavioral (perilaku) anak, pendidikan anak dan juga masalah masalah yang berhubungan dengan minat, bakat dan kreatifitas anak, kami yang tergabung dalam satu tim yang terdiri dari: dokter spesialis saraf anak (pediatic neirologist), dokter spesialis anak, dokter spesialis rehabilitasi medik, dokter spesialis bedah ortopedi anak, dokter spesialis gizi anak, psikolog perkembangan anak membuka portal sebagai media konsultasi online tentang kelainan perkembangan dan saraf anak. Kami yang tergabung dalam satu kesempatan, juga ingin berbagi pengetahuan dari apa yang kami dapatkan selama ini buat para orang tua, guru, profesional lain yang berkecimpung dalam masalah perkembangan anak, kelaianan perkembangan dan saraf anak dan juga masalah masalah yang berhubungan dengan pendidikan anak.\r\n\r\nTim kami mengelola <b>3 </b><b>tempat</b> <b>terapi</b><b>: (Child Development Center) </b><b>Rumah</b> <b>Sakit</b><b> Santosa Bandung International Hospital, Indigrow Child Development Center, </b><b>Kidz</b> <b>Potentia</b><b>-Child development and dyslexia Center</b>. Selain itu, kami bekerja sama erat dengan beberapa Center kelainan perkembangan anak di luar negeri (Persatuan dyslexia Malaysia, Segawa Neurological Cilinic Tokyo, Dyslexia Association of Singapore) dan melaksanakan berbagai simposium, seminar serta work shop di bidang kelainan Perkembangan dan Saraf anak.\r\n\r\nKonsultasi online yang kami lakukan, terbuka bagi siapa saja yang ingin melakukan komunikasi dengan kami untuk semua hal yang berhubungan dengan perkembangan anak, kelainan perkembangan dan saraf anak. Kami sangat berharap dapat terjalinnya hubungan yang erat antara kami dan semua individu yang mempunyai keseminatan yang sama dibidang perkembangan dan kelaian perkembangan dan saraf anak. Salam perkenalan dari kami.', 'What is The Learning Center', '', 'trash', 'closed', 'closed', '', 'what-is-the-learning-center', '', '', '2015-08-19 01:46:43', '2015-08-19 01:46:43', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=75', 0, 'charity-causes', '', 0),
(77, 1, '2015-08-19 01:52:23', '2015-08-19 01:52:23', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.', 'Consultation', '', 'publish', 'open', 'closed', '', 'consultation', '', '', '2015-08-19 01:52:23', '2015-08-19 01:52:23', '', 0, 'http://localhost/drpp/?post_type=charity-our-works&#038;p=77', 0, 'charity-our-works', '', 0),
(78, 1, '2015-08-19 01:52:42', '2015-08-19 01:52:42', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.', 'Symposium', '', 'publish', 'open', 'closed', '', 'symposium', '', '', '2015-08-19 01:52:42', '2015-08-19 01:52:42', '', 0, 'http://localhost/drpp/?post_type=charity-our-works&#038;p=78', 0, 'charity-our-works', '', 0),
(79, 1, '2015-08-19 01:54:32', '2015-08-19 01:54:32', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text css_animation="top-to-bottom"]The Learning Center have two main features, consultation and symposium, lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum[/vc_column_text][vc_separator color="grey" align="align_center" style="" border_width="" el_width=""][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="12" alignment="center" border_color="grey" img_link_large="" img_link_target="_self" img_size="600x600" css_animation="left-to-right"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<h2>Consultation</h2>\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][vc_btn title="Register Now!" style="flat" shape="rounded" color="green" size="md" align="inline" i_align="left" i_type="fontawesome" i_icon_fontawesome="fa fa-adjust" i_icon_openiconic="vc-oi vc-oi-dial" i_icon_typicons="typcn typcn-adjust-brightness" i_icon_entypo="entypo-icon entypo-icon-note" i_icon_linecons="vc_li vc_li-heart" button_block="" add_icon="" i_icon_pixelicons="vc_pixel_icon vc_pixel_icon-alert" css_animation="right-to-left"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="11" alignment="center" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="500x500"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<h2>Consultation</h2>\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][vc_btn title="Register Now!" style="flat" shape="rounded" color="green" size="md" align="inline" i_align="left" i_type="fontawesome" i_icon_fontawesome="fa fa-adjust" i_icon_openiconic="vc-oi vc-oi-dial" i_icon_typicons="typcn typcn-adjust-brightness" i_icon_entypo="entypo-icon entypo-icon-note" i_icon_linecons="vc_li vc_li-heart" button_block="" add_icon="" i_icon_pixelicons="vc_pixel_icon vc_pixel_icon-alert" css_animation="right-to-left"][/vc_column][/vc_row]', 'Main Features', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2015-08-19 01:54:32', '2015-08-19 01:54:32', '', 15, 'http://localhost/drpp/15-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2015-08-19 01:55:46', '2015-08-19 01:55:46', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533858156{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534043825{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533869114{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534056914{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533886339{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534089852{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533908528{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534109307{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533922304{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534117823{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row]', 'Our Expert', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2015-08-19 01:55:46', '2015-08-19 01:55:46', '', 45, 'http://localhost/drpp/45-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2015-08-19 02:54:41', '2015-08-19 02:54:41', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.', 'Lorem Ipsum', '', 'publish', 'open', 'closed', '', 'lorem-ipsum', '', '', '2015-08-27 06:23:06', '2015-08-27 06:23:06', '', 0, 'http://localhost/drpp/?post_type=event&#038;p=81', 0, 'event', '', 0),
(82, 1, '2015-08-19 02:54:43', '2015-08-19 02:54:43', '', 'Grha Sabha Pramana', '', 'publish', 'open', 'closed', '', 'grha-sabha-pramana', '', '', '2015-08-19 02:54:43', '2015-08-19 02:54:43', '', 0, 'http://localhost/drpp/locations/grha-sabha-pramana/', 0, 'location', '', 0),
(83, 1, '2015-08-19 02:56:08', '2015-08-19 02:56:08', '', 'Events', 'CONTENTS', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2015-08-19 02:56:08', '2015-08-19 02:56:08', '', 3, 'http://localhost/drpp/3-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2015-08-19 03:00:04', '2015-08-19 03:00:04', '', '2 - Foto M. Risqi Utama Saputra', '', 'inherit', 'open', 'closed', '', '2-foto-m-risqi-utama-saputra', '', '', '2015-08-19 03:00:04', '2015-08-19 03:00:04', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/2-Foto-M.-Risqi-Utama-Saputra.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2015-08-19 03:04:14', '2015-08-19 03:04:14', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 'Lorem Ipsum', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-2', '', '', '2015-08-27 06:19:18', '2015-08-27 06:19:18', '', 0, 'http://localhost/drpp/?post_type=event&#038;p=85', 0, 'event', '', 0),
(86, 1, '2015-08-19 03:09:45', '2015-08-19 03:09:45', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\n<ul class="widget-address sep-top-xs">\n	<li><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta</small></li>\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\n</ul>\n[/vc_column_text][/vc_column][/vc_row]\n\n<strong>NextIn Indonesia</strong>\n<h6><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta\n</small> +62 823-2960-0100\n<i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com\n</small> Monday - Friday 10:00 - 17.00</h6>', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2015-08-19 03:09:45', '2015-08-19 03:09:45', '', 30, 'http://localhost/drpp/30-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2015-08-19 03:10:16', '2015-08-19 03:10:16', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta</small></li>\r\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]\r\n\r\n<strong>NextIn Indonesia</strong>\r\n\r\n<small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta\r\n</small> +62 823-2960-0100\r\n<i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com\r\n</small> Monday - Friday 10:00 - 17.00', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-08-19 03:10:16', '2015-08-19 03:10:16', '', 30, 'http://localhost/drpp/30-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2015-08-19 03:11:28', '2015-08-19 03:11:28', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta</small></li>\r\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-08-19 03:11:28', '2015-08-19 03:11:28', '', 30, 'http://localhost/drpp/30-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2015-08-19 03:29:23', '2015-08-19 03:29:23', '', '950 x 500 Keunggulan Online Consultation', '', 'inherit', 'open', 'closed', '', '950-x-500-keunggulan-online-consultation', '', '', '2015-08-19 03:29:23', '2015-08-19 03:29:23', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/950-x-500-Keunggulan-Online-Consultation.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2015-08-19 03:29:25', '2015-08-19 03:29:25', '', '950 x 500 Persuasive Question', '', 'inherit', 'open', 'closed', '', '950-x-500-persuasive-question', '', '', '2015-08-19 03:29:25', '2015-08-19 03:29:25', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/950-x-500-Persuasive-Question.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2015-08-19 03:42:43', '2015-08-19 03:42:43', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.<!--more-->\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2015-08-19 04:12:56', '2015-08-19 04:12:56', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=91', 0, 'charity-causes', '', 0),
(92, 1, '2015-08-19 04:17:15', '2015-08-19 04:17:15', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.<!--more-->\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 'Dr. Risqi Utama', '', 'publish', 'closed', 'closed', '', 'dr-risqi-utama', '', '', '2015-08-19 04:17:15', '2015-08-19 04:17:15', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=92', 0, 'charity-causes', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(93, 1, '2015-08-19 04:17:53', '2015-08-19 04:17:53', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.<!--more-->\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 'Dr. Risqi Utama', '', 'publish', 'closed', 'closed', '', 'dr-risqi-utama-2', '', '', '2015-08-19 04:19:42', '2015-08-19 04:19:42', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=93', 0, 'charity-causes', '', 0),
(94, 1, '2015-08-19 04:18:40', '2015-08-19 04:18:40', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.<!--more-->\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 'Dr. Risqi Utama', '', 'publish', 'closed', 'closed', '', 'dr-risqi-utama-3', '', '', '2015-08-19 04:18:40', '2015-08-19 04:18:40', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=94', 0, 'charity-causes', '', 0),
(95, 1, '2015-08-19 04:19:10', '2015-08-19 04:19:10', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.<!--more-->\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 'Dr. Risqi Utama', '', 'publish', 'closed', 'closed', '', 'dr-risqi-utama-4', '', '', '2015-08-19 04:19:10', '2015-08-19 04:19:10', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=95', 0, 'charity-causes', '', 0),
(96, 1, '2015-08-19 05:05:23', '2015-08-19 05:05:23', '', '1650 x 1100 Keunggulan Online Consultation', '', 'inherit', 'open', 'closed', '', '1650-x-1100-keunggulan-online-consultation', '', '', '2015-08-19 05:05:23', '2015-08-19 05:05:23', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/1650-x-1100-Keunggulan-Online-Consultation.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2015-08-19 05:05:28', '2015-08-19 05:05:28', '', '1650 x 1100 Persuasive Question', '', 'inherit', 'open', 'closed', '', '1650-x-1100-persuasive-question', '', '', '2015-08-19 05:05:28', '2015-08-19 05:05:28', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/1650-x-1100-Persuasive-Question.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2015-08-21 03:16:26', '2015-08-21 03:16:26', '', 'Laboratorium', '', 'inherit', 'open', 'closed', '', 'laboratorium', '', '', '2015-08-21 03:16:26', '2015-08-21 03:16:26', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Laboratorium.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2015-08-21 03:16:33', '2015-08-21 03:16:33', '', 'Orang Depan Komputer', '', 'inherit', 'open', 'closed', '', 'orang-depan-komputer', '', '', '2015-08-21 03:16:33', '2015-08-21 03:16:33', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Orang-Depan-Komputer.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2015-08-21 04:20:52', '2015-08-21 04:20:52', '', 'Center Laboratorium', '', 'inherit', 'open', 'closed', '', 'center-laboratorium', '', '', '2015-08-21 04:20:52', '2015-08-21 04:20:52', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Laboratorium.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2015-08-21 04:20:57', '2015-08-21 04:20:57', '', 'Center Orang Depan Komputer', '', 'inherit', 'open', 'closed', '', 'center-orang-depan-komputer', '', '', '2015-08-21 04:20:57', '2015-08-21 04:20:57', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Orang-Depan-Komputer.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2015-08-21 04:57:09', '2015-08-21 04:57:09', '', 'Center Dokter dokteran2', '', 'inherit', 'open', 'closed', '', 'center-dokter-dokteran2', '', '', '2015-08-21 04:57:09', '2015-08-21 04:57:09', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Dokter-dokteran2.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2015-08-21 04:57:32', '2015-08-21 04:57:32', '', 'Center Laboratorium1', '', 'inherit', 'open', 'closed', '', 'center-laboratorium1', '', '', '2015-08-21 04:57:32', '2015-08-21 04:57:32', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Laboratorium1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2015-08-21 04:57:36', '2015-08-21 04:57:36', '', 'Center Orang Depan Komputer1', '', 'inherit', 'open', 'closed', '', 'center-orang-depan-komputer1', '', '', '2015-08-21 04:57:36', '2015-08-21 04:57:36', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Orang-Depan-Komputer1.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2015-08-27 02:33:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-27 02:33:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/drpp4/?p=111', 0, 'post', '', 0),
(112, 1, '2015-08-27 03:16:25', '2015-08-27 03:16:25', '', 'Foto Ibuk dan dua anaknya', '', 'inherit', 'open', 'closed', '', 'foto-ibuk-dan-dua-anaknya', '', '', '2015-08-27 03:16:25', '2015-08-27 03:16:25', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/08/Foto-Ibuk-dan-dua-anaknya.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 2, '2015-08-27 07:34:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-27 07:34:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/drpp4/?p=113', 0, 'post', '', 0),
(114, 2, '2015-08-27 07:35:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-27 07:35:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/drpp4/?p=114', 0, 'post', '', 0),
(115, 2, '2015-08-27 07:35:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-27 07:35:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/drpp4/?p=115', 0, 'post', '', 0),
(116, 2, '2015-08-27 07:36:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-27 07:36:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/drpp4/?p=116', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_css`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_css` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `hover` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `wp_revslider_css`
--

INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.boxshadow', NULL, NULL, '{"-moz-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","-webkit-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)"}'),
(15, '.tp-caption.black', NULL, NULL, '{"color":"#000","text-shadow":"none"}'),
(16, '.tp-caption.noshadow', NULL, NULL, '{"text-shadow":"none"}'),
(17, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(18, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(19, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(21, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(22, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(23, '.tp-caption.excerpt', NULL, NULL, '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","padding":"1px 4px 0px 4px","width":"150px","white-space":"normal !important","height":"auto","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(24, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(25, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(28, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.grassfloor', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(160, 179, 151, 1)","width":"4000px","height":"150px","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(36, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(42, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.mediumlarge_light_darkblue', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(44, '.tp-caption.small_light_white', NULL, NULL, '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(45, '.tp-caption.roundedimage', NULL, NULL, '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(46, '.tp-caption.large_bg_black', NULL, NULL, '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(47, '.tp-caption.mediumwhitebg', NULL, NULL, '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(48, '.tp-caption.learning-center', '{"hover":"false"}', '{"font-size":"42px","line-height":"35px","font-weight":"500","font-family":"\\"Lucida Sans Unicode\\", \\"Lucida Grande\\", sans-serif","color":"#046100","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}', '{"font-size":"32px","line-height":"40px","font-weight":"500","font-family":"\\"Lucida Sans Unicode\\", \\"Lucida Grande\\", sans-serif","color":"rgb(4, 97, 0)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(49, '.tp-caption.ada-aja', '{"hover":"false"}', '""', '{"font-size":"40px","line-height":"33px","font-family":"\\"Lucida Sans Unicode\\", \\"Lucida Grande\\", sans-serif","color":"rgb(0, 0, 0)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(50, '.tp-caption.ada-aja2', '{"hover":"false"}', '""', '{"font-size":"21px","line-height":"33px","font-family":"\\"Lucida Sans Unicode\\", \\"Lucida Grande\\", sans-serif","color":"rgb(0, 0, 0)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(51, '.tp-caption.ada-aja3', '{"hover":"false"}', '""', '{"font-size":"40px","line-height":"33px","font-family":"\\"Lucida Sans Unicode\\", \\"Lucida Grande\\", sans-serif","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"solid"}'),
(52, '.tp-caption.ada-aja4', '{"hover":"false"}', '""', '{"font-size":"21px","line-height":"33px","font-family":"\\"Lucida Sans Unicode\\", \\"Lucida Grande\\", sans-serif","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_layer_animations`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_layer_animations` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_settings`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_settings` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `general` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_revslider_settings`
--

INSERT INTO `wp_revslider_settings` (`id`, `general`, `params`) VALUES
(1, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_sliders`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_sliders` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_revslider_sliders`
--

INSERT INTO `wp_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'Home', 'home', '{"title":"Home","alias":"home","shortcode":"[rev_slider home]","source_type":"gallery","post_types":"post","post_category":"category_1","events_filter":"none","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_offset_size":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"off","min_height":"0","width":"950","height":"500","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"5000","shuffle":"off","lazy_load":"off","use_wpml":"off","enable_static_layers":"off","next_slide_on_window_focus":"off","start_js_after_delay":500,"stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"show_timerbar":"top","loop_slide":"loop","position":"center","margin_top":0,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"0","padding":0,"background_color":"#E9E9E9","background_dotted_overlay":"none","show_background_image":"false","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","stop_on_hover":"on","keyboard_navigation":"off","navigation_style":"round","navigaion_type":"bullet","navigation_arrows":"solo","navigaion_always_on":"false","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"use_spinner":"5","spinner_color":"#FFFFFF","use_parallax":"off","disable_parallax_mobile":"off","parallax_type":"mouse","parallax_bg_freeze":"off","parallax_level_1":"5","parallax_level_2":"10","parallax_level_3":"15","parallax_level_4":"20","parallax_level_5":"25","parallax_level_6":"30","parallax_level_7":"35","parallax_level_8":"40","parallax_level_9":"45","parallax_level_10":"50","touchenabled":"on","swipe_velocity":75,"swipe_min_touches":1,"drag_block_vertical":"false","disable_on_mobile":"off","disable_kenburns_on_mobile":"off","hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_arrows_on_mobile":"off","hide_bullets_on_mobile":"off","hide_thumbs_on_mobile":"off","hide_thumbs_under_resolution":0,"hide_thumbs_delay_mobile":1500,"start_with_slide":"1","first_transition_active":"false","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"simplify_ie8_ios4":"off","show_alternative_type":"off","show_alternate_image":"","reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","jquery_noconflict":"on","js_to_body":"false","output_type":"none","custom_css":"","custom_javascript":"","template":"false"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_slides`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_revslider_slides`
--

INSERT INTO `wp_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(5, 1, 2, '{"background_type":"image","image":"http:\\/\\/localhost\\/drpp4\\/wp-content\\/uploads\\/2015\\/08\\/1650-x-1100-Keunggulan-Online-Consultation.jpg","image_id":"96","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center center","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"1500","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"The Learning Center","type":"text","left":483,"top":132,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":400,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":207,"height":33,"serial":"0","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"E-Consultation","type":"text","left":484,"top":165,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja","time":600,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":292,"height":33,"serial":"1","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Everywhere and Everytime Ask The Expert","type":"text","left":486,"top":206,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":800,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":426,"height":33,"serial":"2","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<a href=\\"http:\\/\\/localhost\\/drpp\\" style=\\"border-color:black; color:black\\" class=\\"btn btn-default btn-lg join-today\\">JOIN TODAY<\\/a>","type":"text","left":487,"top":251,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja","time":1000,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":236,"height":33,"serial":3,"endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(6, 1, 1, '{"background_type":"image","image":"http:\\/\\/localhost\\/drpp4\\/wp-content\\/uploads\\/2015\\/08\\/1650-x-1100-Persuasive-Question.jpg","image_id":"97","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center center","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"2000","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"Don''t Know What Happen <br> to Your Child?","type":"text","left":36,"top":-42,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"right","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja","time":600,"endtime":4700,"endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":392,"height":66,"serial":"0","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"10px","max_width":"440px","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Ask The Problem through The Learning Center","type":"text","left":1,"top":45,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"right","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":800,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":474,"height":33,"serial":"1","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<a href=\\"http:\\/\\/localhost\\/drpp\\" style=\\"border-color:black; color:black\\" class=\\"btn btn-default btn-lg join-today\\">JOIN TODAY<\\/a>","type":"text","left":474,"top":313,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":1000,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":124,"height":33,"serial":"2","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Don''t Have Time To Consult Your Children?","type":"text","left":475,"top":162,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":400,"endtime":4700,"endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":145,"height":33,"serial":"3","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(7, 1, 3, '{"background_type":"external","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","image_id":"","slide_bg_color":"#E7E7E7","slide_bg_external":"https:\\/\\/farm8.staticflickr.com\\/7015\\/6842253071_a712473f7d_o.jpg","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"left center","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"2000","kb_easing":"Linear.easeNone","image":"","0":"Remove"}', '[{"text":"Online Symposium","type":"text","left":49,"top":321,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lfb","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja3","time":400,"endtime":4700,"endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":439,"height":33,"serial":"0","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Learning Together With The Expert!","type":"text","left":49,"top":356,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lfb","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja4","time":600,"endtime":4700,"endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":141,"height":33,"serial":"1","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<a href=\\"http:\\/\\/localhost\\/drpp\\" style=\\"border-color:white; color:white\\" class=\\"btn btn-default btn-lg join-today\\">JOIN TODAY<\\/a>","type":"text","left":48,"top":62,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lfb","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"bottom","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja","time":800,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":236,"height":33,"serial":"2","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_static_slides`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_static_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'Header', 'header', 0),
(7, 'Lorem Ipsum', 'lorem-ipsum', 0),
(8, 'Seminar', 'seminar', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(33, 6, 0),
(34, 6, 0),
(35, 6, 0),
(36, 6, 0),
(37, 6, 0),
(39, 6, 0),
(40, 6, 0),
(41, 6, 0),
(42, 6, 0),
(43, 6, 0),
(44, 6, 0),
(47, 6, 0),
(61, 1, 0),
(63, 1, 0),
(65, 1, 0),
(81, 7, 0),
(81, 8, 0),
(85, 7, 0),
(85, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 12),
(7, 7, 'event-categories', '', 0, 2),
(8, 8, 'event-tags', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=103 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Dr. Risqi Utama'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '111'),
(15, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(16, 1, 'wp_user-settings-time', '1439956373'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(19, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(20, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:16:{i:0;s:19:"wpb_visual_composer";i:1;s:17:"our_story_metabox";i:2;s:22:"our_story_text_metabox";i:3;s:20:"contact_page_metabox";i:4;s:16:"helpicon_metabox";i:5;s:18:"homeslider_metabox";i:6;s:17:"volunteer_metabox";i:7;s:16:"usericon_metabox";i:8;s:19:"shoplanding_metabox";i:9;s:12:"revisionsdiv";i:10;s:10:"postcustom";i:11;s:16:"commentstatusdiv";i:12;s:11:"commentsdiv";i:13;s:7:"slugdiv";i:14;s:9:"authordiv";i:15;s:21:"mymetabox_revslider_0";}'),
(23, 1, 'manageedit-eventcolumnshidden', 'a:1:{i:0;s:8:"event-id";}'),
(24, 1, 'image_thumb', 'http://localhost/drpp/wp-content/uploads/2015/08/2-Foto-M.-Risqi-Utama-Saputra.jpg'),
(25, 1, 'image_medium', 'http://localhost/drpp/wp-content/uploads/2015/08/2-Foto-M.-Risqi-Utama-Saputra.jpg'),
(26, 1, 'image', 'http://localhost/drpp/wp-content/uploads/2015/08/2-Foto-M.-Risqi-Utama-Saputra.jpg'),
(27, 1, 'facebook', ''),
(28, 1, 'twitter', ''),
(29, 1, 'dribbble', ''),
(30, 1, 'pinterest', ''),
(31, 1, 'instagram', ''),
(32, 1, 'google_plus', ''),
(33, 1, 'billing_first_name', ''),
(34, 1, 'billing_last_name', ''),
(35, 1, 'billing_company', ''),
(36, 1, 'billing_address_1', ''),
(37, 1, 'billing_address_2', ''),
(38, 1, 'billing_city', ''),
(39, 1, 'billing_postcode', ''),
(40, 1, 'billing_country', ''),
(41, 1, 'billing_state', ''),
(42, 1, 'billing_phone', ''),
(43, 1, 'billing_email', ''),
(44, 1, 'shipping_first_name', ''),
(45, 1, 'shipping_last_name', ''),
(46, 1, 'shipping_company', ''),
(47, 1, 'shipping_address_1', ''),
(48, 1, 'shipping_address_2', ''),
(49, 1, 'shipping_city', ''),
(50, 1, 'shipping_postcode', ''),
(51, 1, 'shipping_country', ''),
(52, 1, 'shipping_state', ''),
(53, 1, 'dbem_phone', ''),
(54, 1, 'nav_menu_recently_edited', '6'),
(55, 1, 'session_tokens', 'a:2:{s:64:"ea6724f9ebfc38473293ffcec1412e62398340e97d6fe12d8f2d90907d0e4a80";a:4:{s:10:"expiration";i:1441352684;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36";s:5:"login";i:1440143084;}s:64:"fda23c551810c8983bb3405c9150d71d07136d6b84aaaa33542526b23dcec4b0";a:4:{s:10:"expiration";i:1441168492;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440995692;}}'),
(56, 2, 'nickname', 'contributor1'),
(57, 2, 'first_name', 'Risqi'),
(58, 2, 'last_name', 'Utama'),
(59, 2, 'description', ''),
(60, 2, 'rich_editing', 'true'),
(61, 2, 'comment_shortcuts', 'false'),
(62, 2, 'admin_color', 'fresh'),
(63, 2, 'use_ssl', '0'),
(64, 2, 'show_admin_bar_front', 'true'),
(65, 2, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(66, 2, 'wp_user_level', '7'),
(67, 2, 'dismissed_wp_pointers', ''),
(68, 2, 'image_thumb', ''),
(69, 2, 'image_medium', ''),
(70, 2, 'image', ''),
(71, 2, 'facebook', ''),
(72, 2, 'twitter', ''),
(73, 2, 'dribbble', ''),
(74, 2, 'pinterest', ''),
(75, 2, 'instagram', ''),
(76, 2, 'google_plus', ''),
(77, 2, 'billing_first_name', ''),
(78, 2, 'billing_last_name', ''),
(79, 2, 'billing_company', ''),
(80, 2, 'billing_address_1', ''),
(81, 2, 'billing_address_2', ''),
(82, 2, 'billing_city', ''),
(83, 2, 'billing_postcode', ''),
(84, 2, 'billing_country', ''),
(85, 2, 'billing_state', ''),
(86, 2, 'billing_phone', ''),
(87, 2, 'billing_email', ''),
(88, 2, 'shipping_first_name', ''),
(89, 2, 'shipping_last_name', ''),
(90, 2, 'shipping_company', ''),
(91, 2, 'shipping_address_1', ''),
(92, 2, 'shipping_address_2', ''),
(93, 2, 'shipping_city', ''),
(94, 2, 'shipping_postcode', ''),
(95, 2, 'shipping_country', ''),
(96, 2, 'shipping_state', ''),
(97, 2, 'dbem_phone', ''),
(99, 2, 'wp_dashboard_quick_press_last_post_id', '113'),
(100, 2, 'manageedit-eventcolumnshidden', 'a:1:{i:0;s:8:"event-id";}'),
(102, 2, 'session_tokens', 'a:1:{s:64:"a113f1d63a860e9da69e6f5e8f55e21dc41dd6acd9ffa1cf69ab78a6abe0e57a";a:4:{s:10:"expiration";i:1440833852;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440661052;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B5Qtlh5.NYClzoEVkpSmdDLr2lZ28J.', 'admin', 'kalikautsar@yahoo.com', '', '2015-08-19 00:35:52', '', 0, 'Dr. Risqi Utama'),
(2, 'contributor1', '$P$BvNqzy1ZFjwnMf.CzjoqNFB9rghe7s0', 'contributor1', 'contributor@learning.com', '', '2015-08-27 07:32:48', '1440660772:$P$B78VB32vOB8EZk4mYLMhrJ3lEP6ieO0', 0, 'Risqi Utama');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
