-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2015 at 05:40 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
`id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `coba1`
--
--
-- Database: `drpp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7dbplugin_st`
--

CREATE TABLE IF NOT EXISTS `wp_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL
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
  `file` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
`id` int(6) NOT NULL,
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
  `transaction_info` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_easypay_recurring`
--

CREATE TABLE IF NOT EXISTS `wp_easypay_recurring` (
`ch_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `choice1` varchar(255) NOT NULL,
  `choice2` varchar(255) NOT NULL,
  `choice3` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
`booking_id` bigint(20) unsigned NOT NULL,
  `event_id` bigint(20) unsigned NOT NULL,
  `person_id` bigint(20) unsigned NOT NULL,
  `booking_spaces` int(5) NOT NULL,
  `booking_comment` text,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_status` tinyint(1) NOT NULL DEFAULT '1',
  `booking_price` decimal(14,4) unsigned NOT NULL DEFAULT '0.0000',
  `booking_tax_rate` decimal(7,4) DEFAULT NULL,
  `booking_taxes` decimal(14,4) DEFAULT NULL,
  `booking_meta` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_events`
--

CREATE TABLE IF NOT EXISTS `wp_em_events` (
`event_id` bigint(20) unsigned NOT NULL,
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
  `group_id` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_em_events`
--

INSERT INTO `wp_em_events` (`event_id`, `post_id`, `event_slug`, `event_owner`, `event_status`, `event_name`, `event_start_time`, `event_end_time`, `event_all_day`, `event_start_date`, `event_end_date`, `post_content`, `event_rsvp`, `event_rsvp_date`, `event_rsvp_time`, `event_rsvp_spaces`, `event_spaces`, `event_private`, `location_id`, `recurrence_id`, `event_category_id`, `event_attributes`, `event_date_created`, `event_date_modified`, `recurrence`, `recurrence_interval`, `recurrence_freq`, `recurrence_byday`, `recurrence_byweekno`, `recurrence_days`, `recurrence_rsvp_days`, `blog_id`, `group_id`) VALUES
(1, 81, 'lorem-ipsum', 1, 1, 'Lorem Ipsum', '00:00:00', '00:00:00', 1, '2015-08-20', '2015-08-29', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.', 0, NULL, '00:00:00', NULL, 0, 0, 1, NULL, NULL, 'a:2:{s:14:"slide_template";s:7:"default";s:13:"charity_event";s:166:"a:3:{s:17:"event_video_image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg";s:18:"event_you_tube_url";s:0:"";s:15:"event_vimeo_url";s:0:"";}";}', '2015-08-19 02:54:47', '2015-08-27 06:23:07', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
(2, 85, 'lorem-ipsum-2', 1, 1, 'Lorem Ipsum', '00:00:00', '00:00:00', 1, '2015-08-29', '2015-08-31', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 0, NULL, '00:00:00', NULL, 0, 0, 0, NULL, NULL, 'a:2:{s:14:"slide_template";s:7:"default";s:13:"charity_event";s:416:"a:3:{s:17:"event_video_image";s:64:"http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg";s:18:"event_you_tube_url";s:123:"<iframe width="1120" height="630" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";s:15:"event_vimeo_url";s:123:"<iframe width="1120" height="630" src="https://www.youtube.com/embed/OZmufS9nKks" frameborder="0" allowfullscreen></iframe>";}";}', '2015-08-19 03:04:16', '2015-08-27 06:19:18', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
(3, 167, 'open-discussion-3-pendidikan-bagi-anak-autis', 1, 1, 'Open Discussion 3 - Pendidikan Bagi Anak Autis', '09:00:00', '14:00:00', 0, '2015-10-17', '2015-10-17', NULL, 0, NULL, '00:00:00', NULL, 0, 0, 2, NULL, NULL, 'a:0:{}', '2015-10-09 07:22:14', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
(4, 171, 'two-weeks-intensive-training-on-children-with-special-needs', 1, 1, 'Two Weeks Intensive Training on Children With Special Needs', '09:00:00', '17:00:00', 0, '2015-10-19', '2015-10-30', NULL, 0, NULL, '00:00:00', NULL, 0, 0, 3, NULL, NULL, 'a:0:{}', '2015-10-09 07:30:12', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_locations`
--

CREATE TABLE IF NOT EXISTS `wp_em_locations` (
`location_id` bigint(20) unsigned NOT NULL,
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
  `location_private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_em_locations`
--

INSERT INTO `wp_em_locations` (`location_id`, `post_id`, `blog_id`, `location_slug`, `location_name`, `location_owner`, `location_address`, `location_town`, `location_state`, `location_postcode`, `location_region`, `location_country`, `location_latitude`, `location_longitude`, `post_content`, `location_status`, `location_private`) VALUES
(1, 82, 0, 'grha-sabha-pramana', 'Grha Sabha Pramana', 1, 'Bulaksumur', 'Yogyakarta', 'DIY', '55171', NULL, 'ID', -7.770502, 110.384872, NULL, 1, 0),
(2, 169, 0, 'rs-melinda-2-lantai-6', 'RS Melinda 2, Lantai 6', 1, ' Jl. Dr. Cipto No. 1', 'Bandung', NULL, NULL, NULL, 'ID', -6.906077, 107.599922, NULL, 1, 0),
(3, 173, 0, 'rs-melinda-2-lantai-6-2', 'RS Melinda 2, Lantai 6', 1, 'Jl. Dr. Cipto No. 1', 'Bandung', NULL, NULL, NULL, 'ID', -6.906077, 107.599922, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_meta`
--

CREATE TABLE IF NOT EXISTS `wp_em_meta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `object_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  `meta_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_tickets`
--

CREATE TABLE IF NOT EXISTS `wp_em_tickets` (
`ticket_id` bigint(20) unsigned NOT NULL,
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
  `ticket_meta` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_tickets_bookings`
--

CREATE TABLE IF NOT EXISTS `wp_em_tickets_bookings` (
`ticket_booking_id` bigint(20) unsigned NOT NULL,
  `booking_id` bigint(20) unsigned NOT NULL,
  `ticket_id` bigint(20) unsigned NOT NULL,
  `ticket_booking_spaces` int(6) NOT NULL,
  `ticket_booking_price` decimal(14,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=6313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(33, 'active_plugins', 'a:9:{i:0;s:29:"charity-apps/charity-apps.php";i:1;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:53:"easy-custom-auto-excerpt/easy-custom-auto-excerpt.php";i:4;s:19:"easypay/easypay.php";i:5;s:33:"events-manager/events-manager.php";i:6;s:27:"js_composer/js_composer.php";i:7;s:23:"revslider/revslider.php";i:8;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:59:"C:\\xampp\\htdocs\\drpp4/wp-content/themes/charity/sidebar.php";i:2;s:86:"C:\\xampp\\htdocs\\drpp4/wp-content/themes/charity/woocommerce/content-widget-product.php";i:3;s:64:"C:\\xampp\\htdocs\\drpp4/wp-content/themes/charity/charity-blog.php";i:4;s:68:"C:\\xampp\\htdocs\\drpp4/wp-content/themes/charity/charity-home-one.php";i:5;s:57:"C:\\xampp\\htdocs\\drpp4/wp-content/themes/charity/style.css";}', 'no'),
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
(79, 'widget_categories', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
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
(91, 'cron', 'a:9:{i:1444970162;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1444980000;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1444988184;a:2:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1444998967;a:3:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1445040000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1445042183;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1445042814;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1446724800;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(93, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.3.1-partial-0.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:3:"4.3";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.3.1-partial-0.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-rollback-0.zip";}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:3:"4.3";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1444966574;s:15:"version_checked";s:3:"4.3";s:12:"translations";a:0:{}}', 'yes'),
(94, '_transient_random_seed', '5a4c879a925d72fc075ed602f682dff7', 'yes'),
(99, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1444966629;s:7:"checked";a:4:{s:7:"charity";s:5:"1.4.1";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
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
(129, 'vpt_option', 'a:96:{s:18:"single_causes_mode";s:0:"";s:21:"charity_home_1_select";s:2:"11";s:21:"charity_home_2_select";s:2:"11";s:21:"charity_home_3_select";s:2:"11";s:24:"charity_home_shoplanding";s:2:"11";s:11:"home_layout";s:3:"one";s:23:"charity_single_cause_id";s:0:"";s:18:"single_causes_date";s:0:"";s:21:"charity_home_4_select";s:0:"";s:21:"charity_home_5_select";s:0:"";s:18:"causes_home_layout";s:0:"";s:7:"favicon";s:89:"http://localhost/drpp4/wp-content/uploads/2015/08/logo-The-Learning-Center-Diapositif.png";s:9:"site_logo";s:84:"http://localhost/drpp4/wp-content/uploads/2015/08/logo-The-Learning-Center-Putih.png";s:20:"site_header_two_logo";s:84:"http://localhost/drpp4/wp-content/uploads/2015/08/logo-The-Learning-Center-Putih.png";s:11:"theme_color";s:7:"#076e3c";s:11:"theme_fonts";s:23:"''Open Sans'', sans-serif";s:13:"sticky_header";s:9:"sticky-no";s:11:"page_layout";s:10:"full-width";s:25:"become_volunteer_btn_text";s:6:"Daftar";s:25:"become_volunteer_btn_link";s:21:"http://localhost/drpp";s:16:"welcome_tag_line";s:37:"Selamat Datang ke The Learning Center";s:12:"info_mail_id";s:0:"";s:10:"copy_right";s:62:"© Copyright 2015, All Rights Reserved by The Learning Center.";s:22:"reserve_textarea_error";s:0:"";s:13:"header_layout";s:3:"one";s:13:"footer_layout";s:3:"one";s:22:"charity-gallery-layout";s:8:"col-sm-6";s:28:"charity-causes-single-layout";s:9:"fullwidth";s:32:"charity_global_donation_cause_id";s:0:"";s:23:"charity_urgent_cause_id";s:0:"";s:16:"charity-facebook";s:19:"http://facebook.com";s:19:"charity-google-plus";s:22:"http://plus.google.com";s:15:"charity-twitter";s:18:"http://twitter.com";s:16:"charity-linkedin";s:19:"http://linkedin.com";s:20:"charity-vimeo-square";s:16:"http://vimeo.com";s:7:"img_404";s:0:"";s:6:"ch_css";s:0:"";s:5:"ch_js";s:0:"";s:21:"coming_soon_page_logo";s:86:"http://theemon.com/c/charity-wp/PlaceHolder/wp-content/uploads/2015/04/launch-logo.png";s:19:"coming_soon_page_bg";s:84:"http://theemon.com/c/charity-wp/PlaceHolder/wp-content/uploads/2015/04/launch-bg.jpg";s:16:"coming_soon_date";s:10:"16-04-2015";s:22:"coming_soon_newsletter";s:12:"[mc4wp_form]";s:16:"coming_soon_mode";s:0:"";s:16:"coming_soon_page";s:0:"";s:26:"coming_soon_copyright_text";s:56:"© Copyright 2014, All Rights Reserved by Charity Theme.";s:20:"ch_hOne_causes_title";s:42:"Siapa saja <strong>Tim Ahli</strong> kami?";s:22:"ch_hOne_how_help_title";s:48:"<strong>Fitur Utama</strong> The Learning Center";s:25:"ch_hOne_latest_news_title";s:15:"Berita Terakhir";s:25:"ch_hOne_testimonial_title";s:48:"Donation Holders say <strong>Read Below</strong>";s:26:"ch_htwo_urgentcauses_title";s:12:"Urgent Cause";s:23:"ch_htwo_allcauses_title";s:10:"All Causes";s:22:"ch_hTwo_how_help_title";s:44:"How can you help? <strong>See below</strong>";s:23:"ch_hTwo_help_video_text";s:21:"Watch our media video";s:25:"ch_hTwo_get_involved_text";s:26:"GET <span>INVOLVED </span>";s:25:"ch_hTwo_latest_news_title";s:39:"Latest News <strong>On Charity</strong>";s:25:"ch_hTwo_testimonial_title";s:25:"What Donation Holders say";s:22:"ch_hThree_causes_title";s:79:"You can help lots of people by donating little. <strong>See our causes</strong>";s:24:"ch_hThree_help_one_title";s:13:"We can change";s:28:"ch_hThree_help_one_sub_title";s:43:"the life of African people with small help ";s:25:"ch_hThree_help_video_text";s:21:"Watch our media video";s:27:"ch_hThree_help_second_title";s:17:"How can you help?";s:31:"ch_hThree_help_second_sub_title";s:9:"See below";s:27:"ch_hThree_latest_news_title";s:36:"Latest News <strong>Charity</strong>";s:27:"ch_hThree_get_involved_text";s:25:"GET <span>INVOLVED</span>";s:27:"ch_hThree_testimonial_title";s:25:"What Donation Holders say";s:29:"ch_shop_landing_product_title";s:71:"Lorem Ipsum is simply dummy printing. <strong>See our products</strong>";s:20:"ch_shop_landing_news";s:53:"Checkout whats going on. <strong>Latest News</strong>";s:27:"ch_shop_landing_testimonial";s:48:"Donation Holders say <strong>Read Below</strong>";s:21:"ch_hfour_causes_title";s:0:"";s:23:"ch_hfour_how_help_title";s:0:"";s:26:"ch_hfour_latest_news_title";s:0:"";s:26:"ch_hfour_testimonial_title";s:0:"";s:21:"ch_hfive_causes_title";s:0:"";s:23:"ch_hfive_how_help_title";s:0:"";s:26:"ch_hfive_latest_news_title";s:0:"";s:26:"ch_hfive_testimonial_title";s:0:"";s:18:"ch_hfive_volunteer";s:0:"";s:12:"ch_404_title";s:33:"No Page Found. Something is Wrong";s:11:"ch_404_desc";s:197:"Phllus felis purus placerat vel augue vitae aliquam tincidunt dolor sed hendrerit diam in mat tis mollis donecut Phasellus felis purus placerat vel augue vitae, Sed hendrerit diam in mattis mollis.";s:18:"ch_our_story_title";s:82:"Apa itu Learning Center? <strong class="border-none">Sekilas tentang kami</strong>";s:15:"ch_work_section";s:64:"Apa fitur The Learning Center? <strong>Fitur utama kami</strong>";s:19:"ch_our_team_section";s:8:"Our Team";s:12:"ch_faq_title";s:60:"Please make sure that you finish <strong>FAQ below.</strong>";s:23:"ch_faq_section_onetitle";s:17:"General Questions";s:23:"ch_faq_section_twotitle";s:17:"General Questions";s:18:"ch_volunteer_title";s:64:"We need you, <strong class="border-none">Help us around</strong>";s:26:"ch_volunteer_process_title";s:71:"How you can apply, <strong class="border-none">Here is process</strong>";s:15:"ch_causes_title";s:27:"<strong>Our Expert</strong>";s:31:"ch_donation_steps_section_title";s:0:"";s:24:"ch_related_section_title";s:0:"";s:25:"ch_mission_services_title";s:68:"See Services, <strong class="border-none">We are on Mission</strong>";s:21:"ch_mission_help_title";s:62:"How We Help, <strong class="border-none">Several Ways</strong>";s:34:"ch_portfolio_related_section_title";s:17:"Related Portfolio";s:25:"ch_donation_message_title";s:29:"You have successfully donated";s:22:"ch_donation_form_title";s:20:"You are donating to.";s:0:"";s:0:"";}', 'yes'),
(131, 'revslider_checktables', '1', 'yes'),
(132, 'revslider-static-css', '.tp-caption a {\ncolor:#ff7302;\ntext-shadow:none;\n-webkit-transition:all 0.2s ease-out;\n-moz-transition:all 0.2s ease-out;\n-o-transition:all 0.2s ease-out;\n-ms-transition:all 0.2s ease-out;\n}\n\n.tp-caption a:hover {\ncolor:#ffa902;\n}', 'yes'),
(133, 'revslider-update-check-short', '1444819790', 'yes'),
(134, 'dbem_events_page', '3', 'yes'),
(135, 'dbem_locations_page', '4', 'yes'),
(136, 'dbem_categories_page', '5', 'yes'),
(137, 'dbem_tags_page', '6', 'yes'),
(138, 'dbem_my_bookings_page', '7', 'yes'),
(139, 'dbem_hello_to_user', '0', 'yes'),
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
(358, 'dbem_bookings_form_msg_bookings_link', 'Manage my bookings', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
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
(370, 'dbem_booking_feedback_already_booked', 'You already have booked a seat at this event.', 'yes'),
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
(460, 'dbem_version', '5.61', 'yes'),
(461, 'wpcf7', 'a:1:{s:7:"version";s:3:"4.3";}', 'yes'),
(462, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(463, 'CF7DBPlugin__version', '2.9.10', 'yes'),
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
(557, 'mc4wp_lite_version', '2.3.15', 'yes'),
(559, 'woocommerce_db_version', '2.3.7', 'yes'),
(564, 'woocommerce_language_pack_version', 'a:2:{i:0;s:5:"2.4.7";i:1;s:0:"";}', 'yes'),
(565, '_transient_woocommerce_cache_excluded_uris', 'a:0:{}', 'yes'),
(572, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(575, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(576, 'wpb_js_composer_license_activation_notified', 'yes', 'yes'),
(580, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(621, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(743, 'widget_archives', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:8:"Archives";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(744, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(746, 'widget_address-widget', 'a:3:{i:1;a:0:{}i:2;a:5:{s:5:"title";s:19:"The Learning Center";s:4:"text";s:487:"The Learning Center adalah platform untuk belajar mengenai perkembangan anak dan masalah-masalahnya. The Learning Center menyediakan konsultasi online dengan dokter dan psikolog sehingga pasien dapat konsultasi di mana pun dan kapan pun. Selain itu, The Learning Center juga menyediakan fitur online\r\nsymposium sehingga siapapun yang tertarik untuk belajar lebih dalam mengenai perkembangan anak, permasalahannya, dan solusinya, dapat belajar secara mandiri dipandu dengan tim ahli kami.";s:7:"address";s:60:"indiGrow Child Development Center Jl. Haruman No. 35 Bandung";s:7:"phoneNo";s:13:"(022) 7303244";s:6:"mailId";s:19:"indigrow1@yahoo.com";}s:12:"_multiwidget";i:1;}', 'yes'),
(747, 'widget_custom_archive', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(748, 'widget_custom_cat', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(749, 'widget_contact-info-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(750, 'widget_about-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(751, 'widget_charity_em_widget', 'a:3:{i:1;a:0:{}i:2;a:11:{s:5:"title";s:8:"Kegiatan";s:5:"limit";s:1:"5";s:5:"scope";s:6:"future";s:7:"orderby";s:44:"event_start_date,event_start_time,event_name";s:5:"order";s:3:"ASC";s:8:"category";s:1:"0";s:15:"all_events_text";s:10:"all events";s:6:"format";s:73:"<li>#_EVENTLINK<ul><li>#_EVENTDATES</li><li>#_LOCATIONTOWN</li></ul></li>";s:14:"no_events_text";s:18:"<li>No events</li>";s:10:"nolistwrap";b:0;s:10:"all_events";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(752, 'widget_charity_flickr', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(753, 'widget_recent-posts', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:11:"Recent Post";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(754, 'widget_social-widget', 'a:3:{i:1;a:0:{}i:2;a:7:{s:5:"title";s:10:"Ikuti Kami";s:8:"facebook";s:40:"https://www.facebook.com/nextinindonesia";s:7:"twitter";s:40:"https://www.facebook.com/nextinindonesia";s:7:"dribble";s:40:"https://www.facebook.com/nextinindonesia";s:9:"pinterest";s:40:"https://www.facebook.com/nextinindonesia";s:5:"gplus";s:40:"https://www.facebook.com/nextinindonesia";s:9:"instagram";s:40:"https://www.facebook.com/nextinindonesia";}s:12:"_multiwidget";i:1;}', 'yes'),
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
(1326, 'em_last_modified', '1444375812', 'yes'),
(1400, 'sidebars_widgets', 'a:16:{s:19:"wp_inactive_widgets";a:0:{}s:23:"default-charity-section";a:3:{i:0;s:12:"categories-2";i:1;s:10:"archives-2";i:2;s:14:"recent-posts-2";}s:22:"footer-one-sidebar-one";a:1:{i:0;s:16:"address-widget-2";}s:22:"footer-one-sidebar-two";a:1:{i:0;s:19:"charity_em_widget-2";}s:24:"footer-one-sidebar-three";a:2:{i:0;s:15:"social-widget-2";i:1;s:10:"nav_menu-2";}s:22:"footer-two-sidebar-one";a:0:{}s:22:"footer-two-sidebar-two";a:0:{}s:24:"footer-two-sidebar-three";a:0:{}s:23:"footer-two-sidebar-four";a:0:{}s:24:"footer-three-sidebar-one";a:0:{}s:24:"footer-three-sidebar-two";a:0:{}s:26:"footer-three-sidebar-three";a:0:{}s:21:"causes-wisget-section";a:0:{}s:12:"charity-shop";a:0:{}s:20:"event-widget-section";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(2117, 'dbem_small_calendar_long_events', '0', 'yes'),
(2120, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(2210, 'revslider-latest-version', '5.0.9', 'yes'),
(2402, 'category_children', 'a:0:{}', 'yes'),
(2447, 'WPLANG', '', 'yes'),
(2529, '_site_transient_timeout_browser_229c156fb8caef6704dc9bd068964647', '1441247586', 'yes'),
(2530, '_site_transient_browser_229c156fb8caef6704dc9bd068964647', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.157";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3734, '_site_transient_timeout_browser_51e5383ef3804ac31fc1703e62555604', '1443002121', 'yes'),
(3735, '_site_transient_browser_51e5383ef3804ac31fc1703e62555604', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"45.0.2454.85";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3768, '_transient_timeout_geoip_125.163.225.241', '1444023300', 'no'),
(3769, '_transient_geoip_125.163.225.241', 'ID', 'no'),
(3786, '_transient_timeout_wc_low_stock_count', '1446010712', 'no'),
(3787, '_transient_wc_low_stock_count', '0', 'no'),
(3788, '_transient_timeout_wc_outofstock_count', '1446010712', 'no'),
(3789, '_transient_wc_outofstock_count', '0', 'no'),
(4359, 'recently_activated', 'a:2:{s:19:"easypay/easypay.php";i:1444820345;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:1444819856;}', 'yes'),
(4361, '_transient_timeout_wc_upgrade_notice_2.4.4', '1443594262', 'no'),
(4362, '_transient_wc_upgrade_notice_2.4.4', '', 'no'),
(4699, 'woocommerce_admin_notices', 'a:1:{i:1;s:6:"update";}', 'yes'),
(4700, 'woocommerce_version', '2.4.7', 'yes'),
(4703, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(4751, '_transient_timeout_geoip_36.78.57.224', '1444630029', 'no'),
(4752, '_transient_geoip_36.78.57.224', 'ID', 'no'),
(5649, '_transient_timeout_geoip_::1', '1445424554', 'no'),
(5650, '_transient_geoip_::1', '', 'no'),
(5651, '_transient_timeout_external_ip_address_::1', '1445424555', 'no'),
(5652, '_transient_external_ip_address_::1', '182.253.141.43', 'no'),
(5653, '_transient_timeout_geoip_182.253.141.43', '1445424556', 'no'),
(5654, '_transient_geoip_182.253.141.43', 'ID', 'no'),
(5667, '_site_transient_timeout_browser_3c0ada997d3027c56bc3eb7633c1be76', '1445424610', 'yes'),
(5668, '_site_transient_browser_3c0ada997d3027c56bc3eb7633c1be76', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"45.0.2454.101";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(5669, '_transient_timeout_wc_admin_report', '1444975763', 'no'),
(5670, '_transient_wc_admin_report', 'a:2:{s:32:"6e24e7611ccda50502f00052d8623584";a:0:{}s:32:"8b309ad352fa5cb67f3d0037aa2395a8";a:0:{}}', 'no'),
(5683, '_site_transient_timeout_available_translations', '1444830705', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5684, '_site_transient_available_translations', 'a:65:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-12 20:42:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:60:"https://downloads.wordpress.org/translation/core/4.3/ary.zip";s:3:"iso";a:2:{i:1;s:5:"ar_MA";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-27 19:48:02";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 19:15:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 08:45:05";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 04:19:00";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 09:17:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 13:35:36";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 13:22:20";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-09 10:05:26";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-03 22:30:30";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-13 23:56:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 20:57:21";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:20:50";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 18:40:22";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.2.5";s:7:"updated";s:19:"2015-09-29 17:53:06";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.5/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 00:53:46";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-05 16:34:02";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-25 13:32:40";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 09:17:58";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-06 20:37:24";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-10 15:08:48";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-27 14:28:09";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.8/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 15:13:38";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-14 08:49:12";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 12:47:55";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 17:47:38";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-22 13:47:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 06:13:38";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-03 02:18:06";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:59:51";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 07:48:28";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.8/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:45:19";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 06:57:09";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-27 13:38:57";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.8/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 14:23:10";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 02:24:55";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:44:05";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-03 10:08:50";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-31 19:45:06";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:16:31";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 10:43:45";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 14:10:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 05:50:57";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.8/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-12 08:09:24";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 00:50:06";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 19:10:20";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(5928, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1444842446', 'yes'),
(5929, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5472";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3428";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3390";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2884";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2640";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2101";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2061";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1937";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1892";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1872";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1855";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1826";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1730";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1534";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1449";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1411";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1248";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1230";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1217";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1198";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1091";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1034";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"993";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"949";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"906";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"890";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"846";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"837";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"824";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"820";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"808";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"772";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"744";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"716";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"705";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"698";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"696";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"693";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"683";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"681";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"672";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"660";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"654";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"650";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"627";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"613";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"610";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"605";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"601";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"598";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"586";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"572";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"571";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"557";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"556";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"555";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"555";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"552";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"543";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"541";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"533";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"511";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"507";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"496";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"495";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"495";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"489";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"486";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"475";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"471";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"460";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"457";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"448";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"433";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"431";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"430";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"422";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"420";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"415";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"408";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"393";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"391";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"390";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"389";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"380";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"380";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"376";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"374";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"373";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"372";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"368";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"367";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"366";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"366";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"364";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"364";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"361";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"357";}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";s:3:"356";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"356";}}', 'yes'),
(5944, 'revslider-valid-notice', 'false', 'yes'),
(5970, 'tonjoo_ecae_options', 'a:53:{s:14:"excerpt_method";s:9:"paragraph";s:5:"width";s:3:"500";s:15:"strip_shortcode";s:3:"yes";s:16:"strip_empty_tags";s:3:"yes";s:15:"disable_on_feed";s:3:"yes";s:14:"special_method";s:2:"no";s:7:"justify";s:2:"no";s:17:"extra_html_markup";s:4:"span";s:10:"show_image";s:3:"yes";s:14:"image_position";s:4:"none";s:16:"image_width_type";s:6:"manual";s:11:"image_width";s:3:"300";s:17:"image_padding_top";s:1:"5";s:19:"image_padding_right";s:1:"5";s:20:"image_padding_bottom";s:1:"5";s:18:"image_padding_left";s:1:"5";s:22:"location_settings_type";s:5:"basic";s:4:"home";s:3:"yes";s:10:"front_page";s:3:"yes";s:7:"archive";s:3:"yes";s:6:"search";s:3:"yes";s:13:"advanced_home";s:3:"all";s:19:"advanced_home_width";s:1:"0";s:18:"advanced_frontpage";s:3:"all";s:24:"advanced_frontpage_width";s:1:"0";s:16:"advanced_archive";s:3:"all";s:22:"advanced_archive_width";s:1:"0";s:15:"advanced_search";s:3:"all";s:21:"advanced_search_width";s:1:"0";s:18:"advanced_page_main";s:7:"disable";s:24:"advanced_page_main_width";s:1:"0";s:21:"button_display_option";s:6:"normal";s:9:"read_more";s:9:"Read more";s:21:"read_more_text_before";s:0:"";s:15:"readmore_inline";s:2:"no";s:15:"read_more_align";s:4:"left";s:11:"button_font";s:0:"";s:16:"button_font_size";s:2:"14";s:11:"button_skin";s:20:"ecae-buttonskin-none";s:10:"custom_css";s:0:"";s:15:"excerpt_in_page";s:0:"";s:14:"home_post_type";s:0:"";s:13:"home_category";s:0:"";s:19:"frontpage_post_type";s:0:"";s:18:"frontpage_category";s:0:"";s:17:"archive_post_type";s:0:"";s:16:"archive_category";s:0:"";s:16:"search_post_type";s:0:"";s:15:"search_category";s:0:"";s:24:"excerpt_in_page_advanced";s:0:"";s:13:"advanced_page";s:0:"";s:14:"page_post_type";s:28:"a:1:{i:0;a:1:{i:0;s:1:"0";}}";s:13:"page_category";s:28:"a:1:{i:0;a:1:{i:0;s:1:"0";}}";}', 'yes'),
(6010, '_site_transient_timeout_browser_d345f0fc2588ba33770d312d084b0dfc', '1445494160', 'yes'),
(6011, '_site_transient_browser_d345f0fc2588ba33770d312d084b0dfc', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"45.0.2454.101";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(6280, '_site_transient_timeout_theme_roots', '1444968363', 'yes'),
(6281, '_site_transient_theme_roots', 'a:4:{s:7:"charity";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(6291, '_site_transient_timeout_browser_4b6d642a412c1556180c5e1798cbfc0e', '1445571430', 'yes'),
(6292, '_site_transient_browser_4b6d642a412c1556180c5e1798cbfc0e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"46.0.2490.71";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(6293, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1444966630;s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.5";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.5.zip";s:14:"upgrade_notice";s:78:"Version 3.1.5 contains security fixes and is highly recommended for all users.";s:10:"autoupdate";b:1;}s:37:"mailchimp-for-wp/mailchimp-for-wp.php";O:8:"stdClass":6:{s:2:"id";s:5:"41550";s:4:"slug";s:16:"mailchimp-for-wp";s:6:"plugin";s:37:"mailchimp-for-wp/mailchimp-for-wp.php";s:11:"new_version";s:6:"2.3.16";s:3:"url";s:47:"https://wordpress.org/plugins/mailchimp-for-wp/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/mailchimp-for-wp.2.3.16.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.3";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.3.zip";}s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";O:8:"stdClass":6:{s:2:"id";s:5:"16507";s:4:"slug";s:36:"contact-form-7-to-database-extension";s:6:"plugin";s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";s:11:"new_version";s:6:"2.9.10";s:3:"url";s:67:"https://wordpress.org/plugins/contact-form-7-to-database-extension/";s:7:"package";s:79:"https://downloads.wordpress.org/plugin/contact-form-7-to-database-extension.zip";}s:53:"easy-custom-auto-excerpt/easy-custom-auto-excerpt.php";O:8:"stdClass":6:{s:2:"id";s:5:"39321";s:4:"slug";s:24:"easy-custom-auto-excerpt";s:6:"plugin";s:53:"easy-custom-auto-excerpt/easy-custom-auto-excerpt.php";s:11:"new_version";s:5:"2.3.0";s:3:"url";s:55:"https://wordpress.org/plugins/easy-custom-auto-excerpt/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/easy-custom-auto-excerpt.zip";}s:33:"events-manager/events-manager.php";O:8:"stdClass":6:{s:2:"id";s:4:"4075";s:4:"slug";s:14:"events-manager";s:6:"plugin";s:33:"events-manager/events-manager.php";s:11:"new_version";s:5:"5.6.1";s:3:"url";s:45:"https://wordpress.org/plugins/events-manager/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/events-manager.5.6.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.4.7";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.4.7.zip";}}}', 'yes'),
(6295, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1445009846', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(6296, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Sep 2015 10:36:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.4-alpha-35208";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.3.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2015/09/wordpress-4-3-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/news/2015/09/wordpress-4-3-1/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Sep 2015 15:22:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3914";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:439:"WordPress 4.3.1 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. This release addresses three issues, including two cross-site scripting vulnerabilities and a potential privilege escalation. WordPress versions 4.3 and earlier are vulnerable to a cross-site scripting vulnerability when processing shortcode tags (CVE-2015-5714). Reported by [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Samuel Sidler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4022:"<div class="storycontent">\n<p>WordPress 4.3.1 is now available. This is a<strong> security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>This release addresses three issues, including two cross-site scripting vulnerabilities and a potential privilege escalation.</p>\n<ul>\n<li>WordPress versions 4.3 and earlier are vulnerable to a cross-site scripting vulnerability when processing shortcode tags (CVE-2015-5714). Reported by Shahar Tal and Netanel Rubin of <a href="http://checkpoint.com/">Check Point</a>.</li>\n<li>A separate cross-site scripting vulnerability was found in the user list table. Reported by Ben Bidner of the WordPress security team.</li>\n<li>Finally, in certain cases, users without proper permissions could publish private posts and make them sticky (CVE-2015-5715). Reported by Shahar Tal and Netanel Rubin of <a href="http://checkpoint.com/">Check Point</a>.</li>\n</ul>\n<p>Our thanks to those who have practiced <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a> of security issues.</p>\n<p>WordPress 4.3.1 also fixes twenty-six bugs. For more information, see the <a href="https://codex.wordpress.org/Version_4.3.1">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/4.3/?rev=34199&amp;stop_rev=33647">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.3.1</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.3.1.</p>\n</div>\n<p>Thanks to everyone who contributed to 4.3.1:</p>\n<p><a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/extendwings">Daisuke Takahashi</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/DrewAPicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/dustinbolton">dustinbolton</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/hauvong">hauvong</a>, <a href="https://profiles.wordpress.org/macmanx">James Huff</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jobst">jobst</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nikeo">nikeo</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/figureone">Paul Ryan</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/otto42">Samuel Wood</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/SergeyBiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/tmatsuur">tmatsuur</a>, <a href="https://profiles.wordpress.org/liljimmi">Tracy Levesque</a>, <a href="https://profiles.wordpress.org/umeshnevase">Umesh Nevase</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/welcher">welcher</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/09/wordpress-4-3-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress 4.3 “Billie”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2015/08/billie/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wordpress.org/news/2015/08/billie/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 18 Aug 2015 19:12:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3845";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:352:"Version 4.3 of WordPress, named &#8220;Billie&#8221; in honor of jazz singer Billie Holiday, is available for download or update in your WordPress dashboard. New features in 4.3 make it even easier to format your content and customize your site. Menus in the Customizer Create your menu, update it, and assign it, all while live-previewing in [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:22598:"<p style="margin: 0;height: 0"><img src="https://wordpress.org/news/files/2015/08/WordPress-4-3-billie-1024x574.png" alt="WordPress 4.3 - &quot;Billie&quot;" width="692" height="388" class="alignnone size-large wp-image-3896" style="height:0px;width: 0px;margin: 0" srcset="https://wordpress.org/news/files/2015/08/WordPress-4-3-billie-300x168.png 300w, https://wordpress.org/news/files/2015/08/WordPress-4-3-billie-1024x574.png 1024w, https://wordpress.org/news/files/2015/08/WordPress-4-3-billie.png 3018w" sizes="(max-width: 692px) 100vw, 692px" /></p>\n<p>Version 4.3 of WordPress, named &#8220;Billie&#8221; in honor of jazz singer <a href="https://en.wikipedia.org/wiki/Billie_Holiday">Billie Holiday</a>, is available for <a href="https://wordpress.org/download/">download</a> or update in your WordPress dashboard. New features in 4.3 make it even easier to format your content and customize your site.</p>\n<p><iframe width=''692'' height=''389'' src=''https://videopress.com/embed/T54Iy7Tw?hd=1'' frameborder=''0'' allowfullscreen></iframe><script src=''https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243''></script></p>\n<hr />\n<h2>Menus in the Customizer</h2>\n<div><img src="//s.w.org/images/core/4.3/menu-customizer.png" alt="" /></div>\n<p>Create your menu, update it, and assign it, all while live-previewing in the customizer. The streamlined customizer design provides a mobile-friendly and accessible interface. With every release, it becomes easier and faster to make your site just the way you want it.</p>\n<hr />\n<h2>Formatting Shortcuts</h2>\n<div style="margin-bottom: 0"><div style="width: 640px; " class="wp-video"><!--[if lt IE 9]><script>document.createElement(''video'');</script><![endif]-->\n<video class="wp-video-shortcode" id="video-3845-1" width="640" height="360" loop="1" autoplay="1" preload="metadata" controls="controls"><source type="video/mp4" src="//s.w.org/images/core/4.3/formatting.mp4?_=1" /><source type="video/webm" src="//s.w.org/images/core/4.3/formatting.webm?_=1" /><source type="video/ogg" src="//s.w.org/images/core/4.3/formatting.ogv?_=1" /><a href="//s.w.org/images/core/4.3/formatting.mp4">//s.w.org/images/core/4.3/formatting.mp4</a></video></div></div>\n<p>Your writing flow just got faster with new formatting shortcuts in WordPress 4.3. Use asterisks to create lists and number signs to make a heading. No more breaking your flow; your text looks great with a <code>*</code> and a <code>#</code>.</p>\n<hr />\n<h2>Site Icons</h2>\n<p><img src="//s.w.org/images/core/4.3/site-icon-customizer.png" alt="" /><br />\n&nbsp;<br />\nSite icons represent your site in browser tabs, bookmark menus, and on the home screen of mobile devices. Add your unique site icon in the customizer; it will even stay in place when you switch themes. Make your whole site reflect your brand.</p>\n<hr />\n<h2>Better Passwords</h2>\n<p><img src="//s.w.org/images/core/4.3/better-passwords.png" alt="" /><br />\n&nbsp;<br />\nKeep your site more secure with WordPress’ improved approach to passwords. Instead of receiving passwords via email, you’ll get a password reset link. When you add new users to your site or edit a user profile, WordPress will automatically generate a secure password.</p>\n<hr />\n<h2>Other improvements</h2>\n<ul>\n<li><strong>A smoother admin experience</strong> &#8211; Refinements to the list view across the admin make your WordPress more accessible and easier to work with on any device.</li>\n<li><strong>Comments turned off on pages</strong> &#8211; All new pages that you create will have comments turned off. Keep discussions to your blog, right where they’re supposed to happen.</li>\n<li><strong>Customize your site quickly</strong> &#8211; Wherever you are on the front-end, you can click the customize link in the toolbar to swiftly make changes to your site.</li>\n</ul>\n<hr />\n<h2>The Team</h2>\n<p><a class="alignleft" href="https://profiles.wordpress.org/obenland"><img src="https://www.gravatar.com/avatar/2370ea5912750f4cb0f3c51ae1cbca55?d=mm&amp;s=180&amp;r=G" alt="Konstantin Obenland" width="80" height="80" /></a>This release was led by <a href="http://konstantin.obenland.it/">Konstantin Obenland</a>, with the help of these fine individuals. There are 246 contributors with props in this release. Pull up some Billie Holiday on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/mercime">@mercime</a>, <a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/adamkheckler">Adam Heckler</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bjorklund</a>, <a href="https://profiles.wordpress.org/akirk">Alex Kirk</a>, <a href="https://profiles.wordpress.org/viper007bond">Alex Mills (Viper007Bond)</a>, <a href="https://profiles.wordpress.org/tellyworth">Alex Shiels</a>, <a href="https://profiles.wordpress.org/deconf">Alin Marcu</a>, <a href="https://profiles.wordpress.org/andfinally">andfinally</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andg">Andrea Gandino</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/afragen">Andy Fragen</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/antpb">Anthony Burchell</a>, <a href="https://profiles.wordpress.org/anubisthejackle">anubisthejackle</a>, <a href="https://profiles.wordpress.org/aramzs">Aram Zucker-Scharff</a>, <a href="https://profiles.wordpress.org/arjunskumar">Arjun S Kumar</a>, <a href="https://profiles.wordpress.org/avnarun">avnarun</a>, <a href="https://profiles.wordpress.org/brad2dabone">Bad Feather</a>, <a href="https://profiles.wordpress.org/bcole808">Ben Cole</a>, <a href="https://profiles.wordpress.org/empireoflight">Ben Dunkle</a>, <a href="https://profiles.wordpress.org/binarykitten">BinaryKitten</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bjornjohansen">Bjorn Johansen</a>, <a href="https://profiles.wordpress.org/bolo1988">bolo1988</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="https://profiles.wordpress.org/bramd">Bram Duvigneau</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/krogsgard">Brian Krogsgard</a>, <a href="https://profiles.wordpress.org/brianlayman">Brian Layman</a>, <a href="https://profiles.wordpress.org/icaleb">Caleb Burks</a>, <a href="https://profiles.wordpress.org/calevans">CalEvans</a>, <a href="https://profiles.wordpress.org/chasewiseman">Chase Wiseman</a>, <a href="https://profiles.wordpress.org/chipbennett">Chip Bennett</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/craig-ralston">Craig Ralston</a>, <a href="https://profiles.wordpress.org/extendwings">Daisuke Takahashi</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/redsweater">Daniel Jalkut (Red Sweater)</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Mte90 Scasciafratte</a>, <a href="https://profiles.wordpress.org/daniluk4000">daniluk4000</a>, <a href="https://profiles.wordpress.org/dmchale">Dave McHale</a>, <a href="https://profiles.wordpress.org/daveal">DaveAl</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/daxelrod">daxelrod</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/realloc">Dennis Ploetner</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dipeshkakadiya">dipesh.kakadiya</a>, <a href="https://profiles.wordpress.org/dmsnell">dmsnell</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/dustinbolton">dustinbolton</a>, <a href="https://profiles.wordpress.org/kucrut">Dzikri Aziz</a>, <a href="https://profiles.wordpress.org/eclev91">eclev91</a>, <a href="https://profiles.wordpress.org/eligijus">eligijus</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/ebinnion">Eric Binnion</a>, <a href="https://profiles.wordpress.org/ericmann">Eric Mann</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/francoeurdavid">francoeurdavid</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/gabrielperezs">gabrielperezs</a>, <a href="https://profiles.wordpress.org/voldemortensen">Garth Mortensen</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/glennm">glennm</a>, <a href="https://profiles.wordpress.org/gtuk">gtuk</a>, <a href="https://profiles.wordpress.org/hailin">hailin</a>, <a href="https://profiles.wordpress.org/hauvong">hauvong</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrikakselsen">henrikakselsen</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/hrishiv90">Hrishikesh Vaipurkar</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/isaacchapman">isaacchapman</a>, <a href="https://profiles.wordpress.org/izem">izem</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jacklenox">Jack Lenox</a>, <a href="https://profiles.wordpress.org/jadpm">jadpm</a>, <a href="https://profiles.wordpress.org/macmanx">James Huff</a>, <a href="https://profiles.wordpress.org/jamesgol">jamesgol</a>, <a href="https://profiles.wordpress.org/jancbeck">jancbeck</a>, <a href="https://profiles.wordpress.org/jfarthing84">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jmichaelward">Jeremy Ward</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/jipmoors">jipmoors</a>, <a href="https://profiles.wordpress.org/eltobiano">jjberry</a>, <a href="https://profiles.wordpress.org/jobst">Jobst Schmalenbach</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/jkudish">Joey Kudish</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/picard102">John Leschinski</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/maxxsnake">Josh Davis</a>, <a href="https://profiles.wordpress.org/jpyper">Jpyper</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/juliobox">Julio Potier</a>, <a href="https://profiles.wordpress.org/jtsternberg">Justin Sternberg</a>, <a href="https://profiles.wordpress.org/ungestaltbar">Kai</a>, <a href="https://profiles.wordpress.org/karinchristen">karinchristen</a>, <a href="https://profiles.wordpress.org/karpstrucking">karpstrucking</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/kevkoeh">Kevin Koehler</a>, <a href="https://profiles.wordpress.org/kitchin">kitchin</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="https://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="https://profiles.wordpress.org/leogopal">Leo Gopal</a>, <a href="https://profiles.wordpress.org/loushou">loushou</a>, <a href="https://profiles.wordpress.org/lumaraf">Lumaraf</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/nofearinc">Mario Peshev</a>, <a href="https://profiles.wordpress.org/clorith">Marius (Clorith)</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/marsjaninzmarsa">marsjaninzmarsa</a>, <a href="https://profiles.wordpress.org/martinsachse">martinsachse</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/veraxus">Matt van Andel</a>, <a href="https://profiles.wordpress.org/mattwiebe">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/nikonratm">Michael</a>, <a href="https://profiles.wordpress.org/mdawaffe">Michael Adams (mdawaffe)</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michaelryanmcneill">michaelryanmcneill</a>, <a href="https://profiles.wordpress.org/mcguive7">Mickey Kay</a>, <a href="https://profiles.wordpress.org/mihai">mihai</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mnelson4">Mike Nelson</a>, <a href="https://profiles.wordpress.org/dh-shredder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinic</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mrutz">mrutz</a>, <a href="https://profiles.wordpress.org/nabil_kadimi">nabil_kadimi</a>, <a href="https://profiles.wordpress.org/Nao">Naoko Takano</a>, <a href="https://profiles.wordpress.org/nazmulhossainnihal">Nazmul Hossain Nihal</a>, <a href="https://profiles.wordpress.org/nicholas_io">nicholas_io</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nickmomrik">Nick Momrik</a>, <a href="https://profiles.wordpress.org/nikeo">nikeo</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/onnimonni">Onni Hakala</a>, <a href="https://profiles.wordpress.org/ozh">Ozh</a>, <a href="https://profiles.wordpress.org/pareshradadiya-1">Paresh Radadiya</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/djpaul">Paul Gibbs</a>, <a href="https://profiles.wordpress.org/figureone">Paul Ryan</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/gungeekatx">Pete Nelson</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/peterrknight">PeterRKnight</a>, <a href="https://profiles.wordpress.org/philiparthurmoore">Philip Arthur Moore</a>, <a href="https://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="https://profiles.wordpress.org/posykrat">posykrat</a>, <a href="https://profiles.wordpress.org/pragunbhutani">pragunbhutani</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/rarylson">rarylson</a>, <a href="https://profiles.wordpress.org/lamosty">Rastislav Lamos</a>, <a href="https://profiles.wordpress.org/rauchg">rauchg</a>, <a href="https://profiles.wordpress.org/ravinderk">Ravinder Kumar</a>, <a href="https://profiles.wordpress.org/rclations">RC Lations</a>, <a href="https://profiles.wordpress.org/greuben">Reuben Gunday</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld</a>, <a href="https://profiles.wordpress.org/ritteshpatel">Ritesh Patel</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/rdall">Robert Dall</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/rommelxcastro">Rommel Castro</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, <a href="https://profiles.wordpress.org/rhurling">Rouven Hurling</a>, <a href="https://profiles.wordpress.org/ryan">Ryan Boren</a>, <a href="https://profiles.wordpress.org/rmarks">Ryan Marks</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/ohryan">Ryan Neudorf</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/sagarjadhav">Sagar Jadhav</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/santagada">santagada</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/scruffian">scruffian</a>, <a href="https://profiles.wordpress.org/seanchayes">Sean Hayes</a>, <a href="https://profiles.wordpress.org/sebastiantiede">Sebastian</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shooper">Shawn Hooper</a>, <a href="https://profiles.wordpress.org/designsimply">Sheri Bigelow</a>, <a href="https://profiles.wordpress.org/simonwheatley">Simon Wheatley</a>, <a href="https://profiles.wordpress.org/siobhan">Siobhan</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/stephdau">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stevegrunwell">Steve Grunwell</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stuartshields">stuartshields</a>, <a href="https://profiles.wordpress.org/sudar">Sudar</a>, <a href="https://profiles.wordpress.org/sunnyratilal">Sunny Ratilal</a>, <a href="https://profiles.wordpress.org/taka2">taka2</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/thorbrink">Thor Brink</a>, <a href="https://profiles.wordpress.org/creativeinfusion">Tim Smith</a>, <a href="https://profiles.wordpress.org/tlexcellent">tlexcellent</a>, <a href="https://profiles.wordpress.org/tmatsuur">tmatsuur</a>, <a href="https://profiles.wordpress.org/tobiasbg">TobiasBg</a>, <a href="https://profiles.wordpress.org/tomasm">Tomas Mackevicius</a>, <a href="https://profiles.wordpress.org/tomharrigan">TomHarrigan</a>, <a href="https://profiles.wordpress.org/toro_unit">Toro_Unit (Hiroshi Urabe)</a>, <a href="https://profiles.wordpress.org/toru">Toru Miki</a>, <a href="https://profiles.wordpress.org/liljimmi">Tracy (LilJimmi) Levesque</a>, <a href="https://profiles.wordpress.org/tryon">Tryon Eggleston</a>, <a href="https://profiles.wordpress.org/tywayne">Ty Carlson</a>, <a href="https://profiles.wordpress.org/desaiuditd">Udit Desai</a>, <a href="https://profiles.wordpress.org/umeshnevase">Umesh Nevase</a>, <a href="https://profiles.wordpress.org/vivekbhusal">vivekbhusal</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/willnorris">Will Norris</a>, <a href="https://profiles.wordpress.org/willgladstone">willgladstone</a>, <a href="https://profiles.wordpress.org/earnjam">William Earnhardt</a>, <a href="https://profiles.wordpress.org/willstedt">willstedt</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/ysalame">Yuri Salame</a>, <a href="https://profiles.wordpress.org/oxymoron">Zach Wills</a>, <a href="https://profiles.wordpress.org/katzwebdesign">Zack Katz</a>, and <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>.\n<p>&nbsp;</p>\n<p>Special thanks go to <a href="http://siobhanmckeown.com/">Siobhan McKeown</a> for producing the release video, <a href="http://hugobaeta.com/">Hugo Baeta</a> for the design, and <a href="http://jacklenox.com/">Jack Lenox</a> for the voice-over.</p>\n<p>Finally, thanks to all of the contributors who provided subtitles for the release video, which at last count had been translated into 30 languages!</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.4!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wordpress.org/news/2015/08/billie/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.2.4 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2015/08/wordpress-4-2-4-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:92:"https://wordpress.org/news/2015/08/wordpress-4-2-4-security-and-maintenance-release/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 04 Aug 2015 12:10:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3827";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:397:"WordPress 4.2.4 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. This release addresses six issues, including three cross-site scripting vulnerabilities and a potential SQL injection that could be used to compromise a site, which were discovered by Marc-Alexandre Montpas of Sucuri, Helen Hou-Sandí [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Samuel Sidler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2011:"<p>WordPress 4.2.4 is now available. This is a<strong> security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>This release addresses six issues, including three cross-site scripting vulnerabilities and a potential SQL injection that could be used to compromise a site, which were discovered by <a href="https://sucuri.net/">Marc-Alexandre Montpas</a> of Sucuri, <a href="http://helenhousandi.com/">Helen Hou-Sandí</a> of the WordPress security team, <a href="http://www.checkpoint.com/">Netanel Rubin</a> of Check Point, and <a href="https://hackerone.com/reactors08">Ivan Grigorov</a>. It also includes a fix for a potential timing side-channel attack, discovered by <a href="http://www.scrutinizer-ci.com/">Johannes Schmitt</a> of Scrutinizer, and prevents an attacker from locking a post from being edited, discovered by <a href="https://www.linkedin.com/in/symbiansymoh">Mohamed A. Baset</a>.</p>\n<p>Our thanks to those who have practiced <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a> of security issues.</p>\n<p>WordPress 4.2.4 also fixes four bugs. For more information, see the <a href="https://codex.wordpress.org/Version_4.2.4">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/4.2?rev=33573&amp;stop_rev=33396">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.2.4</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.2.4.</p>\n<p><em>Already testing WordPress 4.3? The second release candidate is now available (<a href="https://wordpress.org/wordpress-4.3-RC2.zip">zip</a>) and it contains these fixes. For more on 4.3, see <a href="https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/">the RC 1 announcement post</a>.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wordpress.org/news/2015/08/wordpress-4-2-4-security-and-maintenance-release/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.3 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2015 23:50:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3817";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:340:"The release candidate for WordPress 4.3 is now available. We&#8217;ve made more than 100 changes since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.3 on Tuesday, August 18, but we [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2256:"<p>The release candidate for WordPress 4.3 is now available.</p>\n<p>We&#8217;ve made more than <a href="https://core.trac.wordpress.org/log/trunk?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33512&amp;stop_rev=33372&amp;limit=120">100 changes</a> since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.3 on <strong>Tuesday, August 18</strong>, but we need your help to get there.</p>\n<p>If you haven’t tested 4.3 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.3 RC1, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.3-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, check out the <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.3 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.3 before next week. If you find compatibility problems, we never want to break things, so please be sure to post to the support forums so we can figure those out before the final release.</p>\n<p>Be sure to <a href="https://make.wordpress.org/core/">follow along the core development blog</a>, where we&#8217;ll continue to post <a href="https://make.wordpress.org/core/tag/dev-notes+4-3/">notes for developers</a> for 4.3.</p>\n<p><em>Drei Monate Arbeit</em><br />\n<em>Endlich das Ziel vor Augen</em><br />\n<em>Bald hab ich Urlaub!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.2.3 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2015/07/wordpress-4-2-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/news/2015/07/wordpress-4-2-3/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Jul 2015 11:21:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3807";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:380:"WordPress 4.2.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.2.2 and earlier are affected by a cross-site scripting vulnerability, which could allow users with the Contributor or Author role to compromise a site. This was initially reported by Jon Cave and [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gary Pendergast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2708:"<p>WordPress 4.2.3 is now available. This is a<strong> security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.2.2 and earlier are affected by a cross-site scripting vulnerability, which could allow users with the Contributor or Author role to compromise a site. This was initially reported by <a href="https://profiles.wordpress.org/duck_">Jon Cave</a> and fixed by <a href="http://www.miqrogroove.com/">Robert Chapin</a>, both of the WordPress security team, and later reported by <a href="http://klikki.fi/">Jouko Pynnönen</a>.</p>\n<p>We also fixed an issue where it was possible for a user with Subscriber permissions to create a draft through Quick Draft. Reported by Netanel Rubin from <a href="https://www.checkpoint.com/">Check Point Software Technologies</a>.</p>\n<p>Our thanks to those who have practiced <a href="https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/">responsible disclosure</a> of security issues.</p>\n<p>WordPress 4.2.3 also contains fixes for 20 bugs from 4.2. For more information, see the <a href="https://codex.wordpress.org/Version_4.2.3">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/4.2?rev=33382&amp;stop_rev=32430">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.2.3</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.2.3.</p>\n<p>Thanks to everyone who contributed to 4.2.3:</p>\n<p><a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/chriscct7">Chris Christoff</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/gabrielperezs">Gabriel Pérez</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/mdawaffe">Mike Adams</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, and <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-2-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Jul 2015 21:55:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3796";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.3 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2212:"<p>WordPress 4.3 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.3-beta4.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, check out the <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/">Beta 3</a> blog posts. Some of the changes in Beta 4 include:</p>\n<ul>\n<li><span class="s1">Fixed several bugs and broken flows in the </span><span class="s1"><strong>publish box </strong></span><span class="s1">in the edit screen.</span></li>\n<li>Addressed a number of edge cases for word count in the <strong>editor</strong>.</li>\n<li><span class="s1"><strong>Site icons</strong> </span><span class="s1">can now be previewed within the customizer. The feature has been removed from general settings.</span></li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33369&amp;stop_rev=33289">more than 60 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.3">everything we’ve fixed</a>.</p>\n<p><em>Few Tickets Remain</em><br />\n<em>Edge Cases Disappearing</em><br />\n<em>You Must Test Today</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Jul 2015 21:49:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3787";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.3 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2529:"<p>WordPress 4.3 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.3-beta3.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, check out the <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/">Beta 2</a> blog posts. Some of the changes in Beta 3 include:</p>\n<ul>\n<li>Performance improvements for <strong>Menus in the Customizer</strong>, as well as bug fixes and visual enhancements.</li>\n<li>Added <strong>Site Icon</strong> to the Customizer. The feature is now complete and requires lots of testing. Please help us ensure the site icon feature works well in both Settings and the Customizer.</li>\n<li>The improvements to <strong>Passwords</strong> have been added to the installation flow. When installing and setting up WordPress, a strong password will be suggested to site administrators. Please test and let us know if you encounter issues.</li>\n<li>Improved <strong>accessibility of comments and media list tables</strong>. If you use a screen reader, please let us know if you encounter any issues.</li>\n<li>Lots and lots of code documentation improvements.</li>\n<li><strong>Various other bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33286&amp;stop_rev=33141&amp;limit=150">more than 140 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.3">everything we’ve fixed</a>.</p>\n<p><em>Want to test new things?</em><br />\n<em>Wonder how four three shapes up?</em><br />\n<em>Answer: beta three</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Jul 2015 22:04:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3769";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.3 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2876:"<p>WordPress 4.3 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.3-beta2.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">check out the Beta 1 blog post</a>. Some of the changes in Beta 2 include:</p>\n<ul>\n<li>Fixed an issue in beta 1 where an alert appeared when saving or publishing a new post/page for the first time.</li>\n<li><strong><strong>Customizer</strong></strong> improvements including enhanced accessibility, smoother menu creation and location assignment, and the ability to handle nameless menus. Please help us test menus in the Customizer to fix any remaining edge cases!</li>\n<li>More robust<strong> list tables</strong> with full content support on small screens and a fallback for the primary column for custom list tables. We&#8217;d love to know how these list tables, such as All Posts and Comments, work for you now on small screen devices.</li>\n<li>The <strong>Site Icon</strong> feature has been improved so that cropping is skipped if the image is the exact size (512px square) and the media modal now suggests a minimum icon size. Please let us know how the flow feels and if you encounter any glitches!</li>\n<li>The <strong>toolbar</strong> now has a direct link to the customizer, along with quick access to themes, widgets, and menus in the dashboard.</li>\n<li>We enabled <strong>utf8mb4 for MySQL</strong> extension users, which was previously unintentionally limited to MySQLi users. Please let us know if you run into any issues.</li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33138&amp;stop_rev=33046">almost 100 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.3&amp;group=component&amp;order=priority">everything we’ve fixed</a>.</p>\n<p><em>Edges polished up</em><br />\n<em>Features meliorated</em><br />\n<em>Beta Two: go test!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordCamps Update";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/news/2015/07/wordcamps-update/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/news/2015/07/wordcamps-update/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Jul 2015 16:13:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:6:"Events";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3758";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:311:"Last week saw the halfway point for 2015, yay! This seems like a good time to update you on WordCamp happenings in the first half of this year. There have been 39 WordCamps in 2015 so far, with events organized in 17 different countries and on 5 continents. More than 14,000 people have registered for [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Andrea Middleton";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:9419:"<p>Last week saw the halfway point for 2015, yay! This seems like a good time to update you on WordCamp happenings in the first half of this year.</p>\n<p>There have been <a href="https://central.wordcamp.org/schedule/past-wordcamps/">39 WordCamps in 2015</a> so far, with events organized in 17 different countries and on 5 continents. More than 14,000 people have registered for WordCamp tickets so far this year, isn&#8217;t that amazing?</p>\n<p><a href="https://europe.wordcamp.org/2015/">WordCamp Europe</a> was held in Seville, Spain just a few weeks ago, with close to 1,000 registered participants and over 500 live stream participants. You can watch  <a href="http://wordpress.tv/2015/07/04/matt-mullenweg-keynote-qanda-wordcamp-europe-2015/">Matt Mullenweg’s keynote Q&amp;A</a> session from WordCamp Europe right now on WordPress.tv.</p>\n<p>WordPress.tv has published 537 videos so far in 2015 from WordCamps around the world. Some of the more popular 2015 WordCamp talks on WordPress.tv include <a href="http://wordpress.tv/2015/03/13/tammie-lister-theme-dont-be-my-everything/">Tammie Lister: Theme, Don’t Be My Everything </a>from WordCamp Maui, <a href="http://wordpress.tv/2015/04/17/jenny-munn-seo-for-2015-whats-in-whats-out-and-how-to-be-in-it-to-win-it-for-good/">Jenny Munn: SEO for 2015 – What’s In, What’s Out and How to Be In It to Win It (For Good)</a> from WordCamp Atlanta, <a href="http://wordpress.tv/2015/02/27/fabrice-ducarme-les-constructeurs-de-page-pour-wordpress/">Fabrice Ducarme: Les Constructeurs de Page pour WordPress</a> from WordCamp Paris, <a href="http://wordpress.tv/2015/06/02/ben-furfie-how-to-value-price-websites/">Ben Furfie: How to Value Price Websites</a> from WordCamp London, and <a href="http://wordpress.tv/2015/06/09/morten-rand-hendriksen-building-themes-from-scratch-using-underscores-_s/">Morten Rand-Hendriksen: Building Themes From Scratch Using Underscores (_S)</a> from WordCamp Seattle. Check them out!</p>\n<h3>Lots of great WordCamps are still to come</h3>\n<p><a href="http://ma.tt/2015/06/wordcamp-us-survey/">WordCamp US</a> is currently in pre-planning, in the process of deciding on a host city. The following cities have proposed themselves as a great place to host the first WordCamp US: Chattanooga, Chicago, Detroit, Orlando, Philadelphia, and Phoenix. It&#8217;s possible the first WordCamp US will be held in 2016 so we can organize the best first WordCamp US imaginable.</p>\n<p>At this time, there are 28 <a href="https://central.wordcamp.org/schedule/">WordCamps</a>, in 9 different countries, that have announced their dates for the rest of 2015. Twelve of these have tickets on sale:</p>\n<ul>\n<li><a href="https://columbus.wordcamp.org/2015/">WordCamp Columbus</a>, Columbus, Ohio: July 17-18</li>\n<li><a href="https://scranton.wordcamp.org/2015/">WordCamp Scranton</a>, Scranton, Pennsylvania: July 18</li>\n<li><a href="https://boston.wordcamp.org/2015/">WordCamp Boston</a>, Boston, Massachussetts: July 18-19</li>\n<li><a href="https://milwaukee.wordcamp.org/2015/">WordCamp Milwaukee</a>, Milwaukee, Wisconsin: July 24-26</li>\n<li><a href="https://asheville.wordcamp.org/2015/">WordCamp Asheville</a>, Asheville, North Carolina: July 24-26</li>\n<li><a href="https://kansai.wordcamp.org/2015/">WordCamp Kansai</a>, Kansai, Japan: July 25-26</li>\n<li><a href="https://fayetteville.wordcamp.org/2015/">WordCamp Fayetteville</a>, Fayetteville, Arkansas: July 31-August 2</li>\n<li><a href="https://brighton.buddycamp.org/2015/">BuddyCamp Brighton</a>,  Brighton, UK: August 8</li>\n<li><a href="https://vancouver.wordcamp.org/2015/">WordCamp Vancouver, BC,</a> Vancouver, BC, Canada: August 15-16</li>\n<li><a href="https://russia.wordcamp.org/2015/">WordCamp Russia</a>, Moscow, Russia: August 15</li>\n<li><a href="https://norrkoping.wordcamp.org/2015/">WordCamp Norrköping</a>, Norrköping, Sweden: August 28-29</li>\n<li><a href="https://croatia.wordcamp.org/2015/">WordCamp Croatia</a>, Rijeka, Croatia: September 5-6</li>\n<li><a href="https://krakow.wordcamp.org/2015/">WordCamp Krakow,</a>  Krakow, Poland: September 12-13</li>\n<li><a href="https://nyc.wordcamp.org/2015/">WordCamp NYC</a>, New York City, New York: October 30-November 1</li>\n</ul>\n<p>The other 16 events don’t have tickets on sale yet, but they’ve set their dates! Subscribe to the sites to find out when registration opens:</p>\n<ul>\n<li><a href="https://pune.wordcamp.org/2015/">WordCamp Pune</a>, Pune, India: September 6</li>\n<li><a href="https://capetown.wordcamp.org/2015/">WordCamp Cape Town</a>, Cape Town, South Africa: September 10-11</li>\n<li><a href="https://baltimore.wordcamp.org/2015/">WordCamp Baltimore</a>, Baltimore, Maryland: September 12</li>\n<li><a href="https://slc.wordcamp.org/2015/">WordCamp Salt Lake City</a>, Salt Lake City, Utah: September 12</li>\n<li><a href="https://lithuania.wordcamp.org/2015/">WordCamp Lithuania</a>, Vilnius, Lithuania: September 19</li>\n<li><a href="https://vegas.wordcamp.org/2015">WordCamp Vegas</a>, Las Vegas, Nevada: September 19-20</li>\n<li><a href="https://switzerland.wordcamp.org/2015/">WordCamp Switzerland</a>, Zurich, Switzerland: September 19-20</li>\n<li><a href="https://tampa.wordcamp.org/2015/">WordCamp Tampa</a>, Tampa, Florida: September 25-27</li>\n<li><a href="https://rhodeisland.wordcamp.org/2015/">WordCamp Rhode Island</a>,  Providence, Rhode Island: September 25-26</li>\n<li><a href="https://la.wordcamp.org/2015/">WordCamp Los Angeles</a>, Los Angeles, California: September 26-27</li>\n<li><a href="https://denmark.wordcamp.org/2015/">WordCamp Denmark,</a>  Copenhagen, Denmark: October 3-4</li>\n<li><a href="https://toronto.wordcamp.org/2015">WordCamp Toronto</a>, Toronto, Ontario, Canada: October 3-4</li>\n<li><a href="https://hamptonroads.wordcamp.org/2015/">WordCamp Hampton Roads, </a>  Virginia Beach, VA, USA: October 17</li>\n<li><a href="https://annarbor.wordcamp.org/2015">WordCamp Ann Arbor</a>, Ann Arbor, Michigan: October 24</li>\n<li><a href="https://portland.wordcamp.org/2015/">WordCamp Portland</a>,  Portland, OR: October 24-25</li>\n</ul>\n<p>On top of all those exciting community events, there are 26 WordCamps in pre-planning as they look for the right event space.  If you have a great idea for a free or cheap WordCamp venue in any of the below locations, get in touch with the organizers through the WordCamp sites:</p>\n<ul>\n<li><a href="https://dfw.wordcamp.org/2015/">WordCamp DFW</a>:  Dallas/Fort Worth, Texas</li>\n<li><a href="https://riodejaneiro.wordcamp.org/2015/">WordCamp Rio</a>: Rio de Janeiro, Brazil</li>\n<li><a href="https://saratoga.wordcamp.org/2015/">WordCamp Saratoga</a>:  Saratoga Springs, New York</li>\n<li><a href="https://sofia.wordcamp.org/2015">WordCamp Sofia</a>:  Sofia, Bulgaria</li>\n<li><a href="https://austin.wordcamp.org/2015/">WordCamp Austin</a>:  Austin, TX</li>\n<li><a href="https://ottawa.wordcamp.org/2015/">WordCamp Ottawa</a>:  Ottawa, Canada</li>\n<li><a href="https://charleston.wordcamp.org/2015/">WordCamp Charleston</a>:  Charleston, South Carolina</li>\n<li><a href="https://chicago.wordcamp.org/2015/">WordCamp Chicago</a>:  Chicago, Illinois</li>\n<li><a href="https://albuquerque.wordcamp.org/2015/">WordCamp Albuquerque</a>:  Albuquerque, New Mexico</li>\n<li><a href="https://prague.wordcamp.org/2015/">WordCamp Prague</a>:  Prague, Czech Republic</li>\n<li><a href="https://seoul.wordcamp.org/2014/">WordCamp Seoul: </a>Seoul, South Korea</li>\n<li><a href="https://louisville.wordcamp.org/2014/">WordCamp Louisville</a>: Louisville, Kentucky</li>\n<li><a href="https://omaha.wordcamp.org/2015/">WordCamp Omaha</a>:  Omaha, Nebraska</li>\n<li><a href="https://grandrapids.wordcamp.org/2015/">WordCamp Grand Rapids</a>:  Grand Rapids, Michigan</li>\n<li><a href="https://easttroy.wordcamp.org/2015/">WordCamp East Troy</a>:  East Troy, Wisconsin</li>\n<li><a href="https://palmademallorca.wordcamp.org/2015">WordCamp Mallorca</a>: Palma de Mallorca, Spain</li>\n<li><a href="https://edinburgh.wordcamp.org/2015/">WordCamp Edinburgh</a>:  Edinburgh, United Kingdom</li>\n<li><a href="https://orlando.wordcamp.org/2015/">WordCamp Orlando</a>:  Orlando, Florida</li>\n<li><a href="https://mexico.wordcamp.org/2015/">WordCamp Mexico City</a>:  Mexico City, Mexico</li>\n<li><a href="https://netherlands.wordcamp.org/2015/">WordCamp Netherlands</a>:  Utrecht, Netherlands</li>\n<li><a href="https://phoenix.wordcamp.org/2016/">WordCamp Phoenix</a>:  Phoenix, Arizona</li>\n<li><a href="https://saopaulo.wordcamp.org/2015/">WordCamp São Paulo</a>:  São Paulo, Brazil</li>\n<li><a href="https://manchester.wordcamp.org/2015/">WordCamp Manchester</a>:  Manchester, United Kingdom</li>\n<li><a href="https://tokyo.wordcamp.org/2015/">WordCamp Tokyo</a>:  Tokyo, Japan</li>\n<li><a href="https://lima.wordcamp.org/2015/">WordCamp Lima</a>:  Lima, Peru</li>\n<li><a href="https://seattle.wordcamp.org/2015-beginner/">WordCamp Seattle: Beginner</a>: Seattle, WA</li>\n</ul>\n<p>Don’t see your city on the list, but yearning for a local WordCamp? WordCamps are organized by local volunteers from the WordPress community, and we have a whole team of people to support new organizers setting up a first-time WordCamp. If you want to bring WordCamp to town, check out how you can <a href="https://central.wordcamp.org/become-an-organizer/">become a WordCamp organizer</a>!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/news/2015/07/wordcamps-update/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Jul 2015 01:30:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3738";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.3 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4352:"<p>WordPress 4.3 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.3-beta1.zip">download the beta here</a> (zip).</p>\n<p>4.3 is due out next month, but to get there, we need your help testing what we&#8217;ve been working on:</p>\n<ul>\n<li><strong>Menus</strong> can now be managed with the <strong>Customizer</strong>, which allows you to live preview changes you’re making without changing your site for visitors until you’re ready. We&#8217;re especially interested to know if this helps streamline the process of setting up your site (<a href="https://core.trac.wordpress.org/ticket/32576">#32576</a>).</li>\n<li>Take control of another piece of your site with the <strong>Site Icon</strong> feature. You can now manage your site’s favicon and app icon from the admin area (<a href="https://core.trac.wordpress.org/ticket/16434">#16434</a>).</li>\n<li>We put a lot of work into <strong>Better Passwords</strong> throughout WordPress. Now, WordPress will limit the life time of password resets, no longer send passwords via email, and generate and suggest secure passwords for you. Try it out and let us know what you think! (<a href="https://core.trac.wordpress.org/ticket/32589">#32589</a>)</li>\n<li>We’ve also added <strong>Editor Improvements</strong>. Certain text patterns are automatically transformed as you type, including <code>*</code> and <code>-</code> transforming into unordered lists, <code>1.</code> and <code>1)</code> for ordered lists, <code>&gt;</code> for blockquotes and two to six number signs (<code>#</code>) for headings (<a href="https://core.trac.wordpress.org/ticket/31441">#31441</a>).</li>\n<li>We’ve improved the <strong>list view</strong> across the admin dashboard. Now, when you view your posts and pages <strong>on small screen devices</strong>, columns are not truncated and can be toggled into view (<a href="https://core.trac.wordpress.org/ticket/32395">#32395</a>).</li>\n</ul>\n<p><strong>Developers</strong>: There have been a few of changes for you to test as well, including:</p>\n<ul>\n<li><strong>Taxonomy Roadmap:</strong> Terms shared across multiple taxonomies will <a href="https://make.wordpress.org/core/2015/06/09/eliminating-shared-taxonomy-terms-in-wordpress-4-3/">now be split</a> into separate terms on update to 4.3. Please let us know if you hit any snags (<a href="https://core.trac.wordpress.org/ticket/30261">#30261</a>).</li>\n<li>Added <code>singular.php</code> to the template hierarchy as a fallback for <code>single.php</code> and <code>page.php</code>. (<a href="https://core.trac.wordpress.org/ticket/22314">#22314</a>).</li>\n<li>The old Distraction Free Writing code was removed (<a href="https://core.trac.wordpress.org/ticket/30949">#30949</a>).</li>\n<li>List tables now can (and often should) have a primary column defined. We’re working on a fallback for existing custom list tables but right now they likely have some breakage in the aforementioned responsive view (<a href="https://core.trac.wordpress.org/ticket/25408">#25408</a>).</li>\n</ul>\n<p>If you want a more in-depth view of what changes have made it into 4.3, <a href="https://make.wordpress.org/core/tag/4-3/">check out all 4.3-tagged posts</a> on the main development blog.</p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.3">everything we’ve fixed</a> so far.</p>\n<p>Happy testing!</p>\n<p><em>Site icons for all</em><br />\n<em>Live preview menu changes</em><br />\n<em>Four three beta now</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 16 Oct 2015 03:37:27 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:10:"connection";s:5:"close";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Thu, 17 Sep 2015 10:36:36 GMT";s:4:"link";s:77:"<https://wordpress.org/news/wp-json/>; rel="https://github.com/WP-API/WP-API"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20151013070559";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(6297, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1445009846', 'no'),
(6298, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1444966646', 'no'),
(6299, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1445009849', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(6300, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"WPTavern: Akismet 3.1.5 Fixes Critical XSS Security Vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48619";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wptavern.com/akismet-3-1-5-fixes-critical-xss-security-vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1592:"<p>If you use <a href="https://wordpress.org/plugins/akismet/">Akismet</a> to battle comment spam, make sure it&#8217;s running version 3.1.5 as it patches a critical security vulnerability. Due to the nature of the bug, the Akismet team pushed out auto updates to sites that can accept them. According <a href="https://blog.sucuri.net/2015/10/security-advisory-stored-xss-in-akismet-wordpress-plugin.html">to Sucuri</a>, sites using Akismet 3.1.4 and lower and that have the <strong><em>Convert emoticons like <img class="wp-smiley" src="https://blog.sucuri.net/wp-includes/images/smilies/simple-smile.png" alt=":-)" /> and <img src="http://s.w.org/images/core/emoji/72x72/1f61b.png" alt="😛" class="wp-smiley" /> to graphics on display</em></strong> option enabled, are at risk.</p>\n<p>The vulnerability stems from the way Akismet handles hyperlinks within a site&#8217;s comments. An attacker with sufficient knowledge of WordPress&#8217; internals could insert malicious scripts in the Comment section of the WordPress backend. This type of attack could lead to a number of other attacks, including compromising an entire site.</p>\n<p>So far, Akismet developers <a href="http://blog.akismet.com/2015/10/13/akismet-3-1-5-wordpress/">don&#8217;t have any evidence</a> that the vulnerability is actively being exploited in the wild. Because the vulnerability is theoretically exploitable via comments, Akismet is blocking attempts during the comment-check API call so that sites not running the most recent version are protected. However, you should still upgrade immediately to 3.1.5.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Oct 2015 20:08:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Matt: Working &amp; Exercising";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45486";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:40:"http://ma.tt/2015/10/working-exercising/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1653:"<p><img class="  wp-image-45499 aligncenter" src="http://i1.wp.com/ma.tt/files/2015/10/IMG_3075.jpg?w=604" /></p>\n<p>One benefit of working from home that doesn&#8217;t get discussed much is the ease of small, but frequent exercise activities through the day. I&#8217;m sure it&#8217;s not outlawed in an office to get out of your chair and do 20 jumping jacks, or plank for a minute, I definitely would feel awkward doing so. This is something on my mind as I&#8217;m working this week around ~400 colleagues for <a href="https://twitter.com/hashtag/a8cgm">our once-a-year Grand Meetup</a>.</p>\n<p>When I&#8217;m home and have a ton of work to get through, my favorite approach is the <a href="https://en.wikipedia.org/wiki/Pomodoro_Technique">Pomodoro Technique</a> with 25 minutes on followed by a 5 minute break. (<a href="https://itunes.apple.com/us/app/pomodoro-one/id907364780?mt=12">I use this app</a> but any timer will do.) The 5 minute break is a fantastic time to do something small, like a few push-ups, squats, a plank, or even meditate. (The new <a href="https://itunes.apple.com/us/app/pause-relaxation-at-your-fingertip/id991764216?mt=8">Pause app is cool</a>, and of course I <a href="http://calm.com/">love Calm</a>.) You don&#8217;t have to do a ton, but over the course of a day or a week these 5 minute break exercises add up to be quite a bit and can <a href="http://tinyhabits.com/">kickstart a Tiny Habit</a>. And don&#8217;t even get me started on the benefits of naps.</p>\n<p>Again, not something that&#8217;s impossible in an shared office, just feels a lot more natural and less embarrassing in your private home office.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Oct 2015 18:37:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Akismet: Akismet 3.1.5: Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.akismet.com/?p=1877";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://blog.akismet.com/2015/10/13/akismet-3-1-5-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1660:"<p><b>Version 3.1.5 of the Akismet plugin for WordPress contains a critical security fix. Update your sites as soon as possible.</b></p>\n<p>A researcher from <a href="https://sucuri.net/">Sucuri</a> notified us of an XSS vulnerability in the Akismet WordPress plugin. This bug affects all versions of the Akismet WordPress plugin since 2.5.0, but we have no evidence that it has been exploited in the wild.</p>\n<p>We&#8217;ve released updates for all vulnerable versions of the Akismet plugin. Additionally, the WordPress.org plugins team has enabled an <a href="https://make.wordpress.org/plugins/2015/03/14/plugin-automatic-security-updates/">automatic update</a> for all sites running these vulnerable versions that are able to auto-update plugins.</p>\n<p>Because the vulnerability is theoretically exploitable via comments, Akismet is already blocking attempts during the comment-check API call even if you are not running the most recent version. However, to be as safe as possible, you should still upgrade immediately.</p>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href="http://wordpress.org/plugins/akismet/">the WordPress plugins directory</a>.</p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1877/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1877/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1877&subd=akismet&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 Oct 2015 20:37:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Christopher Finke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:66:"WPTavern: Jetpack Protect Blocks Brute Force Amplification Attacks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48601";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"http://wptavern.com/jetpack-protect-blocks-brute-force-amplification-attacks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2469:"<p>If you&#8217;ve noticed an influx of brute force attacks on your site, you&#8217;re not the only one. Sucuri <a href="https://blog.sucuri.net/2015/10/brute-force-amplification-attacks-against-wordpress-xmlrpc.html">is reporting</a> that brute force amplification attacks are targeting WordPress sites with XML-RPC enabled. In a nutshell, XML-RPC contains a system.multicall method which allows developers to execute multiple methods and commands inside a single request.</p>\n<h2>What is a Brute Force Amplification Attack?</h2>\n<p>In a typical brute force attack, several machines or bots try to guess the username and password for a site one  at a time. In a brute force amplification attack, attackers can guess hundreds or thousands of combinations within a single request making the attack more efficient and difficult to block.</p>\n<p>The XML-RPC protocol in WordPress is a communications bridge between remote applications such as the WordPress mobile apps and the site itself. It&#8217;s also used to communicate and authenticate to Jetpack.</p>\n<h2>Jetpack Protect Does Its Job</h2>\n<p>Jetpack comes with a module called <a href="http://jetpack.me/support/security-features/">Jetpack Protect</a> formerly <a href="http://wptavern.com/automattic-acquires-parka-llc-the-creators-of-bruteprotect">known as BruteProtect</a>, that protects sites from brute force attacks. Sam Hotchkiss, lead developer of Jetpack Protect, <a href="https://samhotchkiss.wordpress.com/2015/10/12/testing-for-xml-rpc-multicall-vulnerabilities-in-wordpress/">confirms in a blog post</a> that Jetpack Protect blocks brute force amplification attacks out-of-the box.</p>\n<blockquote><p>In our testing, we confirmed that Jetpack Protect (and BruteProtect) do block this attack vector.  If you’re running Jetpack with Protect enabled or you’re running BruteProtect, you don’t need to do anything to keep yourself safe from this attack technique.</p></blockquote>\n<p>If you use Jetpack Protect, you don&#8217;t need to do anything to block this attack vector. For everyone else, Sucuri recommends that administrators block system.multicall requests as they&#8217;re not used much in the wild. There&#8217;s also a handful of security plugins such as <a href="https://wordpress.org/plugins/better-wp-security/">iThemes Security</a> or <a href="https://wordpress.org/plugins/wp-simple-firewall/">WordPress Simple Firewall</a> that block system.multicalls and can disable XML-RPC.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 Oct 2015 18:24:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WPTavern: What Do You Want to See in a WordPress.tv Redesign?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48595";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wptavern.com/what-do-you-want-to-see-in-a-wordpress-tv-redesign";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1693:"<p>The <a href="http://wordpress.tv/">WordPress.tv</a> team is <a href="https://make.wordpress.org/tv/2015/10/08/building-a-better-wordpress-tv-functional-requirements/">requesting feedback</a> on what features you&#8217;d like to see in a website redesign. Jerry Bates, volunteer moderator for WordPress.tv, says one of the goals for 2016 is to update the site to better showcase content from WordCamps around the world. While plans are underway, the team wants to know what you think of WordPress.tv as it is today and what it would be in a perfect world.</p>\n<p>Oleg Belousov suggests <a href="https://make.wordpress.org/tv/2015/10/08/building-a-better-wordpress-tv-functional-requirements/comment-page-1/#comment-1483">WordPress.TV have a playlist feature</a> so viewers can favorite videos. I&#8217;d also like to see this feature and have the videos saved to my WordPress.org profile. I&#8217;ve noticed that a lot of links to presentation slides point to the speaker&#8217;s personal site. To protect against link rot and expiring domains, WordPress.tv or a sister site should host presentation slides.</p>\n<p>On the single post view for videos, you have to scroll down to read a video&#8217;s description in the right hand sidebar. Instead, I&#8217;d like to see WordPress.tv display information and related videos similar to YouTube since most of the relevant information is near the video itself. The redesign should also be responsive. If you have ideas to improve WordPress.tv or feature requests, please <a href="https://make.wordpress.org/tv/2015/10/08/building-a-better-wordpress-tv-functional-requirements/comment-page-1/">leave a comment</a> on the Make.WordPress.tv site.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Oct 2015 17:02:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Matt: HR Meets Science";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45307";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:38:"http://ma.tt/2015/10/hr-meets-science/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:156:"<p><span class="embed-youtube"></span></p>\n<p>Great talk on analytical HR at Google. <cite>Hat tip: <a href="http://whenihavetime.com/">Sara</a>.</cite></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 11 Oct 2015 18:04:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"Matt: Super Impressive Mario";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45353";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"http://ma.tt/2015/10/super-impressive-mario/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:179:"<p><span class="embed-youtube"></span></p>\n<p>This custom Mario Maker level, and the skill required to beat it, is one of the craziest feats of Mario virtuoso I&#8217;ve seen.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Oct 2015 22:35:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:88:"Post Status: Responsive images for WordPress and mobile pages with AMP — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=14573";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"https://poststatus.com/responsive-images-for-wordpress-and-mobile-pages-with-amp-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1819:"<p>Welcome to the Post Status Draft podcast, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a> and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Brian and his co-host, <a href="https://twitter.com/joe_hoyle">Joe Hoyle</a>, a co-founder and the CTO of <a href="https://hmn.md/">Human Made</a>, discuss some of today’s hottest, current WordPress news.</p>\n<p><span>In this episode of Draft, Joe and Brian discuss Google’s AMP project for Accelerated Mobile Page loading, and what it means for WordPress. They also go in-depth on WordPress’s upcoming core support for handling responsive images.</span></p>\n<!--[if lt IE 9]><script>document.createElement(''audio'');</script><![endif]-->\n<a href="https://audio.simplecast.fm/18240.mp3">https://audio.simplecast.fm/18240.mp3</a>\n<p><a href="http://audio.simplecast.fm/18240.mp3">Direct Download</a></p>\n<h3>Topics &amp; Links</h3>\n<p>Google&#8217;s AMP</p>\n<ul>\n<li><a href="https://www.ampproject.org/">AMP</a></li>\n<li><a href="https://www.ampproject.org/how-it-works/">How AMP works</a></li>\n<li><a href="https://vip.wordpress.com/2015/10/07/mobile-web/">WordPress AMP plugin</a></li>\n<li><a href="http://www.niemanlab.org/2015/10/get-ampd-heres-what-publishers-need-to-know-about-googles-new-plan-to-speed-up-your-website/">AMP on Neiman Lab: What publishers need to know</a></li>\n</ul>\n<p>Responsive Images (starts at 35 minutes in)</p>\n<ul>\n<li><a href="https://core.trac.wordpress.org/ticket/33641">Responsive images merge</a></li>\n<li><a href="https://make.wordpress.org/core/2015/09/30/responsive-images-merge-proposal/">Merge Proposal</a></li>\n<li><a href="https://wordpress.org/plugins/ricg-responsive-images/">Plugin version</a></li>\n</ul>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Oct 2015 18:18:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"Matt: Lists of Lists";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45468";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:36:"http://ma.tt/2015/10/lists-of-lists/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:738:"<blockquote><p>The app that changed my life is <a href="http://simplenote.com/">Simplenote</a>, linked to Notational Velocity. I have Simplenote on my phone and Notational Velocity on my computer, and I&#8217;m obsessed with to-do lists and lists about my to-do lists. It allows me to have my lists on my phone and my lists on my computer, and they sync&#8230; if you are a list freak, with lists of lists, it will change your life.</p>\n<p>&#8212; Lena Dunham</p></blockquote>\n<p>From a talk with Kara Swisher on Re/code. <a href="http://recode.net/podcast-player/216027/" target="_blank">Listen to the whole podcast</a>, Simplenote comes up at the 48-minute mark. <cite>Hat tip: <a href="http://toni.org/">Toni Schneider</a>.</cite></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Oct 2015 20:13:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: The First Half of the REST API Is Officially Added to WordPress Core";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48563";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"http://wptavern.com/the-first-half-of-the-rest-api-is-officially-added-to-wordpress-core";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2644:"<p>A few hours ago, Ryan McCue, one of the lead developers of the WordPress REST API project who recently received <a href="https://make.wordpress.org/core/2015/10/07/%f0%9f%8e%89-one-more-committer-for-4-4/">guest commit access</a> for WordPress 4.4, committed <a href="https://core.trac.wordpress.org/changeset/34928">a patch</a> that adds the REST API infrastructure to WordPress core.</p>\n<p>In his commit message, McCue referred to the infrastructure as a baby API:</p>\n<blockquote><p>REST API: Introduce baby API to the world.</p>\n<p>Baby API was born at 2.8KLOC on October 8th at 2:30 UTC. API has lots<br />\nof growing to do, so wish it the best of luck.</p>\n<p>Thanks to everyone who helped along the way:</p>\n<p>Props rmccue, rachelbaker, danielbachhuber, joehoyle, drewapicture, adamsilverstein, netweb, tlovett1, shelob9, kadamwhite, pento, westonruter, nikv, tobych, redsweater, alecuf, pollyplummer, hurtige, bpetty, oso96_2000, ericlewis, wonderboymusic, joshkadis, mordauk, jdgrimes, johnbillion, jeremyfelt, thiago-negri, jdolan, pkevan, iseulde, thenbrent, maxcutler, kwight, markoheijnen, phh, natewr, jjeaton, shprink, mattheu, quasel, jmusal, codebykat, hubdotcom, tapsboy, QWp6t, pushred, jaredcobb, justinsainton, japh, matrixik, jorbin, frozzare, codfish, michael-arestad, kellbot, ironpaperweight, simonlampen, alisspers, eliorivero, davidbhayes, JohnDittmar, dimadin, traversal, cmmarslender, Toddses, kokarn, welcher, and ericpedia.</p></blockquote>\n<p>If you&#8217;re not familiar with the REST API and its potential impacts on WordPress&#8217; future, I highly recommend reading the following articles.</p>\n<ul>\n<li><a href="http://wptavern.com/excellent-primer-on-the-wordpress-rest-api-project">Excellent Primer on the WordPress REST API Project</a></li>\n<li><a href="https://poststatus.com/wordpress-json-rest-api/">The WordPress REST API by Brian Krogsgard</a></li>\n<li><a href="http://wptavern.com/ryan-mccue-on-creating-the-json-rest-api-for-wordpress">Ryan McCue on Creating The JSON REST API for WordPress</a></li>\n<li><a href="http://torquemag.io/the-ultimate-guide-to-the-wordpress-rest-api-an-ebook-by-josh-pollock/">‘The Ultimate Guide To The WordPress REST API,’ An Ebook By Josh Pollock</a></li>\n</ul>\n<p>In the lifespan of an open source project, there are milestone moments. Even though only half of the REST API is in WordPress 4.4, I consider this to be one of those moments.</p>\n<p>If all goes well, developers will have access to the complete REST API in WordPress 4.5. I hope you&#8217;ll join me in congratulating all of the contributors that have and continue to work on the REST API.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Oct 2015 08:38:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"WPTavern: WPWeekly Episode 209 – Where Is the Word Press?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48566";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wptavern.com/wpweekly-episode-209-where-is-the-word-press";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2568:"<p>In this episode of WordPress Weekly, <a href="http://marcuscouch.com/">Marcus Couch</a> and I are joined by <a href="http://werdswords.com/">Drew Jaynes</a>, WordPress core contributor. We discuss a wide range of topics, from Jaynes&#8217; opinions on Scott Taylor&#8217;s work on WordPress 4.4 thus far to his trip to <a href="https://capetown.wordcamp.org/2015/">WordCamp Capetown Africa, 2015</a>.</p>\n<p>We go in-depth on 10up&#8217;s investments in WordPress and discuss what&#8217;s happened to the Word Press. Last but not least, we discuss why <a href="https://twitter.com/jjj/status/647265586624512001">developers are so excited</a> for Taxonomy Term Meta to be part of WordPress 4.4.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="http://wptavern.com/wp101-founded-by-shawn-hesketh-turns-7-years-old">WP101 Founded by Shawn Hesketh Turns 7 Years Old</a><br />\n<a href="http://wptavern.com/the-top-100-active-wordpress-themes-and-plugins-on-godaddys-hosting-network">The Top 100 Active WordPress Themes and Plugins on GoDaddy’s Hosting Network</a><br />\n<a href="http://wptavern.com/6-wordpress-plugins-that-take-native-comments-to-the-next-level">6 WordPress Plugins That Take Native Comments to the Next Level</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a href="https://wordpress.org/plugins/wp-like-dislike/">WP Like/Dislike</a> allows visitors to like or dislike a post on your website.</p>\n<p><a href="https://wordpress.org/plugins/dorzki-notifications-to-slack/">Slack Notifications</a> is a plugin that notifies you in your Slack channel via the Slack API on the following: New WordPress Version, New Plugins Updates, Post Published, New User Registration, Admin Login.</p>\n<p><a href="https://wordpress.org/plugins/postmatic-for-gravity-forms/">Postmatic for Gravity Forms</a> is a simple plugin that allows individuals to subscribe to Postmatic feeds using Gravity Forms.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, October 21st 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="http://www.wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #209:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Oct 2015 08:32:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"WPTavern: How to Favorite Themes on the WordPress Theme Directory";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48549";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wptavern.com/how-to-favorite-themes-on-the-wordpress-theme-directory";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2145:"<p>When the WordPress theme directory was <a href="http://wptavern.com/wordpress-theme-directory-launches-new-design">redesigned earlier this year</a>, a <a href="http://wptavern.com/wordpress-theme-directory-launches-new-design#comment-65119">common request from readers</a> was the ability to favorite themes as you can with plugins. This feature was also <a href="https://meta.trac.wordpress.org/ticket/28">suggested</a> by Mario Pesehv two years ago.</p>\n<p>On July 22nd, Dion Hulse <a href="https://meta.trac.wordpress.org/changeset/1770">committed a change</a> with little fanfare to the WordPress theme directory that allows registered users to mark themes as favorites.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/ThemeFavoriteIcon.png"><img class="size-full wp-image-48551" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/ThemeFavoriteIcon.png?resize=1025%2C447" alt="Theme Favorite Icon" /></a>Theme Favorite Icon\n<p>Registered users who are logged into WordPress.org will see a heart icon above the download button on a theme&#8217;s detailed information page. When clicked, the heart icon turns red and the theme is added to your favorites list. To see your favorites list, visit the theme directory home page and click the Favorites tab.</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/10/ThemeFavorites.png"><img class="size-full wp-image-48552" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/10/ThemeFavorites.png?resize=633%2C521" alt="Themes Marked as Favorites" /></a>Themes Marked as Favorites\n<p>To remove a theme from your favorites list, visit the theme&#8217;s detailed information page and click the heart icon.</p>\n<p>Unfortunately, you can&#8217;t install themes marked as favorite from the backend of WordPress since the Favorites tab doesn&#8217;t exist on the Add Themes page. However, I&#8217;ve <a href="https://core.trac.wordpress.org/ticket/34206">created a ticket on Trac</a> to see if it can be added in time for WordPress 4.4. Keep in mind that like plugins, themes marked as favorites will show up on your WordPress.org user profile.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Oct 2015 06:21:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:92:"WPTavern: Measure Jetpack: An Independent Project Aimed at Measuring Jetpack’s Performance";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48538";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"http://wptavern.com/measure-jetpack-an-independent-project-aimed-at-measuring-jetpacks-performance";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3308:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/10/ProjectJetpackBenchmark.png"><img class="aligncenter size-full wp-image-48540" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/10/ProjectJetpackBenchmark.png?resize=658%2C292" alt="Project Jetpack Benchmark" /></a>Just about every time we publish an article about Jetpack, one or more readers <a href="http://wptavern.com/you-can-now-search-for-and-install-plugins-from-within-jetpack-manage#comment-88443">leaves a comment</a> similar to the following, <em>I don&#8217;t use Jetpack because it slows down my site</em>. Many of the comments don&#8217;t link to or provide data that backs up their claim.</p>\n<p>Outside of the <a href="http://wptavern.com/benchmarks-indicate-jetpack-doesnt-negatively-impact-site-loading-times">benchmarks</a> produced by the BruteProtect team late last year, there&#8217;s little evidence to support the claim that Jetpack negatively impacts a site&#8217;s performance. <a href="https://profiles.wordpress.org/ideag/#content-plugins">Arūnas Liuiza</a>, a WordPress plugin developer, is working <a href="http://blog.arunas.co/project-measure-jetpack/">on a new project</a> that hopes to solve the mystery of whether or not Jetpack causes sites to load more slowly.</p>\n<h2>Preparing the Testing Environment</h2>\n<p>In the next few weeks, Liuiza and his students will scour the WordPress plugin directory to find plugins with comparable features to Jetpack&#8217;s modules. The team is going to set up three identical WordPress sites with default Lorem Ipsum content.</p>\n<p>One site will act as the benchmark, another will run Jetpack, and the third will run plugins similar to Jetpack&#8217;s modules. Liuiza explains how his students will perform the benchmark process:</p>\n<blockquote><p>We’ll start the measuring, with different plugins/modules activated and deactivated. We’ll be doing 1-to-1 comparisons, as well as some combos. We are going to measure load times, as well as some stats reported by Query Monitor such as memory usage, database query count etc.</p></blockquote>\n<p>Liuiza says benchmark results will be published in a series of posts on his blog and on the <a href="https://www.facebook.com/groups/advancedwp/">Advanced WordPress Facbook group</a>. Liuiza is asking for the community&#8217;s help to locate plugins that are feature-comparable to the modules in Jetpack.</p>\n<p>He&#8217;s also asking for advice on the testing methodology he and his students should use. There&#8217;s no timetable on when the results will be published as it&#8217;s considered a side project.</p>\n<h2>Benchmark Frontend Modules Only</h2>\n<p>Jetpack currently has 36 modules but some of them simply connect to services such as VaultPress or VideoPress. I think Liuiza and his team should concentrate on modules that potentially impact a site&#8217;s frontend performance as it doesn&#8217;t make sense to benchmark modules that are only for the backend.</p>\n<p>I&#8217;m doubtful that an independent study of Jetpack&#8217;s performance will solve the issue once and for all, especially if the results show that it doesn&#8217;t have much of an impact on sites as people think. However, it will be nice to have another set of data to point people to when it comes up in discussions.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Oct 2015 18:41:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"Matt: Accelerated Mobile Pages &amp; WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45475";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://ma.tt/2015/10/accelerated-mobile-pages-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:494:"<p>As was just announced on <a href="https://vip.wordpress.com/2015/10/07/mobile-web/">the VIP blog</a> and <a href="https://googleblog.blogspot.com/2015/10/introducing-accelerated-mobile-pages.html">Google</a>, there&#8217;s a new open standard that competes with (or complements) Facebook&#8217;s Instant Articles. It&#8217;s easy for WordPress sites to support both, <a href="https://github.com/Automattic/amp-wp/">you can check out this Github project to see the plugin code so far</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Oct 2015 14:33:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"WPTavern: 10up Continues to Make Major Investments in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48524";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"http://wptavern.com/10up-continues-to-make-major-investments-in-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4759:"<p>In the last two years, <a href="http://10up.com/">10up</a>, a web design and development agency has contributed to WordPress in significant ways. From <a href="http://wptavern.com/10up-sponsors-helen-hou-sandi-to-work-full-time-on-wordpress-core">sponsoring Helen Hou-Sandi</a> to work full-time on WordPress core, to <a href="http://wptavern.com/drew-jaynes-to-lead-wordpress-4-2">sponsoring Drew Jaynes</a> to lead the WordPress 4.2 development cycle. In a post published on the company&#8217;s blog, <a href="http://10up.com/blog/2015/commitments-open-web/">10up announced</a> it will continue to invest in WordPress and other open source projects it works with on a daily basis.</p>\n<p>According to the announcement, 10up is sponsoring Jaynes to work on WordPress full-time. The company has also created a Platform Engineer position and although it&#8217;s not hiring to fill the role, the company has left the title open-ended as it continues to support and build web platforms such as <a href="http://10up.com/blog/2015/sponsoring-sanitize-css/">santize.css</a> and <a href="http://10up.com/blog/2014/varying-vagrant-vagrants-future/">Varying Vagrant Vagrants</a>.</p>\n<h2>Sponsoring Scott Kingsley Clark to Work on the Fields API Project</h2>\n<p>In a major show of support, 10up is sponsoring 100 hours of <a href="http://scottkclark.com/">Scott Kingsley Clark’s</a> company time to work on the <a href="https://make.wordpress.org/core/tag/fields-api/">Fields API Project</a>. Announced in May, the <a href="https://make.wordpress.org/core/2015/05/27/metadata-api-project-reborn-the-new-fields-api-project/">Fields API Project</a> is an offshoot of the Metadata API project. The Fields API would allow developers to register fields and sections for WordPress objects. According to Clark, the goal is to initially cover the following WordPress objects:</p>\n<ul>\n<li>Customizer (retrofitting it beneath the existing Customizer API)</li>\n<li>User profile screen</li>\n<li>Post editor</li>\n<li>Settings screens (retrofitting it beneath the existing Settings API)</li>\n<li>And other areas in the future (Comment editor, Network Settings screens [see <a href="https://core.trac.wordpress.org/ticket/15691">#15691</a>], Media modals, etc)</li>\n</ul>\n<p>10up believes that supporting the Fields API Project will help move it into a viable state to potentially be added to WordPress in the near-future, &#8220;As a company with a central mission of creating great publishing experiences, the user and developer experiences a fields API can improve are something we are particularly well-versed in,&#8221; Hou-Sandi said.</p>\n<p>Hou-Sandi goes on to explain that the web is built on open technologies that are usually maintained by small groups of people who rely on donations.</p>\n<blockquote><p>The balance between use and support of open source software leans heavily toward use, and that imbalance has become even more apparent. Even with increased awareness around the plight of projects integral to a safe web, initiatives like OpenSSL continue to operate on small donations and the volunteer efforts of a few. It takes time to convert pledges into action, and we’ve yet to see very many pledges at all, much less action.</p></blockquote>\n<p>The following quote written by Jake Goldman, <a href="http://10up.com/about/#employee-jake-goldman">Founder and President of 10up</a>, explains why reinvesting in open source projects is so important not only for his company&#8217;s customers, but the WordPress userbase in general.</p>\n<blockquote><p>I’ve said repeatedly that nothing is more critical to the success of agencies that rely on community, open source software platforms than the continued success of those platforms. It is incumbent upon those who have leveraged free, open platforms with success to share that success back.</p>\n<p>By economically enabling world-class engineers to improve open platforms, we not only ensure that our customers continue to have a first class solution, we enable the next generation of builders, who can’t yet afford such resources, to further grow our ecosystem and the platform’s demand. I believe this is the social contract of open source, and as 10up grows, so to will our contributions to open source. It’s not just responsible citizenship, it’s good business.</p></blockquote>\n<p>It makes sense for companies whose businesses rely on open source software to find ways to reinvest time, energy, and money back into those projects less they disappear. That&#8217;s precisely what 10up is doing along with <a href="http://ma.tt/2014/09/five-for-the-future/">a few other companies</a>. Let me know in the comments if and how your company is contributing back to open source software.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 06 Oct 2015 21:09:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Matt: Scratch &amp; Sniff Whiskey";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45469";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"http://ma.tt/2015/10/scratch-sniff-whiskey/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:418:"<p>Whether you&#8217;re curious for yourself or looking for a great gift for a scotch-loving friend, <a href="http://www.amazon.com/Essential-Scratch-Becoming-Whiskey-Know-It-All/dp/0544520602">The Essential Scratch &#038; Sniff Guide to Becoming a Whiskey Know-It-All</a> from my friends Richard Betts, Crystal English Sacca, and Wendy MacNaughton is a must-buy. I have read this book myself and it smelled great.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 06 Oct 2015 20:04:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"WPTavern: You Can Now Search for and Install Plugins From Within Jetpack Manage";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48513";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"http://wptavern.com/you-can-now-search-for-and-install-plugins-from-within-jetpack-manage";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3229:"<p>At the end of 2014, Jetpack 3.3 introduced a <a href="http://wptavern.com/jetpack-3-3-introduces-new-centralized-dashboard-for-managing-multiple-wordpress-sites">centralized dashboard</a> that enables users to <a href="https://wordpress.com/plugins/jetpack">manage Jetpack powered sites</a>. At the time, you could only do the following:</p>\n<ul>\n<li><strong>Plugin management:</strong> Turn plugins on or off with one click — per site or in bulk.</li>\n<li><strong>Initiate plugin updates:</strong> Update plugins for a single site or all sites in bulk.</li>\n<li><strong>Automatic updates:</strong> Turn on auto-updates for any plugin on a per-site basis or in bulk.</li>\n</ul>\n<p>Now you can <a href="http://jetpack.me/2015/10/01/new-plugin-browser/">browse and install plugins</a> from the WordPress plugin directory on sites you own that use Jetpack with the <a href="https://jetpack.me/support/site-management/">Manage module</a> activated. Visit <a href="https://wordpress.com/plugins/browse">https://wordpress.com/plugins/browse</a> and choose the site you want to manage. Look for the Configure area on the sidebar and click the Add button to open the plugin browser.</p>\n\n<a href="http://wptavern.com/you-can-now-search-for-and-install-plugins-from-within-jetpack-manage/pluginbrowserinwp43"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/10/PluginBrowserInWP43.png?resize=1169%2C682" class="attachment-full" alt="Plugin Browser in WordPress 4.3" /></a>\n<a href="http://wptavern.com/you-can-now-search-for-and-install-plugins-from-within-jetpack-manage/jetpackmanagepluginbrowser"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/10/JetpackManagePluginBrowser.png?resize=977%2C812" class="attachment-full" alt="Jetpack Plugin Browser" /></a>\n\n<p>When the plugin directory <a href="http://wptavern.com/wordpress-plugin-directory-launches-new-design">launched a redesign</a> earlier this year, <a href="http://wptavern.com/wordpress-plugin-directory-launches-new-design">a common complaint</a> from readers is that the ability to see new plugins added to the directory was removed. Unlike the plugin browser in WordPress, the browser on WordPress.com displays new plugins.</p>\n<p>Both browsers display similar information in the detailed view with the exception that the WordPress.com browser doesn&#8217;t show a list of contributors. Enej Bajgorić, a member of the Jetpack development team, explains how to quickly install a plugin to a Jetpack site when browsing the WordPress plugin directory:</p>\n<blockquote><p>If you find yourself browsing the WordPress.org plugin repository and want to install the plugin on your Jetpack site, you can just replace the .org in the URL with .com and be taken to the new Plugin Browser where you can install the plugin with a single click. You will need to be logged into your WordPress.com account for this to work.</p></blockquote>\n<p>A plugin browser to search for and install plugins is another feature that makes Jetpack Manage a free, decent alternative to commercial services for managing multiple sites. If you manage multiple sites with Jetpack Manage, let us know what you think and what key features you&#8217;d like to see added.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 06 Oct 2015 18:29:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Matt: Interview in French";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45463";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:41:"http://ma.tt/2015/10/interview-in-french/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:196:"<p>Si vous parlez français, <a href="http://www.journaldunet.com/solutions/dsi/1161757-interview-de-matt-mullenweg/">vous pourriez profiter de cette interview avec moi sur Journal Du Net</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Oct 2015 23:07:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"WPTavern: Tom Nowell on How Automattic Keeps Workers Healthy and Happy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48490";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://wptavern.com/tom-nowell-on-how-automattic-keeps-workers-healthy-and-happy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:12001:"<hr />\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/10/TomNowell.jpg"><img class="alignright size-thumbnail wp-image-48491" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/10/TomNowell.jpg?resize=150%2C150" alt="Tom Nowell" /></a>This post was contributed by <a href="https://twitter.com/Tarendai">Tom J Nowell</a>. Tom is a <a href="https://automattic.com/work-with-us/vip-wrangler/">VIP Wrangler</a> at <a href="https://vip.wordpress.com">WordPress.com VIP</a>, lead of the <a href="http://www.wptherightway.org/en/index.html">WP The Right Way</a> project, <a href="http://tomjn.com">blogger</a>, and community moderator at <a href="https://wordpress.stackexchange.com/">WordPress Stack Exchange</a>. Tom will be speaking at <a href="https://nyc.wordcamp.org/2015/">WordCamp New York</a> later this month on escaping and security.</p>\n<hr />\n<p>This is a story about my job as a <a href="http://vip.wordpress.com" target="_blank">VIP Wrangler</a>, what <a href="http://automattic.com" target="_blank">Automattic</a> does to keep Automatticians happy, and my battles with anxiety, <a href="http://hyperboleandahalf.blogspot.co.uk/2011/10/adventures-in-depression.html" target="_blank">depression</a>, and fear.</p>\n<h2>Joining the VIP Team</h2>\n<p>Almost a year ago, I worked for <a href="http://codeforthepeople.com/">Code For The People</a>, a six person development agency that was in acquisition talks with Automattic. I remember at the beginning of the week, we thought an acquisition could happen before Christmas and by the following Friday, we were signing new employment contracts, and booking tickets to Lisbon for the VIP team meet up!</p>\n<p>I remember being the first to arrive, surrounded by people from the VIP team I&#8217;ve never met in person. We went out for dinner, learned how to do deploys, visited aquariums, gardens, and then went home.</p>\n<h2>The Happiness Rotation</h2>\n<p>After the meet up, I spent two months finishing contracts and started my Happiness Rotation. A happiness rotation is three weeks of working on the WordPress.com support team to get in touch with the problems end users are facing. Every Automattician has to go through a happiness rotation as part of their trial.</p>\n<p>Working the happiness rotation was hard. When I say this, I don&#8217;t mean it was an insurmountable task. I had a full-time Happiness Engineer available 24/7 to ask any question I wanted, a week of walkthroughs, supervised working, mountains of documentation, pre-written examples, and slack channels with friendly supportive people. I knew what to do, how to do it, and <a href="https://wordpress.stackexchange.com/users/736/tom-j-nowell" target="_blank">I&#8217;ve done it before</a>.</p>\n<h2>VIP Training</h2>\n<p>Despite this, I struggled, and VIP training began. Work at VIP fits into several sub roles that developers cycle through and training consists of a week in each role mentored by an experienced VIP Wrangler. Afterwards, we continue the cycle as full VIP Wranglers. Throughout the entire process, I had a general mentor for any and all things Automattic, be it mystery acronyms, or how to book a holiday.</p>\n<p>At this point, I realized my job had grown in scope and felt insurmountable. I didn&#8217;t know what was going on and there was still much to learn. Combined with a torrent of new notifications, p2s, and emails, I felt lost. GitHub scaled from two to three emails per day to hundreds, P2 posts filled my other inbox, people asked difficult questions, and the sheer amount of activity at Automattic was overwhelming.</p>\n<h2>Dealing With Adversity</h2>\n<p>In the last few years, I viewed Automattic as my career end goal and suddenly I was there, years ahead of schedule. Not just that, I was struggling. I couldn&#8217;t grasp what was going on and I felt paralyzed in the face of work. I grappled with the thought that I was bad at my job, didn&#8217;t belong there, and that I wouldn&#8217;t last the next six months. I had this feeling that at any time, they were going to pull me into a call and say it isn&#8217;t working out.</p>\n<p>A number of questions ran through my head. What would people think if they saw I left after the acquisition? Everyone&#8217;s treating it as a promotion and congratulating me. Maybe I&#8217;m not ready? I was handed a theme to review and struggling to read basic lines of code, mulling it over in my mind, why can&#8217;t I do this?</p>\n<p>Sometimes I had the wrong window open and was reviewing my code but was so preoccupied, I didn&#8217;t realize it. Today, it takes me four days to review 6,000 lines of code in a theme but at the time, it took me two weeks to move through 1,000 lines.</p>\n<h2>The Catch Up Calls</h2>\n<p>It&#8217;s at this point that I was introduced to the bi-weekly catch up call. The team leads would chat with each person individually every two weeks to find out how they were, what they were doing, and what they&#8217;d like to do the following week. It was a chance to flag any problems and plan ahead.</p>\n<p>I experienced nothing like this at CFTP or at any of my previous jobs and combined with the stalling work on the review, I panicked. My first catch up call was awkward and didn&#8217;t last long. My second catch up call didn&#8217;t go so well. I was at WordCamp Norway preparing to give a talk on <a href="http://www.wptherightway.org/en/index.html" target="_blank">WP The Right Way</a>. I sat in a quiet room and received a call on a Skype from my team lead.</p>\n<p>I felt as though I was put on the spot having to justify what I&#8217;d been doing the last two weeks, and trying to figure out how to spin weeks of panicking in front of a computer into a tale of bountiful code reviewing, pleasant Norwegian winters, and a smile.</p>\n<h2>Recovering From the Breakdown</h2>\n<p>Instead, I closed my machine and burst into tears. A few minutes later I opened my machine, apologized, and tried to explain what had happened. I was told they didn&#8217;t care how much work I was doing as long as I was learning and happy. A colleague picked up the review I was working on and noted that I was  thorough with the parts I reviewed.</p>\n<p>My team lead, Steph, checked up on me every two to three days for the next two weeks to make sure I was okay and tried to find what kind of work I took to best. I spent time on deploys, then moved on to a long rotation doing code review so that I could focus on particular tasks and build my confidence.</p>\n<p>While this was happening, another colleague asked if I was okay as he thought I was down. He introduced me to an internal slack channel called <a href="http://bluehackers.org/" target="_blank">Bluehackers</a> where other Automatticians who struggled could share their experiences. Seeing other people talk candidly about their problems made me recognize a lot of things I hadn&#8217;t considered, the most important being that I wasn&#8217;t alone.</p>\n<h2>I&#8217;m Not Alone</h2>\n<p>I wasn&#8217;t the only one who struggled some days and failed to get anything done. I wasn&#8217;t the only one who panicked when faced with new or even familiar tasks. Everyone at VIP was friendly and supportive, not because they knew of my situation, but because they are nice people. One time, my technical lead sent me three family sized pies because we had a slack discussion on pudding.</p>\n<p>Sometimes I don&#8217;t get anything done. Sometimes I struggle to do things I normally do effortlessly. Sometimes I turn off the video in calls because I&#8217;m still in bed. It&#8217;s 3PM and I can&#8217;t bring myself to get up, changed, and eat. There are so many projects I want to do. I have the knowledge, I have the resources, the support, the time, but they don&#8217;t get done, and it&#8217;s a struggle to explain why. Sometimes it&#8217;s things I know that need doing, like buying food or paying bills.</p>\n<h2>Confirmation Things are Working Out</h2>\n<p>A few months later I was in Seville at WordCamp Europe. Initially, I wasn&#8217;t going to go but decided I would regret it if I didn&#8217;t. I threw some clothes in a suitcase and purchased a flight. Large groups of people are scary, but I&#8217;ve found WordCamps tend to have familiar friendly faces mixed in. I can&#8217;t stress how big a boost it is to be able to see and make friends from event to event, yet still meet new people.</p>\n<p>Before I left, I found myself with my former boss and now colleague. He asked how I was getting along at Automattic. He asked me this before, and I said, &#8220;It was rough at the start but I think I&#8217;m there now.&#8221; He told me that everyone else at the company thought good of me and that I was fitting in well. It might have been simple statement but it meant a lot to me.</p>\n<h2>A Bout of Impostor Syndrome</h2>\n<p>I had real moments when I went to sleep thinking I was going to lose my job, that I might not be cut out to be a developer, and that I didn&#8217;t deserve the things I had. But throughout the entire process, my team leads and my colleagues tried to support me. They placed my well-being first and they proactively asked if I was ok when they suspected something was wrong, and sought to put real solutions in place where they could.</p>\n<p>They found other people with similar problems and tried to give me the ability to express what was happening, sharing their own problems coping, and what they were doing to keep on top of them. They gave praise and listened to good ideas, asked for help when they needed it, and they understood. Right now, I&#8217;m ok, but things have a habit of creeping up unnoticed, triggered by unexpected things.</p>\n<p>I get anxious about food at WordCamps if I don&#8217;t know what&#8217;s being served, I&#8217;m uncomfortable in social situations, and at times I have problems gathering the energy to do day-to-day things, but I&#8217;m lucky. I have a good job, a nice family, a comfortable apartment, and interesting work. My problems are mild and I know others have it worse. Most people are going to pretend everything&#8217;s ok but everyone needs a little help.</p>\n<h2>Suggestions for Employers and Struggling Employees</h2>\n<p>Automattic has things in place to make sure Automatticians lead healthy mental lives. We have an unlimited holiday allowance, a small expense budget to make traveling easier (e.g. a pot of tea at an airport or a massage), team meet ups, sabbaticals, and many others. Matt Mullenweg doesn&#8217;t want Automatticians to struggle, we work hard and it takes its toll. Often, we forget that we have to take care of our emotional and mental needs and give ourselves time.</p>\n<p>Consider creating your own internal Bluehackers group and give people avenues to express themselves when they need to. Make sure they&#8217;re happy, and that you care about their well-being more than their quality of work and output as reassurance goes a long way. Some companies have gone as far as setting minimum holiday allowances to force employees to spend time on themselves.</p>\n<p>If you&#8217;re dealing with problems like these, talk about it. Talk to a GP/Doctor, a friend, family, whatever works for you. Talking is hard, but it&#8217;s necessary. If someone opens up to you, listen. Don&#8217;t try to offer solutions, don&#8217;t compare and contrast, don&#8217;t try to offer sympathy, don&#8217;t expect it to be sorted out in a month&#8217;s time. Simply listen as that person chose to tell you, so give them space and respect.</p>\n<p>If you suspect someone is down, ask them if they&#8217;re ok and if you notice they bounce back, tell them, and tell them you&#8217;re glad! Highlight interesting things that happen, help them when they make a mistake, ask them when you make one yourself. But remember, sometimes all someone needs is a hug and a cup of tea to know that things are ok. Give them space, don&#8217;t ask for explanations, and let them know you&#8217;re there if you need them.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Oct 2015 17:11:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"Post Status: How WordPress core development happens — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=14528";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://poststatus.com/how-wordpress-core-development-happens-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2409:"<p>Welcome to the Post Status Draft podcast, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a> and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Brian and his guest co-host, <a href="https://twitter.com/williamsba">Brad Williams</a> discuss some of today’s hottest, current WordPress news.</p>\n<p>This week Brian and Brad talk about how to get involved in WordPress core, what to expect when you do, how to navigate the waters of core development. They also discuss term meta, its use cases, how it works, and why it’s a great feature for WordPress 4.4.</p>\n<p>Brad is guest hosting this week, as Joe is out. He’s the co-founder of <a href="https://webdevstudios.com">WebDevStudios</a>, a co-organizer for <a href="https://2015.us.wordcamp.org/about/organizers/">WordCamp US</a>, and wrote <a href="http://bit.ly/prowp3">Professional WordPress Design &amp; Development </a> (my go-to book on WordPress development). You can follow Brad on Twitter <a href="https://twitter.com/williamsba">@williamsba</a>.</p>\n<a href="https://audio.simplecast.fm/18028.mp3">https://audio.simplecast.fm/18028.mp3</a>\n<p><a href="http://audio.simplecast.fm/18028.mp3">Direct Download</a></p>\n<h3>Topics</h3>\n<p>WordPress core development process:</p>\n<ul>\n<li><a href="https://make.wordpress.org/core/components/">WordPress core components</a></li>\n<li><a href="https://make.wordpress.org/core/features-as-plugins/">Features as plugins</a></li>\n<li><a href="https://core.trac.wordpress.org/">WordPress Trac </a></li>\n<li><a href="https://codex.wordpress.org/Core_Team">The WordPress core team</a></li>\n<li><a href="https://make.wordpress.org/chat/">How to get on WordPress Slack discussions</a></li>\n</ul>\n<p>Term meta:</p>\n<ul>\n<li><a href="https://poststatus.com/?s=term+meta">Term Meta posts/notes on Post Status</a> (some members only content)</li>\n<li><a href="https://poststatus.com/notes/the-case-for-term-meta-and-a-roadmap-for-making-it-happen/">The case for term meta</a> (members only)</li>\n<li><a href="https://core.trac.wordpress.org/changeset/34529">Term meta lands in core</a></li>\n<li><a href="https://make.wordpress.org/core/tag/taxonomy/">Term Meta posts on Make Core</a></li>\n<li><a href="http://github.com/sc0ttkclark/wordpress-fields-api">WordPress Fields API project</a></li>\n</ul>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Oct 2015 00:55:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: WP101 Founded by Shawn Hesketh Turns 7 Years Old";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48481";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"http://wptavern.com/wp101-founded-by-shawn-hesketh-turns-7-years-old";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1903:"<p>Earlier this week, WordPress video training site <a href="https://www.wp101.com/">WP101</a>, founded by Shawn Hesketh, <a href="https://www.wp101.com/birthday/">turned seven years old</a>. Since launching in 2008, Hesketh&#8217;s videos have been viewed more than a million times by over 500k people. He&#8217;s also re-recorded the videos that make up the WP101 series 17 times. With seven years of experience under his belt, I asked Hesketh what he would have done differently in the beginning.</p>\n<p>&#8220;From a technical standpoint, I wish I’d picked a solid membership plugin that would have enabled us to grow. We’re planning a costly migration in the coming months, and a better membership plugin might have saved us the considerable hassle and cost,&#8221; Hesketh told the Tavern.</p>\n<p>Technical issues aside, Hesketh believes his business&#8217; success is largely due to his focus on serving people, &#8220;It’s one thing to create an online course and hope people discover it. But it takes much more dedication to actually engage people on a daily basis, take the time to understand their goals, and then help them get clear on how to accomplish those goals,&#8221; he said.</p>\n<p>Hesketh doesn&#8217;t have any regrets but wishes he launched the question and answer forum on the first day, &#8220;Its given me the opportunity to answer questions that may not be covered in our videos. That’s the real value that WP101 brings to the table, real people helping others,&#8221; he said.</p>\n<p>WP101 launched around the same time as a lot of commercial theme shops such as iThemes, StudioPress, and WooThemes. Although WP101 doesn&#8217;t sell commercial themes or plugins, Hesketh has carved out a space in the WordPress ecosystem that enables him to make a living. If you use WP101 or have in the past, I&#8217;d love to hear what you think of his videos in the comments.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 03 Oct 2015 01:33:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:88:"WPTavern: The Top 100 Active WordPress Themes and Plugins on GoDaddy’s Hosting Network";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48462";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"http://wptavern.com/the-top-100-active-wordpress-themes-and-plugins-on-godaddys-hosting-network";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5167:"<p>It was a warm, sunny afternoon in Tempe, AZ as I walked with a group of GoDaddy employees on our way to lunch during Pressnomics 3 earlier this year. It&#8217;s the first time I met Mendel Kurland, Christopher Carfi, and Kurt Payne in person. During lunch, we discussed a number of topics from the efforts made to change the company&#8217;s image, to ideas that help the WordPress community.</p>\n<p>I suggested to the team that GoDaddy create a billboard chart that shows the most popular themes and plugins used across its network. Not only would the information be beneficial to the company, it would also give the WordPress community valuable insight into what plugins and themes are used on a webhosting network with millions of customers.</p>\n<p>Nine months after our discussion, GoDaddy turned the idea into reality with the <a href="https://garage.godaddy.com/wordpress-hot-100/">Hot 100</a>.</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/10/GoDaddyHot100.png"><img class="size-full wp-image-48463" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/10/GoDaddyHot100.png?resize=1025%2C682" alt="Top 100 Plugins and Themes of The Week" /></a>Top 100 Plugins and Themes of The Week\n<p>GoDaddy tracks which themes and plugins are activated across the millions of sites it hosts and puts the 100 most popular of each into a list. The list is generated each week and places the previous week of results into an archive allowing you to monitor trends.</p>\n<p>Similar to the <a href="http://www.billboard.com/charts/hot-100">Billboard Hot 100</a>, you can see the current rank of a plugin or theme, whether it&#8217;s moved up or down, and what its rank was the previous week. With an influential list like the Hot 100, it would be easy to accept paid listings. Carfi, confirms <a href="https://garage.godaddy.com/webpro/wordpress/hot-100-wordpress-plugins-and-themes/">it&#8217;s not possible</a> to purchase placement.</p>\n<h2>How the Lists Are Generated</h2>\n<p>The Hot 100 is determined by ranking the net change in the number of active installs of WordPress plugins and themes in aggregate across GoDaddy&#8217;s hosting network. It looks at plugins and themes that are active at the time of the analysis and does not include plugins or themes that are deactivated.</p>\n<p>Instead of using the total number of active installs, the Hot 100 looks at the week-over-week change in active installs. This enables the list to determine which plugins and themes are hot or part of a rising trend. It also prevents bias towards plugins that already have a large install base such as Jetpack.</p>\n<p>Interestingly, themes on the list that are non-GPL are specifically noted and link to the Hot 100 instead of their corresponding theme page. In a <a href="https://www.facebook.com/groups/advancedwp/permalink/1025849944143886/">post published</a> to the Advanced WordPress Facebook group, Jeff King, Senior Vice President of Hosting at GoDaddy explains why.</p>\n<blockquote><p>One great recommendation and valuable bit of feedback we received is that, since the community embraces GPL, we should reflect that ethos in the Hot 100 list. While some non-GPL themes or plugins may occasionally show up in the list due to the fact that some non-GPL items still exist in the ecosystem, we don&#8217;t necessarily need to link to them. As of next week, we&#8217;ll be removing links to non-GPL themes and plugins.</p></blockquote>\n<h2>The Hot 100 Is a Valuable Resource</h2>\n<p>Although WordPress.org provides stats for plugin and theme authors, you can&#8217;t determine where they&#8217;re being used. The GoDaddy Hot 100 gives the public and developers of popular plugins and themes an opportunity to see how well they&#8217;re doing on one of the largest webhosts in the industry. While Jetpack and Akismet are the two most active plugins and seven default themes make up the top 10 themes, it&#8217;s the 25th-100th rankings that I find interesting.</p>\n<p>For example, <a href="https://wordpress.org/plugins/hello-dolly/">Hello Dolly</a> which ships with WordPress and is activated by default after installation is ranked 27th this week. Last week, it ranked 38th meaning a lot of new installs of WordPress have taken place. This indicates that even though a lot of customers disable the plugin at some point after installation, it remains active on many sites hosted by GoDaddy.</p>\n<p>One of the largest jumps I&#8217;ve seen so far is the <a href="https://wordpress.org/plugins/image-widget/">Image Widget</a> plugin by Modern Tribe. It was ranked 95th last week and 31st this week. It would be interesting to know why a lot of new WordPress installs are activating this plugin on GoDaddy hosted sites this week versus last week.</p>\n<p>The <a href="https://garage.godaddy.com/wordpress-hot-100/">Hot 100</a> is a valuable resource and I encourage you to see if your favorite plugins and themes made the list. Although it&#8217;s specific to GoDaddy, do you think the data is valuable? Would you like to see other large webhosting companies provide a glimpse into the most active WordPress themes and plugins used across their network?</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Oct 2015 18:51:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WPTavern: Jetpack 3.7.2 Patches Two Security Vulnerabilities";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48458";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wptavern.com/jetpack-3-7-2-patches-two-security-vulnerabilities";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1336:"<p>Jetpack 3.7.2 is <a href="https://wordpress.org/plugins/jetpack/">available for download</a> and patches two security vulnerabilities. The first is a cross-site scripting vulnerability in the contact form due to improper input sanitation that affects Jetpack 3.7.0 and below. Marc-Alexandre Montpas of <a href="https://sucuri.net/">Sucuri</a> is credited with responsibly disclosing the vulnerability.</p>\n<p>The second is an information disclosure vulnerability present in certain hosting configurations responsibly disclosed by Jaime Delgado Horna of <a href="http://listae.com/">Listae</a>. In addition to patching the vulnerabilities, 3.7.2 also fixes an error with the REST API that creates multiple drafts and published posts. Other notable fixes includes:</p>\n<ul>\n<li>Updating the Google+ logo in our sharing buttons.</li>\n<li>Adding custom capabilities for module management for multisite installs.</li>\n<li>Fixing a bug that was sending the contact form response fields in the wrong order.</li>\n</ul>\n<p>Montpas has <a href="https://blog.sucuri.net/2015/10/security-advisory-stored-xss-in-jetpack.html">additional information</a> on the cross-site scripting vulnerability discovered in Jetpack on the Sucuri blog, including a timeline of events. Please update to Jetpack 3.7.2 as soon as possible to protect your sites.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Oct 2015 16:12:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"WPTavern: WPWeekly Episode 208 – A Nod to the King";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48447";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wptavern.com/wpweekly-episode-208-a-nod-to-the-king";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2841:"<p>In this episode of WordPress Weekly, <a href="http://marcuscouch.com/">Marcus Couch</a> and I discuss the death of Alex King who was a pillar of the WordPress project. King passed away a few days ago from colon cancer. We share stories of meeting and discussing WordPress topics with King and describe his many contributions to WordPress. King will be dearly missed by the WordPress community.</p>\n<p>During the second half of the show, we discuss upcoming changes in WordPress 4.4, the lessons I learned moderating comments on WP Tavern, and WordCampus renaming to WPCampus.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="http://wptavern.com/alex-king-founder-of-crowd-favorite-passes-away">Alex King, Founder of Crowd Favorite Passes Away</a><br />\n<a href="http://alexking.org/blog/2015/08/24/rememberances">Alex King&#8217;s Final Request</a><br />\n<a href="http://wptavern.com/wp-super-cache-1-4-5-patches-xss-vulnerability"> WP Super Cache 1.4.5 Patches XSS Vulnerability</a><br />\n<a href="http://wptavern.com/lessons-i-learned-moderating-comments-in-wordpress"> Lessons I Learned Moderating Comments in WordPress</a><br />\n<a href="http://wptavern.com/wordcampus-renames-event-to-wpcampus"> WordCampus Renames Event to WPCampus</a><br />\n<a href="http://wptavern.com/wordpress-4-4-to-possibly-rearrange-fields-to-the-comment-form"> WordPress 4.4 to Possibly Rearrange Fields to the Comment Form</a><br />\n<a href="http://wptavern.com/wordpress-4-4-removes-the-view-post-and-get-shortlink-buttons-from-the-post-editor"> WordPress 4.4 Removes the View Post and Get Shortlink Buttons From the Post Editor</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a href="https://wordpress.org/plugins/cf7-customizer/">Contact Form 7 Customizer</a> allows you to alter items like spacing and button size of the contact form using the customizer.</p>\n<p><a href="https://wordpress.org/plugins/view-admin-as/">View Admin As</a> lets you simulate what a site looks like from a user with a specific role or capability.</p>\n<p><a href="https://wordpress.org/plugins/grayscale-images/">Grayscale Images</a> converts images to gray-scale and displays the colored image hovered over.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, October 7th 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="http://www.wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #208:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Oct 2015 09:25:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WPTavern: 6 WordPress Plugins That Take Native Comments to the Next Level";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48414";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"http://wptavern.com/6-wordpress-plugins-that-take-native-comments-to-the-next-level";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:12366:"<p>Last week, I <a href="http://wptavern.com/lessons-i-learned-moderating-comments-in-wordpress">shared the lessons I learned</a> and the drawbacks to moderating comments in WordPress. In this post, I highlight six plugins that solve a problem I encountered or enhance comments for both readers and site administrators. All of the plugins are free of charge and available from the <a href="https://wordpress.org/plugins/">WordPress plugin directory</a>.</p>\n<h2>Problem Solvers</h2>\n<h3>Crowd Control</h3>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/CrowdControlPluginBanner.png"><img class="aligncenter size-full wp-image-48420" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/CrowdControlPluginBanner.png?resize=799%2C253" alt="Crowd Control Plugin Banner" /></a>I discovered that not all comments need to be moderated. <a href="https://wordpress.org/plugins/crowd-control/">Crowd Control</a>, by Postmatic, gives readers the ability to report comments they feel don&#8217;t adhere to a site&#8217;s commenting policy.</p>\n<p>When enabled, a new option is displayed on the <strong>General &#8211; Discussion</strong> settings page. You can configure how many reports a comment needs before it&#8217;s sent to the moderation queue and whether administrators should be notified when it happens.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/09/CrowdControlSettings.png"><img class="size-full wp-image-48421" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/09/CrowdControlSettings.png?resize=798%2C174" alt="Crowd Control Settings" /></a>Crowd Control Settings\n<p>If an administrator approves a comment that&#8217;s in moderation due to hitting the threshold, it won&#8217;t end up back in the moderation queue. This gives administrators the last word on whether a comment is acceptable or not.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/CrowdControlInAction.png"><img class="size-full wp-image-48422" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/CrowdControlInAction.png?resize=686%2C202" alt="Crowd Control in Action" /></a>Crowd Control in Action\n<p>If you think a comment needs an administrator&#8217;s attention or does not adhere to the WP Tavern <a href="http://wptavern.com/comment-policy">commenting policy</a>, hover over the comment and click the report button. A new column is added to <strong>edit-comments.php</strong> that displays how many reports a comment has. It&#8217;s important to note that detailed information of who reported the comment is not saved to the database.</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/CrowdControlReportedColumn.png"><img class="size-full wp-image-48423" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/CrowdControlReportedColumn.png?resize=807%2C193" alt="Reported Comments Column" /></a>Reported Comments Column\n<p>The system is open for abuse but I trust that the Tavern readership will use it responsibly.</p>\n<h3>Show Parent Comment</h3>\n<p>Comments that are pending moderation in the WordPress backend that are in response to another comment are hard to moderate. <a href="https://wordpress.org/plugins/show-parent-comment/">Show Parent Comment</a>, developed by <a href="https://profiles.wordpress.org/stephencronin/">Stephen Cronin</a>, adds a <strong>Show More</strong> dropdown to the <strong>edit-comments.php</strong> screen that allows administrators to see the text of the comment that a person is responding too.</p>\n<p><a href="http://wptavern.com/6-wordpress-plugins-that-take-native-comments-to-the-next-level#gallery-48414-1-slideshow">Click to view slideshow.</a><br />\nI&#8217;ve used this plugin for more than two weeks and I enjoy the user interface. It looks and acts as if it&#8217;s a natural part of WordPress. Chris Christoff <a href="https://core.trac.wordpress.org/ticket/33627">created a ticket</a> in Trac with the suggestion that a user interface element like the one in Cronin&#8217;s plugin be added to core. If you have feedback on the best way to accomplish this, please add it to the ticket.</p>\n<h2>Enhancements to Native Comments</h2>\n<h3>Epoch</h3>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/EpochPluginBanner.png"><img class="aligncenter size-full wp-image-48415" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/EpochPluginBanner.png?resize=806%2C255" alt="Epoch Plugin Banner" /></a><a href="https://wordpress.org/plugins/epoch/">Epoch</a> is a plugin developed by Postmatic and a few other contributors that enhances WordPress&#8217; comment system. Unlike services such as Disqus or Livefyre that replace the comment system, Epoch adds features to WordPress&#8217; native comments. This allows you to keep comments within your database at all times without relying on a third-party.</p>\n<p>Epoch applies a series of visual enhancements to the comment form. Replies from the post author are a different color from regular responses and the date and time the comment is written is displayed at the top. Epoch also uses Ajax to send and receive comments which eliminates the need to refresh the page.</p>\n<a href="http://wptavern.com/6-wordpress-plugins-that-take-native-comments-to-the-next-level#gallery-48414-2-slideshow">Click to view slideshow.</a>\n<p>Epoch has a front end moderation capability that allows site administrators to approve, trash, or spam comments. Unlike the native comment form, Epoch doesn&#8217;t load the comments unless the browser reaches a certain point on a post or is accessed via a direct link.</p>\n<p>In most instances, the comment form loads quickly but on certain mobile devices, the lack of speed is noticeable. The team is aware of the performance issues and is attacking the problem with a three stage approach.</p>\n<p>Epoch relies on JavaScript to function so if a visitor browsing your site has JavaScript disabled, the comments don&#8217;t load. Again, the team is aware of this issue and is creating a fallback to WordPress&#8217; native comment system if the files can&#8217;t be retrieved from its CDN or JavaScript is disabled.</p>\n<h3>Basic Comment Quicktags</h3>\n<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/BasicCommentQuicktagPluginBanner.png"><img class="aligncenter size-full wp-image-48426" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/BasicCommentQuicktagPluginBanner.png?resize=769%2C251" alt="Basic Comment Quicktag Plugin Banner" /></a>In WordPress 4.3, the allowed HTML tags text displayed near the comment form <a href="https://core.trac.wordpress.org/ticket/30157">was removed</a>. The tags were removed because they&#8217;re note relevant and confusing to most users. While I agree that the text is not relevant, I think the comment form should have basic text formatting buttons so readers don&#8217;t have to remember and manually type HTML tags.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/BasicCommentQuicktagsOnTheTavern.png"><img class="size-full wp-image-48428" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/BasicCommentQuicktagsOnTheTavern.png?resize=665%2C368" alt="Basic Comment Quicktags in Action" /></a>Basic Comment Quicktags in Action\n<p>Once Basic Comment Quicktags is installed, navigate to <strong>Settings &#8211; Discussion</strong> and check the box to enable them for comments. When enabled, the comment text area will have Bold, Italic, Link and Quote buttons. The best part of this plugin is that it exposes a built-in core feature using the <a href="http://codex.wordpress.org/Quicktags_API">Quicktags API</a> added to WordPress 3.3. Text formatting buttons in the comment area is a courtesy I&#8217;d like more site owners to give to readers.</p>\n<h3>Simple Comment Editing</h3>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/10/SimpleCommentEditingPluginBanner.png"><img class="aligncenter size-full wp-image-48429" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/10/SimpleCommentEditingPluginBanner.png?resize=764%2C262" alt="Simple Comment Editing Plugin Banner" /></a><a href="https://wordpress.org/plugins/simple-comment-editing/">Simple Comment Editing</a>, developed by <a href="https://profiles.wordpress.org/ronalfy/">Ronald Huereca</a>, adds the ability for readers to edit their comments in a limited time frame. By default, readers have five minutes to edit their comment once it&#8217;s submitted. Although no configuration is necessary, you can alter the time and behavior of the plugin by using <a href="https://github.com/ronalfy/simple-comment-editing#wordpress-filters">actions and filters</a>. I&#8217;ve changed the time limit to 15 minutes on the Tavern to make sure readers have plenty of time to make edits.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/SimpleCommentEditingInAction.png"><img class="size-full wp-image-48430" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/SimpleCommentEditingInAction.png?resize=676%2C173" alt="Simple Comment Editing Countdown Timer" /></a>Simple Comment Editing Countdown Timer\n<p>With Simple Comment Editing installed, the amount of contact form submissions and requests to edit a comment have gone down considerably.</p>\n<h3>Postmatic</h3>\n<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/PostmaticPluginBanner.png"><img class="aligncenter size-full wp-image-48432" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/PostmaticPluginBanner.png?resize=801%2C235" alt="Postmatic Plugin Banner" /></a><a href="https://wordpress.org/plugins/postmatic/">Postmatic</a> is a plugin that <a href="https://gopostmatic.com/">ties into a service</a> and has a number of features. Readers can subscribe to posts or to comments and receive updates via email. Postmatic has a beautiful email template that shows the most recent reply, the commenter&#8217;s Gravatar, and a recap of the post and conversation.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/PostmaticCommentEmailTemplate.png"><img class="size-full wp-image-48433" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/10/PostmaticCommentEmailTemplate.png?resize=727%2C833" alt="Postmatic Comment Email Template" /></a>Postmatic Comment Email Template\n<p>Readers can respond to comments via email without having to visit the comment form. Site administrators can reply, trash, or submit comments to Akismet via email. It&#8217;s important to note that Postmatic is not a third-party commenting service. Instead, it uses the native comment system in WordPress allowing you to keep and own your data at all times.</p>\n<p>While I moderate comments from the WordPress mobile app or the WordPress backend, Postmatic is a great fallback. I also think the email template looks great and offers a better user experience than the comment notification emails provided by WordPress. Postmatic <a href="https://gopostmatic.com/technology/">does a lot more</a> than what I describe above but for the purpose of this article, I focused on the comment portion of the service.</p>\n<p>Postmatic is a new addition to the Tavern that I encourage you to try. After trying it out, please tell me about your experience. I especially wany to know if it&#8217;s easier to keep track of and take part in conversations.</p>\n<h2 class="font-headlines">Notifications That a Comment in Moderation is Approved</h2>\n<p>One of the problems I&#8217;ve yet to solve is being addressed by a number of WordPress contributors in <a href="https://core.trac.wordpress.org/ticket/33717#comment:6">ticket 33717</a>. If all goes well, it&#8217;s possible this feature will be added to WordPress 4.4. Once added, readers whose comments end up in the moderation queue will automatically be notified by WordPress when it&#8217;s approved.</p>\n<h2>It’s Not Perfect but It&#8217;s an Improvement</h2>\n<p>Even with all the features these plugins provide, I don&#8217;t think the comment system in WordPress or the form on WP Tavern is perfect. I&#8217;m not sure if perfection of either can be achieved. However, I think both are improvements over the previous iterations. If there&#8217;s a plugin you use to improve WordPress&#8217; native comments or its moderation system, let me know about it in the comments.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Oct 2015 08:28:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Donncha: The Web Won’t Forget Alex King";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:24:"http://z9.io/?p=89499737";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://z9.io/2015/09/29/the-web-wont-forget-alex-king/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2811:"<p>If you use a WordPress site, either as a visitor or owner, you&#8217;re using code that <a href="http://alexking.org/">Alex King</a>, one of the original developers of WordPress, worked on. </p>\n<p>He passed away after fighting <a href="http://alexking.org/blog/thread/cancer">cancer for 2 years</a> but his online presence lives on in the form of his blog with it&#8217;s deep archive of posts going back years, and in so much code that it&#8217;s humbling to look at his <a href="http://alexking.org/projects">projects page</a>. Looking through the svn log of WordPress trunk shows he still had a hand in helping the WordPress project until relatively recently:</p>\n<blockquote><p>trunk$ svn log|grep alexkingorg<br />\nprops alexkingorg for the initial, long-suffering patch.<br />\nprops alexkingorg. fixes <a href="https://core.trac.wordpress.org/ticket/24162">#24162</a>.<br />\nProps alexkingorg<br />\n`wp.media` instead of just `media`. props alexkingorg, see #22676.<br />\nAdd $post_ID context to the pre_ping filter. props alexkingorg, devesine. fixes #18506.<br />\nAdd filter so the users can select custom image sizes added by themes and plugins, props alexkingorg, fixes #18520<br />\nesc_textarea() and application for obvious textarea escaping. props alexkingorg. fixes #15454<br />\nEscape links by default.  Props alexkingorg. see #13051<br />\nSafely include class-json.php, class-simplepie.php and class-snoopy.php, props alexkingorg, fixes #11827<br />\nFix user creation from admin after changes for #10751. Fixes #10811 props alexkingorg.<br />\nHooks needed to allow alternate category admin inteface. Props alexkingorg. fixes #3408<br />\nWrap cat name in CDATA. props alexkingorg.  fixes #3252</p></blockquote>\n<p>I&#8217;m sorry I never met Alex, however I remember working virtually with him and Adam Tow on AllThingsD which seems like a lifetime away now. Adam has <a href="http://tow.com/2015/09/28/remembering-alex-king/">a great article</a> on Alex on his blog, as does Matt <a href="http://ma.tt/2015/09/remembering-alex-king/">who went into detail</a> about Alex&#8217;s involvement with WordPress going back to the days of b2. I had completely forgotten <a href="http://alexking.org/blog/2004/01/25/wordpress-css-style-competition">the CSS competition</a> he mentioned!</p>\n<p>Alex, your legacy lives on. </p>\n\n<p><strong>Related Posts</strong><ul><li> <a href="http://z9.io/2003/03/10/b2-hacks/" rel="bookmark" title="Permanent Link: b2 Hacks">b2 Hacks</a></li><li> <a href="http://z9.io/2007/12/12/how-to-find-cocaine-in-ireland/" rel="bookmark" title="Permanent Link: How to find cocaine in Ireland">How to find cocaine in Ireland</a></li><li> <a href="http://z9.io/2003/05/31/king-of-hearts/" rel="bookmark" title="Permanent Link: King Of Hearts">King Of Hearts</a></li></ul></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Sep 2015 20:44:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Donncha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:92:"WPTavern: WordPress 4.4 Removes the View Post and Get Shortlink Buttons From the Post Editor";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:102:"http://wptavern.com/wordpress-4-4-removes-the-view-post-and-get-shortlink-buttons-from-the-post-editor";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2435:"<p>In WordPress 4.4, the View Post button in the post editor is disappearing in favor of a clickable permalink. Four years ago, <a href="http://scribu.net/">Scribu</a>, who is a <a href="http://scribu.net/blog/left-wordpress.html">former WordPress contributor</a>, created ticket <a href="https://core.trac.wordpress.org/ticket/18306">#18306</a>. In the ticket, Scribu explains that the View Post button is redundant functionality and suggests that it be removed in favor of a clickable permalink.</p>\n<p>Here are two screenshots of the post editor. The first is WordPress 4.3 and the second is WordPress 4.4. Clicking the permalink allows you to preview the post in its current state. Notice the slug part of the URL is in bold. You need to click the Edit button to edit the permalink.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/WP43PermalinkEditor.png"><img class="wp-image-48397 size-full" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/WP43PermalinkEditor.png?resize=568%2C213" alt="WordPress 4.3 Post Editor" /></a>WordPress 4.3 Post Editor\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/09/WP44PermalinkEditor.png"><img class="wp-image-48398 size-full" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/09/WP44PermalinkEditor.png?resize=570%2C188" alt="WordPress 4.4 Post Editor" /></a>WordPress 4.4 Post Editor\n<p>Not only does this change remove redundant functionality, it removes a UI element from the page. Enhancements like these are a huge win for WordPress because it makes the interface simpler without permanently removing the button&#8217;s purpose.</p>\n<p>In addition to the View Post button, the Get Shortlink button is also removed. The button shows up if you’re using a custom shortlink and can be re-enabled using code or a plugin. For most users, the Edit button is the only one they&#8217;ll see between the post title and content box.</p>\n<p>I expect some users will be frustrated as they go through the process of changing their workflow but overall, I think it&#8217;s a great improvement. What do you think?</p>\n<hr />\n<p>If you&#8217;re using the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress beta testing plugin</a> by Peter Westwood, I encourage you to set it to bleeding edge nightlies and update your site. You&#8217;ll be able to test this change and others during the WordPress 4.4 development cycle.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Sep 2015 19:22:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Matt: Remembering Alex King";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45372";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"http://ma.tt/2015/09/remembering-alex-king/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6442:"<p><a href="http://ma.tt/2009/05/wordcamp-sf-2009-2/mcm_0235-2/"><img class="alignright" src="http://i1.wp.com/ma.tt/files/2009/05/MCM_0235.JPG?resize=276%2C415" alt="" /></a>Alex speaking at WordCamp SF 2009One of the original WordPress developers, Alex King, has passed <a href="http://alexking.org/blog/thread/cancer">from cancer</a> at far too young an age. Alex actually <a href="http://alexking.org/blog/2002/10/24/b2-coding">got involved with b2 in 2002</a> and was active in the forums and the &#8220;hacks&#8221; community there.</p>\n<p>Alex had a background as a designer before he learned development, and I think that really came through as he was one of those rare people who thought about the design and usability of his code, the opposite of most development that drifts toward entropy and complexity. One of my favorite things about Alex was how <em>darn tasteful</em> he was. He would think about every aspect of something he built, every place someone could click, every path they could go down, and gave a thoughtfulness to these paths that I still admire and envy today.</p>\n<p>As an example look&nbsp;at his <a href="http://alexking.org/project/post-formats-admin-ui">project page (essentially a category archive) for the Post Formats Admin UI</a>, isn&#8217;t that clever and intuitive how the posts connect together, and when more time passes in the thread it&#8217;s <a href="https://cloudup.com/ceWJeb9zcK6">shown as a break</a>. It&#8217;s classic Alex: something simple and thoughtful that in hindsight is so gobsmackingly obvious you wonder why everything doesn&#8217;t work that way, but you never would have imagined it beforehand. And Alex wouldn&#8217;t just imagine it and do it for himself, he released his best work as open source, as a gift to the community and the world, over and over and over again.</p>\n<p>Back when WordPress was getting started Alex was a celebrity of the b2 world, his hacks (plugins before plugins) were&nbsp;some of the coolest ones around. We had a ton of overlapping interests in web standards, photography, development, and gadgets so&nbsp;we frequently read and commented on each other&#8217;s blogs. I would never miss a post on his site, and that&#8217;s back when we were both doing one or more posts a day. To get a sense of Alex it&#8217;s worth <a href="http://alexking.org/blog">exploring his blog</a> &#8212; he was a clear thinker and therefore a clear writer.&nbsp;The straightforward nature Alex wrote with was something I always admired about him.</p>\n<p>We <a href="http://alexking.org/blog/2003/07/08/wordpress-development">discussed WordPress early on</a>, Alex <a href="http://alexking.org/blog/2003/07/23/wordpress-hacks">signed up to help with what later became the plugin directory</a>, and <a href="http://alexking.org/blog/2004/01/25/wordpress-css-style-competition">his CSS competition</a> (look at those prizes! and notice it&#8217;s all GPL) was hugely influential on the path to themes, and <a href="http://alexking.org/blog/2003/08/15/wordpress-dev">he officially became a contributing developer in August of 2003</a>.</p>\n<p>The list of what Alex was one of the first to do in the WordPress community is long, and <em>in hindsight</em> seems gobsmackingly obvious, which is the sign of innovation. I smile when I think of how he <a href="http://alexking.org/blog/2003/10/02/moving-to-denver">moved from the Bay area to Denver</a> before it was cool, or his <a href="https://cloudup.com/cL9v2RKEI0T">love of scare quotes</a>. Once there was something going on in WordPress and he called me to talk about it, I was so surprised, he said the number was right on my contact page (and it was) but even though it had been there for years no one had ever called it before, but that was just the type of person Alex was, always reaching out and connecting.</p>\n<p><img src="https://atow.files.wordpress.com/2015/09/2007-04-16_2122-18_8683.jpg" alt="" /></p>\n<p><em>Adam Tow, myself, Barry Abrahamson, Alex King; Photo from <a href="http://tow.com/2015/09/28/remembering-alex-king/">Adam Tow&#8217;s post</a>.</em></p>\n<p>I&#8217;m not sure how to include this next part: I couldn&#8217;t write last night &#8212; I was too tired. After falling&nbsp;asleep I had one of those super vivid dreams that you can&#8217;t tell are dreams. There had been some sort of mix-up on Twitter and Alex was still alive, I&nbsp;visited Colorado with my sister and saw him surrounded by family at a picnic table, all the rooms were taken so they put me on a floor mattress where I slept. Tons of his friends were around and we took pictures together, he was excited about the better front&nbsp;camera on the 6s+. (Alex understood&nbsp;mobile all the way back to the Treo days.) It was all very ordinary and in a group setting, until we decided to walk alongside a small highway, past some grain silos, to meet the group at a bar. The walk was just the two of us and we talked and&nbsp;laughed about the big mix-up and he asked about this post, what was going to be in it. He got most excited and emphatic with the part about him being a developer with great taste, and a clear writer <a href="http://www.williamzinsserwriter.com/">William Zinsser</a> would be proud of, so I like to think that those were two things he was proud of. The overwhelming emotion I remember was joy. Waking up was disconcerting, part of me wants to believe part of Alex&#8217;s spirit was there, where another more logical part thinks my mind was&nbsp;just going through <a href="https://en.wikipedia.org/wiki/K%C3%BCbler-Ross_model">the denial stage of grief</a>. Regardless I know that Alex will stay in the minds of people who knew him for many years to come.</p>\n<p>Code that Alex wrote still runs billions of times a day across millions of websites, and long after that code evolves or gets refactored the ideas and philosophy he embedded in WordPress will continue to be part of who we are. Alex believed so deeply in open source, and was one of the few people from a design background who did. (Every time you see <a href="https://en.wikipedia.org/wiki/Share_icon">the share icon</a> on the web or in Android you should think of him.) I like the idea that part of his work will&nbsp;continue in software for decades to come, but I&#8217;d rather have him here, thinking outside the box and challenging us to do better, to be more obvious, and work harder for our users. He never gave up.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Sep 2015 17:57:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: Alex King, Founder of Crowd Favorite Passes Away";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48380";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://wptavern.com/alex-king-founder-of-crowd-favorite-passes-away";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8966:"<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/AlexKingWithDaughter.jpg"><img class="size-full wp-image-48381" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/AlexKingWithDaughter.jpg?resize=620%2C360" alt="Alex King with his daughter Heather" /></a>Alex King with his daughter Caitlin\n<p>Alex King, who founded web development agency <a href="https://crowdfavorite.com/">Crowd Favorite,</a> and <a href="https://profiles.wordpress.org/alexkingorg/">author</a> of several WordPress themes and plugins <a href="http://tow.com/2015/09/28/remembering-alex-king/">passed away last night</a> at his home. In January 2013, King was diagnosed with stage four colon cancer. He used his blog to tell the <a href="http://alexking.org/blog/thread/cancer">story of his fight to stay alive</a>.</p>\n<p>On August 24th, King <a href="http://alexking.org/blog/2015/08/24/cycle-1-of-new-trial">finished the first cycle</a> of a new clinical trial that he says went well.</p>\n<blockquote><p>I’m nearly through my first cycle of the new clinical trial and overall I think it’s gone pretty well. I was able to get the 6 pills/day (3 in the morning, 3 in the evening) without too much concern. That said, by the end of the 5 days taking the pills I would basically sleep for the day.</p></blockquote>\n<p>On the same day, he published what would be his <a href="http://alexking.org/blog/2015/08/24/rememberances">final request</a> to the WordPress community. King requested that anyone with memories of him and his career to submit them to his wife.</p>\n<blockquote><p>One of the things my wife and I are trying to do is put together some information about my career that will hopefully give my 6 year-old daughter a better sense of who I was as an adult. She knows me as “dad”, but when she gets older she’ll be curious about who I was to my peers and colleagues.</p></blockquote>\n<p>If you have any memories of King, please honor his request and <a href="http://alexking.org/contact">submit them</a> to his wife.</p>\n<h2>Outpouring of Support</h2>\n<p>As the news of King&#8217;s death spread throughout the community, many shared grief on Twitter while others reflected on his accomplishments in WordPress.</p>\n<blockquote class="twitter-tweet" width="550"><p lang="en" dir="ltr">Most <a href="https://twitter.com/hashtag/WordPress?src=hash">#WordPress</a> users will never know how important <a href="https://twitter.com/alexkingorg">@alexkingorg</a> was to our CMS. A great loss to the community. <a href="https://t.co/JPtI3gMfE7">https://t.co/JPtI3gMfE7</a></p>\n<p>&mdash; Name cannot be blank (@mor10) <a href="https://twitter.com/mor10/status/648574009097875456">September 28, 2015</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet" width="550"><p lang="en" dir="ltr">alex king (<a href="https://twitter.com/alexkingorg">@alexkingorg</a>) was an incredible asset to <a href="https://twitter.com/hashtag/wordpress?src=hash">#wordpress</a>. he will be missed.</p>\n<p>&mdash; Tom McFarlin (@tommcfarlin) <a href="https://twitter.com/tommcfarlin/status/648561299689996288">September 28, 2015</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet" width="550"><p lang="en" dir="ltr">Things <a href="https://twitter.com/alexkingorg">@alexkingorg</a> committed to WordPress: Rss feeds for comments, password protected posts, comments having linkable URLS, &amp; Localization.</p>\n<p>&mdash; Aaron Jorbin (@aaronjorbin) <a href="https://twitter.com/aaronjorbin/status/648555278892404736">September 28, 2015</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet" width="550"><p lang="en" dir="ltr">So sad to hear of the death of <a href="https://twitter.com/alexkingorg">@alexkingorg</a>. One of the original WordPress developers. RIP.</p>\n<p>&mdash; Mike Little (@mikelittlezed1) <a href="https://twitter.com/mikelittlezed1/status/648639966092902401">September 28, 2015</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet" width="550"><p lang="en" dir="ltr">Very sad to hear about the passing of <a href="https://twitter.com/alexkingorg">@alexkingorg</a> &#8211; smart, analytical, kind, every time I met/talked w/ him.</p>\n<p>&mdash; Cory Miller (@corymiller303) <a href="https://twitter.com/corymiller303/status/648590138331656192">September 28, 2015</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet" width="550"><p lang="en" dir="ltr">One of the earliest <a href="https://twitter.com/techstars">@techstars</a> mentors passed. An original <a href="https://twitter.com/WordPress">@wordpress</a> developer w/ <a href="https://twitter.com/photomatt">@photomatt</a>, <a href="https://twitter.com/alexkingorg">@alexkingorg</a> embodied <a href="https://twitter.com/hashtag/givefirst?src=hash">#givefirst</a> perfectly.</p>\n<p>&mdash; Micah Baldwin (@micah) <a href="https://twitter.com/micah/status/648582043161391104">September 28, 2015</a></p></blockquote>\n<p></p>\n<p>In addition to Twitter, many published their thoughts and memories of King on their site.</p>\n<ul>\n<li><a href="http://tow.com/2015/09/28/remembering-alex-king/">Remembering Alex King</a></li>\n<li><a href="http://pressnomics.com/2015/09/alex-king-1975-2015/">Alex King 1975-2015</a></li>\n<li><a href="http://wp.mattwie.be/2015/09/28/rip-alex-king/">RIP Alex King</a></li>\n<li><a href="https://poststatus.com/alex-king/">Rest in peace, Alex King</a></li>\n<li><a href="http://chrislema.com/remembering-alex-king/">Chris Lema on Remembering Alex King</a></li>\n</ul>\n<h2>King&#8217;s Impact on WordPress Early On</h2>\n<p>King is one of a handful of people who witnessed the transition <a href="https://github.com/WordPress/book/blob/master/Content/Part%201/2-b2-cafelog.md">from b2 to WordPress</a>. He&#8217;s one of the earliest WordPress developers and is largely credited with motivating developers to <a href="https://github.com/WordPress/book/blob/master/Content/Part%203/12-themes.md">build themes</a> using the template engine in WordPress 1.5.</p>\n<blockquote><p>Alex King wrote a <a href="http://alexking.org/blog/2004/01/20/wordpress-css-style-switcher">CSS Style Switcher</a> hack, which came with three CSS stylesheets. Not everyone who had a WordPress blog wanted to create their own stylesheet, and many didn’t know how. Users needed a pool of stylesheets to choose from. To grow the number of stylesheets available, Alex ran a WordPress <a href="http://alexking.org/blog/2004/01/25/wordpress-css-style-competition">CSS Style competition</a>. Prizes, donated by members of the community, were offered for the top three stylesheets; $70, $35, and $10 respectively. &#8211; WordPress History Book</p></blockquote>\n<p>In the first contest, King received 38 submissions with Pink Lillies by Naoko Takano winning first place.</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/pink-lillies.png"><img class="size-large wp-image-48383" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/pink-lillies.png?resize=500%2C300" alt="Pink Lillies Wins First Design Contest" /></a>Pink Lillies Wins First Design Contest\n<p>Each sylesheet submitted to the contest was <a href="http://alexking.org/projects/wordpress/styles">available to the public</a>. In essence, King&#8217;s website was an early version of the WordPress theme directory. In the <a href="http://alexking.org/blog/2005/02/27/wordpress-theme-competition">second contest</a>, he received over 100 submissions. In total, King hosted 138 themes on his site. He decided not to host the competition again in 2006 due to the sheer amount of work required.</p>\n<h2>Appearances</h2>\n<p>King appeared on several different WordPress podcasts and spoke at a number of WordCamps. Here are links to a few of them.</p>\n<ul>\n<li><a href="http://wptavern.com/wpweekly-episode-79-%e2%80%93-alex-king-and-wphelpcenter">WPWeekly Episode 79 – Alex King And WPHelpCenter</a></li>\n<li><a href="https://www.youtube.com/watch?v=6x-WXann_O0">DradCast &#8211; Episode 037 with Alex King</a></li>\n<li><a href="http://www.wpelevation.com/2014/01/episode-15-alex-king/">WP Elevation Episode #15 – Alex King</a></li>\n<li><a href="http://archive.wordpress.org/interviews/2013_04_23_King.html#L53">Interview from 2013 for the WordPress History book</a></li>\n</ul>\n<p></p>\n<p></p>\n<p></p>\n<h2>My Memorable Experience With Alex King</h2>\n<p>The last time I spoke to King in person was at WordCamp San Francisco 2013. A group of us rode together in a party limo complete with blinking lights inside. I sat across from him and asked a few questions related to his health. I also asked him about the early days of WordPress. King was a soft-spoken man who at times is hard to hear but it turned out to be a great and memorable conversation.</p>\n<p>The WordPress community has lost an inspirational person and a pillar of the WordPress project. My deepest condolences go out to his friends and family. King is survived by his wife Heather and his daughter Caitlin.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Sep 2015 02:42:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Post Status: Rest in peace, Alex King";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=14479";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:33:"https://poststatus.com/alex-king/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2118:"<p>The prototypical WordPress developer and blogger, Alex King was a tremendously influential member of the WordPress ecosystem.</p>\n<p>He was one of a very small group of people involved during the transition of b2 to WordPress. He helped to create the website that would become the first WordPress.com VIP client. He started the first WordPress-centric consulting agency. He was fundamental to the development and direction of dozens of WordPress features. He even created a small icon that would go on to become the ubiquitous &#8220;share icon&#8221;.</p>\n<p>Alex was a selfless contributor, a driven entrepreneur, and a friend to many. He was also a husband to Heather and a father to Caitlin.</p>\n<p>In addition to web work, Alex loved golf and photography. His blog is an outstanding example of the art, where he logged his story, his passions, and his challenges. I could not possibly tell his story better <a href="http://alexking.org/about">than he himself can</a>.</p>\n<p>Following are more valuable links to help remember Alex:</p>\n<ul>\n<li><a href="http://alexking.org/">Alexking.org</a></li>\n<li><a href="http://alexking.org/blog/thread/cancer">His open battle with cancer</a></li>\n<li><a href="http://alexking.org/blog/topic/wordpress">His WordPress posts</a></li>\n<li><a href="http://alexking.org/blog/topic/photography">His photography</a></li>\n<li><a href="https://profiles.wordpress.org/alexkingorg/">His WordPress.org profile</a></li>\n<li><a href="http://archive.wordpress.org/interviews/2013_04_23_King.html">His interview for the WordPress history book</a></li>\n<li><a href="https://crowdfavorite.com/">Crowd Favorite, the agency he founded</a></li>\n<li><a href="http://tri.be/thank-you-alex-king/">Peter Chester reflects on the impact Alex had in his life</a></li>\n<li><a href="http://tow.com/2015/09/28/remembering-alex-king/">A remembrance from his friend Adam Tow</a></li>\n<li><a href="http://ma.tt/2015/09/remembering-alex-king/">Matt Mullenweg remembers Alex King</a></li>\n</ul>\n<p>Today is a sad day for the WordPress community, and Alex King will be missed. May he rest in peace.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 28 Sep 2015 20:29:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"WPTavern: WordPress 4.4 to Possibly Rearrange Fields to the Comment Form";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48365";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"http://wptavern.com/wordpress-4-4-to-possibly-rearrange-fields-to-the-comment-form";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1622:"<p>WordPress plugin and theme developers need to take note of an <a href="https://make.wordpress.org/core/2015/09/25/changes-to-fields-output-by-comment_form-in-wordpress-4-4/">important change in WordPress 4.4</a> that rearranges the comment form. In WordPress 4.4, the comment form is arranged so that the text area is displayed first followed by the name, email, and website fields.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/CommentsFirst.png"><img class="size-full wp-image-48366" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/CommentsFirst.png?resize=1024%2C992" alt="Comment Text Area is First" /></a>Comment Text Area is First\n<p>According to Aaron Jorbin, WordPress core developer, the change improves navigation when using the keyboard to toggle through fields. It also makes it easier for users to leave comments.</p>\n<p>Since the change requires filters and actions to run in a different order, the HTML output by <code>comment_form</code> will be different. Jorbin explains that if developers use any of the hooks inside <code>comment_form</code>, especially <code>comment_form_field_comment</code> and <code>comment_form_after_fields</code>, developers should test their themes and plugins using <a href="https://wordpress.org/download/nightly/">WordPress 4.4 nightlies</a>.</p>\n<p>If you run into any problems or inconsistencies, please report them to<a href="https://core.trac.wordpress.org/ticket/29974"> ticket #29974</a>. What do you think of the change? Do you think readers want to write their comment first instead of filling out the other three fields?</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 27 Sep 2015 19:02:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"WPTavern: WordCampus Renames Event to WPCampus";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48351";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wptavern.com/wordcampus-renames-event-to-wpcampus";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1937:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/WPCampusFeaturedImage.png"><img class="aligncenter size-full wp-image-48353" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/WPCampusFeaturedImage.png?resize=811%2C161" alt="WPCampus Featured Image" /></a>When <a href="http://wptavern.com/wordcampus-a-conference-devoted-to-using-wordpress-in-higher-education">WordCampus was announced</a>, some of our readers <a href="http://wptavern.com/wordcampus-a-conference-devoted-to-using-wordpress-in-higher-education#comment-72098">expressed concern</a> that the event&#8217;s name is too similar to <a href="https://2015.us.wordcamp.org/">WordCamp US</a> and would cause confusion.</p>\n<p>There was also concern that without being officially sanctioned by WordCamp Central, the event would infringe the <a href="http://wordpressfoundation.org/trademark-policy/">WordCamp trademark</a> that is owned and protected by the WordPress Foundation. To alleviate these concerns, the organizing group changed the name from WordCampus to <a href="http://wpcampus.org/">WPCampus</a>.</p>\n<p>Rachel Carden, one of the event&#8217;s primary organizers, says the team had a backup plan from day one, &#8220;While most of the community agreed that the name WordCampus was spot on, the possibility of changing our name was proposed from day one as WordCampus was being confused with WordCamp US,&#8221; Carden said.</p>\n<p>&#8220;As much as we love WordCampus, we didn’t want it to get in the way of what we hope to achieve, so the topic was passionately discussed at a planning meeting. The entire community cast their votes for a new name and WPCampus was selected as the clear winner,&#8221; Carden told the Tavern.</p>\n<p>More than 250 people have expressed interest in WPCampus. If you’re interested in speaking, sponsoring, or attending the event, please <a href="http://wpcampus.org/">fill out the survey. </a></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 27 Sep 2015 17:25:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"Matt: Cars should be Open Source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45365";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://ma.tt/2015/09/cars-should-be-open-source/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:741:"<blockquote><p>“The reality is that more and more decisions, including decisions about life and death, are being made by software,” Thomas Dullien, a well-known security researcher and reverse engineer who goes by the Twitter handle Halvar Flake, said in an email. “But for the vast majority of software you interact with, you are not allowed to examine how it functions,” he said.</p></blockquote>\n<p>The Times <a href="http://www.nytimes.com/2015/09/27/business/complex-car-software-becomes-the-weak-spot-under-the-hood.html">has a great look at hacker and car manufacturer mishaps and makes the case over and over again for Open Source</a>. It&#8217;s great to see more of the world waking up to the importance of open source.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 26 Sep 2015 18:18:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: Freenode to Purge Inactive Nicks, Channels, and Accounts on October 2nd";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48346";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"http://wptavern.com/freenode-to-purge-inactive-nicks-channels-and-accounts-on-october-2nd";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1822:"<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/02/cleaning.jpg"><img class="size-full wp-image-16322" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/02/cleaning.jpg?resize=1025%2C491" alt="photo credit: 13Moya 十三磨牙 - cc" /></a>photo credit: <a href="http://www.flickr.com/photos/ericqian/4447132325/">13Moya 十三磨牙</a> &#8211; <a href="http://creativecommons.org/licenses/by-nc-nd/2.0/">cc</a>\n<p><a href="https://freenode.net/">Freenode</a>, the IRC network responsible for hosting communication servers for WordPress and many other open source projects <a href="http://blog.freenode.net/2015/09/services-database-purge/">will be performing maintenance</a> on or around October 2nd. Freenode will remove expired nicks, channels, and accounts.</p>\n<p>Although a lot of people have switched to <a href="https://make.wordpress.org/chat/">SlackHQ</a> from IRC to communicate in real-time, the WordPress support channel with hundreds of users still exists on Freenode with no plans to move it to Slack.</p>\n<p>If you have a registered account on Freenode and have not identified with the service in 120 days or more, you must authenticate your account before October 2nd. You can do this by connecting to Freenode and using the <em>/msg nickserv identify</em> command, then enter your password.</p>\n<p>If you&#8217;ve forgotten your password, use the <em><span class="verbatim-b"><a href="https://freenode.net/faq.shtml">/msg nickserv sendpass</a></span></em> command to recover lost passwords. Alternatively, use the <em>/msg nickserv help sendpass</em> command to receive help recovering your password.</p>\n<p>It&#8217;s especially important for users who have registered channels on Freenode to authenticate or else the username and channels associated with it will be removed.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 Sep 2015 18:57:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Donncha: WP Super Cache 1.4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:24:"http://z9.io/?p=89499667";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"http://z9.io/2015/09/25/wp-super-cache-1-4-5/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6585:"<p><a href="https://wordpress.org/plugins/wp-super-cache/">WP Super Cache</a> is a fast caching plugin for WordPress. It will help your site run faster and serve more traffic.</p>\n<p>This is a security and bugfix release.\n<ul>\n<li>Some servers display a directory index when no index.html is found in a directory. That may reveal the filenames of cache files.</li>\n<li> There were issues in the settings page that might allow an attacker to browse or delete files named index.html.</li>\n<li> PHP Object Injection could occur if an attacker managed to inject malicious code into the legacy cache meta files.</li>\n</ul>\n<p>When you upgrade, your “legacy cache” files for logged in users will be deleted. This may have an impact on your site:</p>\n<ul>\n<li>If your site is slow at generating new pages.</li>\n<li>If you have many known users (logged in users or people who comment).</li>\n</ul>\n<p>Your site will suddenly have to generate new cache files for all visiting known users.</p>\n<p>Relying on caching like this is not recommended for these types of users as it’s very inefficient. Each user has a separate cache file that must be checked whenever the plugin does administration work like cleaning up stale cache files.</p>\n<p>If most of your traffic is anonymous users who don’t comment you don’t need to worry about this.</p>\n<h3>Directory Listings</h3>\n<p>If a server is configured to show directory listings it will show files and directories in the cache directory to visitors who access those directories directly through their browser. This might reveal private posts, and in the case where legacy caching is enabled for known users the login cookie was stored in &#8220;.meta&#8221; files that could be downloaded.</p>\n<p><a href="http://i2.wp.com/z9.io/files/2015/08/Screen-Shot-2015-08-11-at-14.40.00.png"><img src="http://i2.wp.com/z9.io/files/2015/08/Screen-Shot-2015-08-11-at-14.40.00.png?resize=660%2C275" alt="2013" class="aligncenter size-large wp-image-89499673" /></a></p>\n<p>Files named &#8220;index.html&#8221; were added to the main cache directories to stop remote users viewing the contents of the cache directories. Unfortunately it&#8217;s not possible to add empty index.html files to the supercache directories because those files could be served by accident to legitimate visitors of the site. However, the plugin will also add a directive that disables directory listings to the file cache/.htaccess. You can now also change the location of the cache directory on the Advanced Settings page of the plugin. If you can&#8217;t disable directory indexing on your server and you have private posts you should change this location and use PHP mode to serve cache files.</p>\n<p><img src="http://i2.wp.com/z9.io/files/2015/08/cache-location.png?resize=660%2C314" alt="cache-location" class="aligncenter size-full wp-image-89499679" /></p>\n<p>If a directory index is found in the cache directory it will show a warning like this to administrators:</p>\n<p><a href="http://i2.wp.com/z9.io/files/2015/08/Screen-Shot-2015-08-12-at-12.27.29.png"><img src="http://i2.wp.com/z9.io/files/2015/08/Screen-Shot-2015-08-12-at-12.27.29.png?resize=660%2C231" alt="index.html warnings" class="aligncenter size-large wp-image-89499671" /></a></p>\n<p>Clicking the logout link will log everyone out, except the user who clicks it, but it guarantees that the login cookies are updated, just in case someone has copied the cookie from an old meta file. </p>\n<h3>Directory Traversal and File Deletion</h3>\n<p>User input in the settings page wasn&#8217;t properly sanitised. The code that sanitised directory paths when deleting cache files wasn&#8217;t secure and might allow an attacker to view or delete files named index.html. Deletes are protected by a nonce, limiting the useful lifetime of the URL however.</p>\n<h3>PHP Object Injection</h3>\n<p>The plugin used serialize and unserialize <a href="https://wordpress.org/support/topic/php-object-injection?replies=2">to store data</a> in &#8220;legacy cache&#8221; meta files. This might be used to perform a <a href="https://www.owasp.org/index.php/PHP_Object_Injection">PHP object injection</a> attack. Serialised data is now stored as JSON data.</p>\n<p>The format of legacy cached files has changed. The files in the meta directory no longer have a .meta extension. They are .php files now and each file has a &#8220;die()&#8221; command to stop anyone loading them.<br />\nThe data stored in those files is now stored as JSON serialised data. The login cookie is an MD5 hash now as well.<br />\nWhen you upgrade the plugin your existing legacy cache files will be deleted and regenerated as visitors use your site.</p>\n<p>Apart from those security fixes there have been a number of enhancements and bugfixes:</p>\n<ul>\n<li> Disabling the plugin no longer deletes the configuration file. Uninstalling will do that however.</li>\n<li> Enhancement: Only preload public post types. Props webaware.</li>\n<li> It&#8217;s now possible to deactivate the plugin without visiting the settings page.</li>\n<li> Fixed the cache rebuild system. Rebuild files were deleted immediately but now survive up to 10 seconds longer than the request that generate them.</li>\n<li> Minor optimisations: prune_super_cache() exits immediately if the file doesn&#8217;t exist.</li>\n<li> The output of wp_cache_get_cookies_values() is now cached per visit.</li>\n<li> Added PHP pid to the debug log to aid debugging.</li>\n<li> Various small bug fixes.</li>\n<li> Fixed reset of expiry time and GC settings when updating advanced settings.</li>\n<li> Removed CacheMeta class to avoid APC errors. It&#8217;s not used any more.</li>\n<li> Fixed reset of advanced settings when using &#8220;easy&#8221; settings page.</li>\n</ul>\n<p>This release wouldn&#8217;t be possible without the help of <a href="https://kraft.im/">Brandon Kraft</a>, <a href="https://medium.com/@dane">Dane Odekirk</a>, Ben Bidner, Jouko Pynnönen and <a href="https://scrutinizer-ci.com/">Scrutinizer</a>. Thank you all!</p>\n\n<p><strong>Related Posts</strong><ul><li> <a href="http://z9.io/2008/10/24/wp-super-cache-084-the-garbage-collector/" rel="bookmark" title="Permanent Link: WP Super Cache 0.8.4, the garbage collector">WP Super Cache 0.8.4, the garbage collector</a></li><li> <a href="http://z9.io/2009/01/09/wp-super-cache-087/" rel="bookmark" title="Permanent Link: WP Super Cache 0.8.7">WP Super Cache 0.8.7</a></li><li> <a href="http://z9.io/2010/02/08/wp-super-cache-099/" rel="bookmark" title="Permanent Link: WP Super Cache 0.9.9">WP Super Cache 0.9.9</a></li></ul></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 Sep 2015 17:19:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Donncha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WPTavern: Lessons I Learned Moderating Comments in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48340";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wptavern.com/lessons-i-learned-moderating-comments-in-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3414:"<p>In the past 4-5 weeks, I&#8217;ve moderated every comment submitted to WP Tavern. Not only was it an experiment to see what would happen but a new way for me to use WordPress. The experiment introduced me to several drawbacks in WordPress&#8217; comment moderation system.</p>\n<h2>Lack of Context</h2>\n<p>Comments that are pending moderation in the WordPress backend that are in response to another comment are hard to moderate. Take the following screenshot for example. This comment is in response to a comment submitted by Norcross. Unless I open Norcross&#8217; comment in a new browser tab or window, I have no idea what the context of the conversation is. Pending notifications in the WordPress mobile app also don&#8217;t show text from the parent comment.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/WordPress43CommentContent.png"><img class="size-full wp-image-48150" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/WordPress43CommentContent.png?resize=851%2C161" alt="WordPress 4.3 Comment Content Area" /></a>WordPress 4.3 Comment Content Area\n<p>I propose that WordPress core adds the text from parent comments to replies in the backend so I know what people are responding too. This also helps when replying to comments from the backend as I&#8217;ll know the context of the conversation.</p>\n<h2>Lack of Notifications That a Comment in Moderation is Approved</h2>\n<p>WordPress does not send an email notification when a comment is approved from moderation. However, there are a lot of people <a href="https://core.trac.wordpress.org/ticket/33717">working to add</a> this feature to WordPress 4.4.</p>\n<h2>A Whitelisting System for Anonymous Comments</h2>\n<p>The biggest drawback to comment moderation is that not every comment needs to be moderated. A whitelisting system can lessen the burden of having to moderate each comment.</p>\n<p>WordPress provides the ability to blacklist comments. You can also configure a set of parameters to determine when a comment goes into the moderation queue such as, number of links, content within the comment, and if the comment author has a previously approved comment. None of these configurations are useful if WordPress is configured to send every comment to moderation.</p>\n<p>WP Tavern does not have open registration and allows comments from anonymous people. This makes whitelisting difficult since the IP address, name, URL, and email address of a commenter can easily change or be imitated. The whitelisting component of WordPress becomes more useful if you can tie it to a registered user account.</p>\n<p>I&#8217;m unsure if WordPress can improve this area of the moderation system or if it&#8217;s an assumed risk administrators take when accepting anonymous comments.</p>\n<h2>A Major Time Suck</h2>\n<p>Moderating every comment is a pain and sucks up time that can be spent doing something else. During my vacation last week, I continued to moderate comments from the WordPress mobile app because if I didn&#8217;t, the conversation stopped. I&#8217;ve concluded that by accepting anonymous comments, there needs to be a way for the audience to help moderate instead of doing it on my own.</p>\n<p>In a future post, I&#8217;m going to list a few WordPress plugins I&#8217;ve discovered that takes the commenting system to the next level. Many of the plugins solve one or most of the problems listed above.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 Sep 2015 15:52:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"WPTavern: WP Super Cache 1.4.5 Patches XSS Vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48336";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"http://wptavern.com/wp-super-cache-1-4-5-patches-xss-vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:606:"<p>If you use <a href="https://wordpress.org/plugins/wp-super-cache/">WP Super Cache</a>, you should immediately update to version 1.4.5 as it <a href="https://wordpress.org/plugins/wp-super-cache/changelog/">patches a XSS vulnerability</a> in the settings page. This version also prevents PHP object injections. In addition to security patches, 1.4.5 contains a number of bug fixes. Make sure to update your sites as soon as possible to patch the vulnerability. You can <a href="http://z9.io/2015/09/25/wp-super-cache-1-4-5/">find more details</a> on this release on Donncha Ó Caoimh&#8217;s website.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 Sep 2015 14:37:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:85:"Post Status: All about the WordPress REST API and its current state — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=14463";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://poststatus.com/the-wordpress-rest-api-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3437:"<p>Welcome to the Post Status Draft podcast, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a> and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Brian and his co-host, <a href="https://twitter.com/joe_hoyle">Joe Hoyle</a>, a co-founder and the CTO of <a href="https://hmn.md/">Human Made</a>, discuss some of today’s hottest, current WordPress news.</p>\n<p>This week, Joe and Brian go into depth discussing all aspects of the WordPress REST API, and the state of the API today.</p>\n<p>With the recent merge proposal, there is a good chance it will be included in WordPress core via a two stage process in the WordPress 4.4 and 4.5 releases. The first release would be the core infrastructure and the second release would include the endpoints. This is our longest podcast, but we go in depth on one of WordPress&#8217;s most anticipated features in years.</p>\n<a href="http://audio.simplecast.fm/17641.mp3">http://audio.simplecast.fm/17641.mp3</a>\n<p><a href="http://audio.simplecast.fm/17641.mp3">Direct Download</a></p>\n<h3>Topics:</h3>\n<ul>\n<li>Brief overview: what is the REST API?</li>\n<li>Why is the REST API important, and why are people excited about it?</li>\n<li>REST API proposal</li>\n<li>Reviews from the core team</li>\n<li>New REST API core component</li>\n<li>Trac Ticket</li>\n<li>Comparison&#8217;s to Drupal&#8217;s REST API</li>\n<li>Customizer roadmap in regards to the API</li>\n<li>Authentication and future REST API projects</li>\n</ul>\n<h3>Links:</h3>\n<ul>\n<li><a href="http://v2.wp-api.org/">REST API Version 2 site and docs</a></li>\n<li><a href="https://make.wordpress.org/core/2015/09/21/wp-rest-api-merge-proposal/">REST API merge proposal</a></li>\n<li><a href="https://make.wordpress.org/core/2015/09/23/committer-reviews-of-the-rest-api/">Committer review requests for the REST API</a></li>\n<li><a href="https://poststatus.com/wordpress-json-rest-api/">Introduction to the WordPres REST API</a></li>\n<li><a href="https://poststatus.com/how-storycorps-uses-wordpress-to-enable-storytelling-everywhere/">How StoryCorp uses the REST API</a> for mobile audio uploads</li>\n<li><a href="https://www.openhub.net/p/wordpress">WordPress on OpenHub</a></li>\n<li><a href="https://core.trac.wordpress.org/ticket/33982">The core ticket</a> for merging the REST API infrastructure (Stage 1)</li>\n<li><a href="https://poststatus.com/notes/lessons-for-wordpress-from-drupalcon/">Lessons for WordPress from Drupalcon</a> (members only)</li>\n<li>Matt Mullenweg&#8217;s <a href="http://www.producthunt.com/live/matt-mullenweg#comment-151620">excitement for the API</a> on a Product Hunt AMA</li>\n<li>Ryan McCue&#8217;s &#8220;<a href="https://poststatus.com/a-future-api/">A Future API</a>&#8221; post on possibilities, including centralized auth</li>\n<li><a href="https://make.wordpress.org/core/2015/09/23/outlining-a-possible-roadmap-for-the-customizer/">Possible roadmap for the Customizer</a> (including REST API integrations, perhaps)</li>\n<li>The new <a href="https://make.wordpress.org/core/components/rest-api/">REST API core Trac component</a></li>\n<li><a href="https://github.com/WP-API/OAuth1">OAuth1</a> for the WordPress REST API</li>\n<li>The <a href="https://github.com/WP-API">API on Github</a></li>\n<li><a href="http://feelingrestful.com/">A Day of REST</a> conference all about the API</li>\n</ul>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 Sep 2015 05:21:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"WPTavern: WPWeekly Episode 207 – Going Postmatic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48327";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wptavern.com/wpweekly-episode-207-going-postmatic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2704:"<p>In this episode of WordPress Weekly, <a href="http://marcuscouch.com/">Marcus Couch</a> and I are joined by <span class="st">Jason Lemieux</span> and <span class="st">Dylan Kuhn</span> of <a href="https://gopostmatic.com/">Postmatic</a>. During the show, we learn the company&#8217;s history and how it started. We discuss what the service offers and how people can take advantage of it.</p>\n<p>Last but not least, we learn what the company has in store for version 2.0. If you&#8217;ve thought about using Postmatic or want to learn more about the company, this episode is for you.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="http://wptavern.com/the-wordpress-rest-api-is-one-major-step-closer-to-being-merged-into-core">The WordPress REST API Is One Major Step Closer to Being Merged Into Core</a><br />\n<a href="http://wptavern.com/the-impacts-heropress-is-having-on-wordpress-communities-in-india">The Impacts HeroPress Is Having on WordPress Communities in India</a><br />\n<a href="http://wptavern.com/jeff-yablon-and-the-wordpress-foundation-settle-out-of-court">Jeff Yablon and the WordPress Foundation Settle Out of Court</a><br />\n<a href="http://torquemag.io/the-ultimate-guide-to-the-wordpress-rest-api-an-ebook-by-josh-pollock/">The Ultimate Guide to the WordPress REST API by Josh Pollock</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a href="https://wordpress.org/plugins/wp-user-activity/">WP User Activity</a> logs activity in WordPress. Activities can be sorted, filtered, and viewed per-user, along with session data for logged in users, IP addresses, and user-agents.</p>\n<p><a href="https://wordpress.org/plugins/wishlist-for-woocommerce/">Wishlist for WooCommerce</a> lets customers save the items they want to purchase in the future.</p>\n<p><a href="https://wordpress.org/plugins/database-to-excel/">Database to Excel</a> allows you to export a MySQL database table to a Microsoft Excel file. It also allows you to show all of the values within a database table with an <em>export to Excel</em> option.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, September 30th 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="http://www.wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #207:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 24 Sep 2015 18:31:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"Akismet: Akismet WordPress Plugin 3.1.4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.akismet.com/?p=1873";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://blog.akismet.com/2015/09/24/akismet-3-1-4-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1261:"<p>Version 3.1.4 of <a href="http://wordpress.org/plugins/akismet/">the Akismet plugin for WordPress</a> is now available.</p>\n<p>This update clarifies the error messages that Akismet uses so that they&#8217;re easier to understand, and it enables link previews in the admin for all links in a comment &#8212; not just the author&#8217;s website link. A fix is also included for a bug that could have caused comment moderation emails to be sent for some comments that were caught as spam.  For a full list of the changes in this release, see the <a href="https://plugins.trac.wordpress.org/log/akismet/trunk">revision log</a>.</p>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href="http://wordpress.org/plugins/akismet/">the WordPress plugins directory</a>.</p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1873/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1873/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1873&subd=akismet&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 24 Sep 2015 17:35:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Christopher Finke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:90:"WPTavern: WP Comment Humility Relocates the Comments Top-level Menu Item to the Posts Menu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48313";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:100:"http://wptavern.com/wp-comment-humility-relocates-the-comments-top-level-menu-item-to-the-posts-menu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1786:"<p>One of the key <a href="http://wptavern.com/wordpress-4-3-billie-named-after-jazz-singer-billie-holiday-is-available-for-download">features in WordPress 4.3</a> is that comments on pages are disabled by default. If you only enable comments for posts, you may be interested in <a href="https://wordpress.org/plugins/wp-comment-humility/">WP Comment Humility</a>, a new plugin created by <a href="https://profiles.wordpress.org/johnjamesjacoby/">John James Jacoby</a> that moves the top-level Comments menu item to the Posts menu. The following screenshot better illustrates what it does.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/CommentHumilityInAction.png"><img class="size-full wp-image-48314" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/09/CommentHumilityInAction.png?resize=429%2C378" alt="Comment Humility in Action" /></a>Comment Humility in Action\n<p>If a site enables comments for posts only, this location for the menu item makes sense. What if you&#8217;re using Custom Post Types? According the <a href="https://wordpress.org/plugins/wp-comment-humility/faq/">plugin&#8217;s FAQ</a>, the user experience might be weird, &#8220;If you have a post type other than <em>post</em> that supports comments, it may make more sense to not use this plugin,&#8221; Jacoby said. He suggests giving it a try and if the user experience doesn&#8217;t feel right, to disable it.</p>\n<p>Documentation is <a href="http://github.com/stuttter/wp-comment-humility/">located on GitHub</a> where you can also submit Pull Requests. WP Comment Humility works out-of-the-box without any configuration options on WordPress 4.3 and is <a href="https://wordpress.org/plugins/wp-comment-humility/">available for free</a> in the WordPress plugin directory.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 23 Sep 2015 23:19:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"WPTavern: Highlights From Matt Mullenweg’s Q&amp;A Session on Product Hunt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48303";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"http://wptavern.com/highlights-from-matt-mullenwegs-qa-session-on-product-hunt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4859:"<p>On September 22nd, Matt Mullenweg participated in a <a href="http://www.producthunt.com/live/matt-mullenweg">question and answer session</a> on <a href="http://www.producthunt.com/">Product Hunt</a>. Product Hunt is a site <span class="_Tgc">that lets users share and discover new products. In the session, Mullenweg answers questions like what advice he&#8217;d give to his 20 and 25-year-old self and how he combats burn out. Here are a few highlights from the session.<br />\n</span></p>\n<hr />\n<p><strong>Nikhil V</strong> &#8211; Hello Matt, with the upcoming release of the WP REST API in WordPress core, what do you hope to most see built with its capabilities?</p>\n<p><strong>Matt Mullenweg</strong> &#8211; I&#8217;m hugely excited about the REST API! Once the infrastructure is in, I think we&#8217;ll see really widespread adoption from plugins that right now are creating their endpoints in very ad-hoc ways. Once we iterate a bit more on the core content endpoints and authentication I think we&#8217;ll see a lot more specialized interfaces built on WP as like a content kernel, an engine powering a wide array of applications and interfaces you&#8217;d never imagine having WordPress behind them today.</p>\n<p><strong>Erik Torenberg &#8211; </strong>If you could go back in time and give advice for your, say, 20-year-old self, what would you tell yourself? How about 25?</p>\n<p><strong>Matt Mullenweg</strong> &#8211; To my 20-year-old self I would say to be okay with things building up over time. Something I didn&#8217;t appreciate until recently is that there any many productive decades ahead with which to build the things that I feel need to exist in the world. One of the best things I did then was avoid any press or capitalization on my age (to the extent I could) because youth is an ephemeral asset and just a novelty in business.</p>\n<p>To my 25-year-old self I would tell him to slow down and think about health more, I burned the candle at both ends that year. I would also say to not get as caught up in mailing list and IRC arguments and discussions, just focus on building.</p>\n<p><strong>Sydney Liu</strong> &#8211; In the early days of WordPress, what was the 20% that got you the 80% of the results?</p>\n<p><strong>Matt Mullenweg</strong> &#8211; There&#8217;s no simple answer there, if I had to pick one thing it would be <em>luck</em>.</p>\n<p><strong> <span class="comments--item--heading--name">Kristof Bernaert</span></strong> &#8211; How do you see WP about 5 years, or how do you want it to see?</p>\n<p><strong>Matt Mullenweg</strong> &#8211; In 5 years I think that WP will be infinitely easier to use for both power-users, developers, and newbies. You will be able to have a full experience of core, plugins, themes, docs, and support in several dozen languages that will be as large or larger than English. There will be over a million people making their living on top of the platform. Most people will be creating from touch devices, and their content will mostly not come from keyboards (virtual or physical) as an input device.</p>\n<p><strong><span class="comments--item--heading--name">Tys Bradford</span></strong> <span class="comments--item--heading--name">&#8211; Your accomplishments with WordPress have literally changed the face of the internet and enabled people without programming skills to make beautiful and functional websites. Do you think this could be replicated ever with mobile applications (iOS/Android)? I have seen a few companies try, but none have come close to delivering in the way WordPress is able to.</span></p>\n<p><strong>Matt Mullenweg</strong> &#8211; Thank you! The ecosystems and app stores for iOS and Android right now are too locked down, and the discoverability and overhead of apps is too distorted, for an approach like WordPress&#8217; to work for mobile applications. The environment for the foreseeable future there is going to favor more centralized apps, my only hope is that at least a few get really successful (including ours) that aren&#8217;t advertising-driven.</p>\n<h2>My Question Was Not Answered</h2>\n<p>Unfortunately, my question was not answered. However, I&#8217;m going to ask it in this post with the hope that he&#8217;ll answer it in the comments.</p>\n<p><em>You&#8217;ve spent a lot of time, money, and energy trying to create a great mobile experience in WordPress via dedicated apps. As more of the WordPress backend becomes responsive, how will this affect (if any) the priority level of developing the mobile apps versus putting that time and effort into a 100% responsive WordPress backend?</em></p>\n<p>Mullenweg answers a lot more questions than what&#8217;s listed above but those are the ones that stand out to me. You can <a href="http://www.producthunt.com/live/matt-mullenweg">read the entire session</a> on the Product Hunt site.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 23 Sep 2015 20:46:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"WPTavern: The WordPress REST API Is One Major Step Closer to Being Merged Into Core";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48284";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"http://wptavern.com/the-wordpress-rest-api-is-one-major-step-closer-to-being-merged-into-core";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2965:"<p>After more than three years of development, the <a href="http://v2.wp-api.org/">WordPress REST API</a> is one major step closer to getting merged into core. Ryan McCue, a lead contributor to the project, published the first <a href="https://make.wordpress.org/core/2015/09/21/wp-rest-api-merge-proposal/">official proposal</a> to merge the API into WordPress. The proposal explains what the REST API is, why it&#8217;s needed, an integration plan, and what happens after the merge. The plan is to integrate the API in two stages, infrastructure and endpoints.</p>\n<h2>Two Part Plan</h2>\n<p>The infrastructure is the code responsible for routing requests and handling the meta layer of the API, including JSON serialization/deserialization, linking, embedding, and REST best practices. Merging the infrastructure first allows developers to start building upon it and to migrate from existing custom code. The plan is to merge the infrastructure portion of the API in WordPress 4.4.</p>\n<p>Endpoints are considered the more complex of the two as they’re responsible for mapping data from the external JSON format to the internal data structures and vice versa. In other words, endpoints are the bridges of communication between WordPress and external applications. To provide more time for core committers to review the code, endpoints will be merged in WordPress 4.5.</p>\n<p>Development of the API <a href="https://github.com/WP-API/WP-API">takes place on GitHub</a> but core WordPress development takes place on Subversion and Trac. When the API is merged into core, it will no longer be developed as a separate project. McCue proposes that the best of GitHub and Trac be integrated so developers comfortable with GitHub can continue to contribute to the project:</p>\n<blockquote><p>Given the team’s experience with GitHub as well as Trac, we can bring the best of both worlds by helping integrate the two. This would also improve contributions to WordPress as a whole, and benefit the whole community. This will be especially important as we encourage more contributions from the wider community (client authors, for example). We think we can make good progress here, and we’d love to try to help improve the process.</p></blockquote>\n<p>Although there&#8217;s a <a href="https://github.com/wordpress/wordpress">GitHub repository for WordPress</a> that&#8217;s synced to its Subversion counterpart, it does not accept pull requests. If integrating GitHub and Trac proves to be successful, it could open the door for WordPress to accept pull requests or contributions through GitHub.</p>\n<p>The plan to merge the API into core is not finalized and the team needs your <a href="https://make.wordpress.org/core/2015/09/21/wp-rest-api-merge-proposal/">comments, questions, and opinions</a>. I encourage you to read the full proposal and the comments as McCue answers additional questions related to the merge. How happy are you to see this merge proposal?</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 23 Sep 2015 18:55:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"Matt: Product Hunt AMA Today";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45356";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"http://ma.tt/2015/09/product-hunt-ama-today/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:222:"<p>In about half an hour I&#8217;m doing an AMA (ask me anything) on Product Hunt, <a href="https://www.producthunt.com/live/matt-mullenweg">please join and ask some questions on any topic that tickles your fancy</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Sep 2015 18:39:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: The Impacts HeroPress Is Having on WordPress Communities in India";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48286";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"http://wptavern.com/the-impacts-heropress-is-having-on-wordpress-communities-in-india";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2137:"<p>Topher DeRosia, who recently attended<a href="http://wptavern.com/a-recap-of-wordcamp-pune-india-by-topher-derosia"> WordCamp Pune</a>, India, <a href="http://heropress.com/subtle-impacts/">published a post on the HeroPress blog</a> that describes the subtle impacts the project is having on people.</p>\n<p>Saurabh Shukla, lead organizer for WordCamp Pune, says the site inspired not only their speaker selection but their presentations as well, &#8220;We wanted people to derive at least a level of inspiration from the speakers and decided that stories make more sense than presentations,&#8221; Shukla said.</p>\n<p>Examples of inspiring presentations at WordCamp Pune include, a workshop where people could experience accessibility issues for themselves, WordPress for activism, and building education products for South Asia.</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/WordCamp-Pune-India-Classroom.png"><img class="size-full wp-image-48218" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/09/WordCamp-Pune-India-Classroom.png?resize=904%2C509" alt="WordCamp Pune Classrooms" /></a>Presentation in a Classroom at WordCamp Pune\n<p>According to DeRosia, many Indians feel like their WordPress communities are not getting the respect they deserve. DeRosia believes the amount of excitement expressed by Indians for HeroPress is because their work is noticed and appreciated.</p>\n<p><em>&#8220;That</em> is why India is excited about HeroPress. They’re getting respect. Not just from me, but from thousands of readers around the world,&#8221; DeRosia said.</p>\n<p>Although DeRosia says he&#8217;d be content with the impacts the site has had if HeroPress ended today, I would be sad to see it go  because it&#8217;s a great addition to the WordPress community. Thankfully, DeRosia says people are requesting more essays, exchanges of knowledge, shared wisdom, shared respect, and more of the HeroPress spirit.</p>\n<p>If an essay published on HeroPress or the <a href="http://heropress.com/about/">project&#8217;s mission</a> has inspired you in any way, please let us know in the comments.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Sep 2015 17:50:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Matt: Interview, and Complementing Slack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45326";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:41:"http://ma.tt/2015/09/complementing-slack/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1437:"<p>I had a conversation with <a href="https://about.me/tonyconrad">Tony Conrad</a> at the <a href="http://www.strictlyvc.com/">StrictlyVC</a> event in San Francisco last week, following a dizzyingly talented line-up of <a href="http://techcrunch.com/2015/09/17/chamath-palihapitaya-on-insane-burn-rates-ipos-and-raising-a-new-real-estate-fund/">Chamath Palihapitiya</a> and <a href="http://dfj.com/content/steve-jurvetson">Steve Jurvetson</a>.</p>\n<p><a href="http://techcrunch.com/2015/09/18/move-over-slack-automattic-mulls-commercializing-its-own-internal-messaging-product/">Techcrunch has a good write-up with a number of the relevant quotes from the event</a>. The only thing I&#8217;d like to respond to, because it wasn&#8217;t a direct quote, is the headline &#8220;Move Over Slack? Automattic Mulls Commercializing Its Own Internal Messaging Product.&#8221;</p>\n<p>The first problem is the headline missed the obvious alliteration of &#8220;Mullenweg Mulls,&#8221; <img src="http://s.w.org/images/core/emoji/72x72/1f600.png" alt="😀" class="wp-smiley" />but more importantly&#8230; <a href="https://slack.com/">Slack</a> has become a really key tool for both Automattic <a href="https://make.wordpress.org/chat/">and WordPress.org</a> and anything we do with the evolution of <a href="http://p2theme.com/">P2</a> (some of which we already have running internally) will be complementary to Slack, not competitive with it.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Sep 2015 04:26:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"WPTavern: Jeff Yablon and the WordPress Foundation Settle Out of Court";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=48267";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://wptavern.com/jeff-yablon-and-the-wordpress-foundation-settle-out-of-court";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5837:"<p>Earlier this year, the <a href="http://wptavern.com/the-wordpress-foundation-sues-jeff-yablon-for-trademark-infringement">WordPress Foundation sued Jeff Yablon</a> for trademark infringement. The Foundation wanted Yablon to stop using its trademarks, dismiss the opposition proceeding, pay the foundation for any profits related to use of the WordPress trademarks, pay up to $100,000 per infringing domain name, transfer the domains and pay other fees and damages.</p>\n<h2>Timeline of Events</h2>\n<p>On June 22nd, <a href="http://ttabvue.uspto.gov/ttabvue/v?pno=91221895&pty=OPP&eno=7">Yablon filed a request</a> for default judgement. On June 29th, the Foundation responded to Yablon by <a href="http://ttabvue.uspto.gov/ttabvue/v?pno=91221895&pty=OPP&eno=8">asking the Trademark Trial and Appeal Board</a> to deny Yablon&#8217;s request for default judgement.</p>\n<p>On September 9th, David Mermelstein, Administrative Trademark Judge, <a href="http://ttabvue.uspto.gov/ttabvue/v?pno=91221895&pty=OPP&eno=9">filed a response</a> that not only denied Yablon&#8217;s motion for default judgment, but also suspended proceedings until the civil case was complete.</p>\n<p>With proceedings suspended, Yablon could no longer file motions or requests with the TTAB. The only option left was to proceed through court.</p>\n<h2>The Settlement Between Yablon and The Foundation</h2>\n<p>On September 21st, Yablon and the WordPress Foundation <a href="https://cloudup.com/cLmq3DWS6MZ">settled out of court</a> (PDF).</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/09/YablonSettlementSample.png"><img class="size-full wp-image-48277" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/09/YablonSettlementSample.png?resize=839%2C621" alt="Sample of Settlement" /></a>Sample of Settlement\n<h3>Yablon&#8217;s Obligations</h3>\n<p>According to the settlement, by no later than October 15th, Yablon agrees to cease any and all use of the WordPress name, logos, trademarks, and any other name or mark confusingly similar to the term WordPress or its logo.</p>\n<p>He also has to cease any and all use of the WordPress Marks, standing alone or in combination with other words or designs, including but not limited to:</p>\n<ul>\n<li>Use in any company name</li>\n<li>Meta-tags</li>\n<li>Domain names</li>\n<li>Personalized URLs</li>\n<li>Keyword Advertising on Yablon&#8217;s websites</li>\n<li>Social media handles or account names</li>\n<li>Indoor outdoor store signage</li>\n<li>Letterhead</li>\n<li>Stationary</li>\n<li>Business cards</li>\n</ul>\n<p>Yablon must also comply with the terms of the <a href="http://wordpressfoundation.org/trademark-policy/">WordPress trademark and domain name policies</a>.</p>\n<p>No later than five days after the effective date (Oct 15th), Yablon has to transfer all of the domains he owns that incorporate the WordPress Mark to the Foundation.</p>\n<p>Last but not least, Yablon acknowledges that the Foundation owns and has the exclusive rights in and to the WordPress marks in connection with the goods and services identified in each of WordPress&#8217; registrations.</p>\n<p>Yablon can no longer do anything inconsistent with the Foundation&#8217;s ownership of its WordPress Marks and registrations thereof, including but not limited to, contesting the Foundation&#8217;s title to or the validity of the WordPress marks or the trademark registrations thereof.</p>\n<h3>WordPress Foundation&#8217;s Obligations</h3>\n<p>Once Yablon transfers the domains to the Foundation and does not breach the terms of the agreement, the Foundation will redirect the domains to a domain of Yablon&#8217;s choosing for 6 months from the effective date or April 1, 2016, whichever comes later.</p>\n<p>Within 10 days of the domains being transferred, the Foundation will file a stipulated request to withdrawal its U.S. Opposition Proceeding No. 91221895 without prejudice and Case 3:15-cv02745 in the United States District Court for the Northern District of California, without prejudice.</p>\n<p>As long as Yablon does not breach the agreement, the Foundation agrees not to sue for violating its trademarks prior to the effective date.</p>\n<p>The Foundation will not object to Yablon&#8217;s use of the WordPress Marks as part of any subdomains or subdirectories associated with any second level domain name registered to and controlled exclusively by Yablon.</p>\n<p>Examples include but are not limited to, wordpress.answerguy.com or answerguy.com/wordpress in connection with services that involve use of the WordPress platform, support the WordPress brand services, and that do not otherwise violate the rights of the Foundation.</p>\n<h2>In Summary</h2>\n<p>Both parties agree to bear their own attorney&#8217;s fees and costs, if any were incurred through the effective date.</p>\n<p>When I <a href="http://wptavern.com/the-wordpress-foundation-sues-jeff-yablon-for-trademark-infringement">spoke to Yablon</a> on the phone in June shortly after the lawsuit was filed, he sounded like he knew what he was getting into and the complexities involved with U.S. Trademarks. Yablon strongly believed he had enough evidence to pursue the matter and to see it through the court system.</p>\n<p>Instead of seeing the court case all the way through, he chose to give up which in the court system, is not the same thing as losing, as losing or winning sets a precedent.</p>\n<p>While Yablon didn&#8217;t lose the case, the WordPress Foundation didn&#8217;t win either. It&#8217;s a reminder that the Foundation will aggressively defend its trademarks in the court system if other means prove unsuccessful.</p>\n<p>Do you think Yablon’s mission to defend his use of WordPress in a top-level domain name and potentially open the door for others to do the same, was in the best interest of the WordPress community as a whole?</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Sep 2015 01:59:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"Post Status: Local WordPress development strategies and transparency in business — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=14389";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:105:"https://poststatus.com/local-wordpress-development-strategies-and-transparency-in-business-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2596:"<p>Welcome to the Post Status Draft podcast, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a> and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Brian and his co-host, <a href="https://twitter.com/joe_hoyle">Joe Hoyle</a>, a co-founder and the CTO of <a href="https://hmn.md/">Human Made</a>, discuss some of today&#8217;s hottest, current WordPress news.</p>\n<p><a href="https://audio.simplecast.fm/17416.mp3">https://audio.simplecast.fm/17416.mp3</a><br />\n<a href="http://audio.simplecast.fm/17416.mp3">Direct Download</a></p>\n<h3>Links and stories discussed:</h3>\n<h4>Working locally</h4>\n<ul>\n<li><a href="https://github.com/Varying-Vagrant-Vagrants/VVV">Varying Vagrant Vagrants (VVV)</a></li>\n<li><a href="https://github.com/Chassis/Chassis">Chassis</a></li>\n<li><a href="https://github.com/humanmade/Salty-WordPress">Salty WordPress</a></li>\n<li><a href="https://serverpress.com/get-desktopserver/">Get DesktopServer</a></li>\n<li><a href="https://www.mamp.info/en/mamp-pro/">MAMP and MAMP Pro</a></li>\n<li><a href="https://hub.docker.com/_/wordpress/">Docker Hub</a></li>\n<li><a href="https://guynathan.com/install-lamp-stack-on-mavericks-with-homebrew-with-php-mcrypt">Installing LAMP stacks with Homebrew</a></li>\n<li><a href="https://www.digitalocean.com/community/tutorials/how-to-dockerise-and-deploy-multiple-wordpress-applications-on-ubuntu">How to Dockerise and deploy multiple WordPress applications on Ubuntu</a></li>\n<li><a href="https://docs.docker.com/machine/">Docker Machine</a></li>\n<li><a href="https://github.com/Automattic/vip-quickstart">VIP Quickstart</a></li>\n<li><a href="http://wp-cli.org/">WP-CLI</a></li>\n</ul>\n<h4>Underscore.js</h4>\n<ul>\n<li><a href="http://underscorejs.org/">Underscore.js </a></li>\n<li><a href="http://themehybrid.com/weblog/intro-to-underscore-js-templates-in-wordpress">Intro to Underscore.js templates in WordPress</a></li>\n<li><a href="https://poststatus.com/backbone-js-underscore-js-and-wordpress/">Backbone.js, Underscore.js and why they matter for WordPress</a></li>\n</ul>\n<h4>Transparency</h4>\n<ul>\n<li><a href="http://wplift.com/income-reports-roundup-july-2015">WPLift&#8217;s Public income reports roundup</a></li>\n<li><a href="https://buffer.com/transparency">Buffer+Transparency</a></li>\n<li><a href="http://chrislema.com/downside-transparency-reports/">Is there a downside to transparency reports?</a></li>\n</ul>\n<h4>Nomadbase.io launch</h4>\n<ul>\n<li><a href="https://nomadbase.io/">Nomadbase.io</a></li>\n</ul>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 19 Sep 2015 17:58:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Matt: Winning Remote Work Culture";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=45324";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"http://ma.tt/2015/09/winning-remote-work-culture/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:163:"<p><a href="http://blog.cloudpeeps.com/top-10-companies-winning-at-remote-work-culture/">Top 10 companies winning at remote work culture and their secrets</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Sep 2015 17:41:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"Post Status: Gravity Flow makes custom form administrative workflows simple";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=14337";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://poststatus.com/gravity-flow-makes-custom-form-administrative-workflows-simple/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6464:"<p></p>\n<p><a href="https://gravityflow.io/">Gravity Flow</a> is one of the coolest new plugins I&#8217;ve seen in quite some time.</p>\n<p>Invoices, purchase orders, job applications, and employee vacation requests are just a few potential applications for Gravity Flow, which makes form-centric approval, user input, and notification processes simple.</p>\n<p>&#8220;With Gravity Flow, you use the power of <a href="http://www.gravityforms.com/">Gravity Forms</a> to design your forms, and you use Gravity Flow to design your process using easy to use drag-and-drop tools,&#8221; the video states. The flows created in Gravity Flow can be customized to include all sorts of user-defined paths to request stakeholder feedback, get administrative approval, or fire off a notification that a certain step in the flow has been accomplished. It can even be integrated with other notification systems like Zapier.</p>\n<p>It&#8217;s not that common to see a WordPress plugin (especially an add-on plugin) that simultaneously targets a niche and serves it so extensively. Gravity Flow is built to extend the powerful Gravity Forms product, and it really takes it an extra mile.</p>\n<p>I see a lot of potential for Gravity Flow for intranets and other corporate environments with lots of stakeholders and traditionally clunky, email based workflows for approval of common tasks.</p>\n<h3>Trying Gravity Flow</h3>\n<p>I took Gravity Flow for a spin, because there is a handy demo site capability built in. For a plugin this complex, being able to test drive it is a really great feature. Most workflow tasks can take place either in the admin or on the front-end.</p>\n<p>Creating workflows feels a lot like adding regular notifications to Gravity Forms.</p>\n<p><img class="aligncenter size-large wp-image-14340" src="https://cdn.poststatus.com/wp-content/uploads/2015/09/gravity-flow-workflow-752x579.png" alt="gravity-flow-workflow" width="752" height="579" /></p>\n<p>Workflows have many configuration and sending options. And each step can be sorted and arranged to follow a series of steps, and can even allow for delays (like for a scholarship review period, in my example).</p>\n<p>That&#8217;s the view for an administrator, but someone who is responsible for providing feedback or approval has a front-end view to directly interact with the workflow.</p>\n<p><img class="aligncenter size-large wp-image-14339" src="https://cdn.poststatus.com/wp-content/uploads/2015/09/gravity-flow-review-update-workflow-752x872.png" alt="gravity-flow-review-update-workflow" width="752" height="872" /></p>\n<p>And administrators can see reports of activity for various workflows.</p>\n<p><img class="aligncenter size-large wp-image-14338" src="https://cdn.poststatus.com/wp-content/uploads/2015/09/gravity-flow-reports-752x552.png" alt="gravity-flow-reports" width="752" height="552" /></p>\n<p>This is a pretty simple overview of the plugin, and I&#8217;d recommend you <a href="http://demo.gravityflow.io/">check out the demo</a>, or his full <a href="http://docs.gravityflow.io/category/34-walkthroughs">walkthrough</a> examples. but this at least highlights some of the plugin&#8217;s power.</p>\n<h3>Development of Gravity Flow</h3>\n<p>One of the more interesting things about Gravity Flow is that <a href="https://www.stevenhenty.com/">Steven Henty</a> made it. Steven actually works at Rocketgenius, the company behind Gravity Forms, and he is a developer of the main Gravity Forms product.</p>\n<p>I talked to Steven about why this isn&#8217;t a Gravity Forms official add-on, and what it&#8217;s like working on a side project for your own company&#8217;s product.</p>\n<blockquote><p>Rocketgenius has a lot of plans and loads of really exciting stuff in the pipeline so it was a question of priorities &#8211; Rocketgenius can’t possibly do absolutely everything at the same time. For me it’s a project that’s niche enough to be an interesting and profitable side project and yet not too time-consuming so I can continue to focus 100% on my day job.</p></blockquote>\n<p>He also reiterated how important it is to him that he had his team behind him for this project. And Carl Hancock &#8212; co-founder of Rocketgenius &#8212; is excited about Steven&#8217;s product as well, saying &#8220;The product is awesome. It&#8217;s definitely more complex [and] business oriented, but that&#8217;s a good thing.&#8221;</p>\n<p>Carl also shared that Steve has a background that lends itself to thinking about complex problems to solve, working on, &#8220;more enterprise stuff pre-WordPress, on a wide variety of platforms and programming languages.&#8221;</p>\n<p>Steve did a great job with Gravity Flow, and I&#8217;m happy to see it out there.  On <a href="https://www.stevenhenty.com/gravity-flow/">his personal blog</a>, he highlights use cases for the product, which are real world examples based on how his first 100 beta testers are using it.</p>\n<h3>Gravity ecosystem</h3>\n<p>A few Rocketgenius employees have Gravity Forms focused side projects, which I think is really cool. Another favorite of mine is David Smith&#8217;s <a href="http://gravitywiz.com/">Gravity Wiz</a>, that adds functionality snippets, or &#8220;perks&#8221;, to Gravity Forms. The third-party ecosystem is doing well too; <a href="https://gravityplus.pro/">Gravity Plus</a> and <a href="https://gravityview.co/">Gravity View</a> are two healthy Gravity Forms focused businesses that come to mind, and I&#8217;m sure there are many more.</p>\n<p>The main plugin continues to dominate the WordPress forms space. Though it is commercial only, it powers hundreds of thousands of websites, and has dozens of official <a href="http://www.gravityforms.com/add-ons/">add-ons</a>. Carl has told me many times he doesn&#8217;t even view most other WordPress forms plugins as competition (though newer entrants like <a href="https://ninjaforms.com/">Ninja Forms</a> are doing quite well for themselves), as Gravity Forms aims to take marketshare away from complex hosted solutions like Wufoo, rather than gobble up the much larger but less demanding market that just wants simple contact forms.</p>\n<p>If you want to keep up with Gravity Flow, <a href="https://gravityflow.io/">check out the website</a>. And the project is <a href="https://github.com/stevehenty/gravityflow">on Github</a> as well, as Steve is billing for support and automatic upgrades, which starts at €87 (around $100) per year.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Sep 2015 13:55:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 16 Oct 2015 03:37:30 GMT";s:12:"content-type";s:8:"text/xml";s:14:"content-length";s:6:"183797";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Fri, 16 Oct 2015 03:30:16 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";s:13:"accept-ranges";s:5:"bytes";}s:5:"build";s:14:"20151013070559";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(6301, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1445009850', 'no'),
(6302, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1444966650', 'no'),
(6303, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1445009853', 'no'),
(6304, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Oct 2015 03:34:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 13 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"6743@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:28:"Your WordPress, Streamlined.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2646@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"31973@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Protect your WordPress site by hiding vital areas of your site, protecting access to important files, preventing brute-force login attempts, detecting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"47509@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical user experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 16 Oct 2015 03:37:35 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Mon, 23 Apr 2007 20:08:06 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20151013070559";}', 'no'),
(6305, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1445009854', 'no'),
(6306, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1444966654', 'no'),
(6307, '_transient_timeout_plugin_slugs', '1445053055', 'no'),
(6308, '_transient_plugin_slugs', 'a:12:{i:0;s:19:"akismet/akismet.php";i:1;s:29:"charity-apps/charity-apps.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:4;s:53:"easy-custom-auto-excerpt/easy-custom-auto-excerpt.php";i:5;s:19:"easypay/easypay.php";i:6;s:33:"events-manager/events-manager.php";i:7;s:9:"hello.php";i:8;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:9;s:23:"revslider/revslider.php";i:10;s:27:"woocommerce/woocommerce.php";i:11;s:27:"js_composer/js_composer.php";}', 'no'),
(6309, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1445009855', 'no'),
(6310, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/09/wordpress-4-3-1/''>WordPress 4.3.1 Security and Maintenance Release</a> <span class="rss-date">September 15, 2015</span><div class="rssSummary">WordPress 4.3.1 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. This release addresses three issues, including two cross-site scripting vulnerabilities and a potential privilege escalation. WordPress versions 4.3 and earlier are vulnerable to a cross-site scripting vulnerability when processing shortcode tags (CVE-2015-5714). Reported by [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wptavern.com/akismet-3-1-5-fixes-critical-xss-security-vulnerability''>WPTavern: Akismet 3.1.5 Fixes Critical XSS Security Vulnerability</a></li><li><a class=''rsswidget'' href=''http://ma.tt/2015/10/working-exercising/''>Matt: Working &amp; Exercising</a></li><li><a class=''rsswidget'' href=''http://blog.akismet.com/2015/10/13/akismet-3-1-5-wordpress/''>Akismet: Akismet 3.1.5: Security Release</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''https://wordpress.org/plugins/siteorigin-panels/'' class=''dashboard-news-plugin-link''>Page Builder by SiteOrigin</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=2acf0d25d8&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Page Builder by SiteOrigin''>Install</a>)</span></li></ul></div>', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(6312, 'rewrite_rules', 'a:440:{s:29:"kegiatan/(\\d{4}-\\d{2}-\\d{2})$";s:53:"index.php?pagename=kegiatan/&calendar_day=$matches[1]";s:15:"kegiatan/rss/?$";s:35:"index.php?post_type=event&feed=feed";s:16:"kegiatan/feed/?$";s:35:"index.php?post_type=event&feed=feed";s:20:"kegiatan/event/(.+)$";s:65:"index.php?pagename=kegiatan/&em_redirect=1&event_slug=$matches[1]";s:23:"kegiatan/location/(.+)$";s:68:"index.php?pagename=kegiatan/&em_redirect=1&location_slug=$matches[1]";s:23:"kegiatan/category/(.+)$";s:68:"index.php?pagename=kegiatan/&em_redirect=1&category_slug=$matches[1]";s:11:"kegiatan/?$";s:27:"index.php?pagename=kegiatan";s:22:"events/([^/]+)/ical/?$";s:34:"index.php?event=$matches[1]&ical=1";s:25:"locations/([^/]+)/ical/?$";s:37:"index.php?location=$matches[1]&ical=1";s:33:"events/categories/([^/]+)/ical/?$";s:45:"index.php?event-categories=$matches[1]&ical=1";s:27:"events/tags/([^/]+)/ical/?$";s:39:"index.php?event-tags=$matches[1]&ical=1";s:24:"locations/([^/]+)/rss/?$";s:36:"index.php?location=$matches[1]&rss=1";s:9:"causes/?$";s:34:"index.php?post_type=charity-causes";s:39:"causes/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=charity-causes&feed=$matches[1]";s:34:"causes/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=charity-causes&feed=$matches[1]";s:26:"causes/page/([0-9]{1,})/?$";s:52:"index.php?post_type=charity-causes&paged=$matches[1]";s:18:"charity-gallery/?$";s:35:"index.php?post_type=charity-gallery";s:48:"charity-gallery/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=charity-gallery&feed=$matches[1]";s:43:"charity-gallery/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=charity-gallery&feed=$matches[1]";s:35:"charity-gallery/page/([0-9]{1,})/?$";s:53:"index.php?post_type=charity-gallery&paged=$matches[1]";s:20:"charity-portfolio/?$";s:37:"index.php?post_type=charity-portfolio";s:50:"charity-portfolio/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=charity-portfolio&feed=$matches[1]";s:45:"charity-portfolio/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=charity-portfolio&feed=$matches[1]";s:37:"charity-portfolio/page/([0-9]{1,})/?$";s:55:"index.php?post_type=charity-portfolio&paged=$matches[1]";s:20:"charity-our-works/?$";s:37:"index.php?post_type=charity-our-works";s:50:"charity-our-works/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=charity-our-works&feed=$matches[1]";s:45:"charity-our-works/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=charity-our-works&feed=$matches[1]";s:37:"charity-our-works/page/([0-9]{1,})/?$";s:55:"index.php?post_type=charity-our-works&paged=$matches[1]";s:22:"charity_our_mission/?$";s:39:"index.php?post_type=charity_our_mission";s:52:"charity_our_mission/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=charity_our_mission&feed=$matches[1]";s:47:"charity_our_mission/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=charity_our_mission&feed=$matches[1]";s:39:"charity_our_mission/page/([0-9]{1,})/?$";s:57:"index.php?post_type=charity_our_mission&paged=$matches[1]";s:15:"charity_help/?$";s:32:"index.php?post_type=charity_help";s:45:"charity_help/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=charity_help&feed=$matches[1]";s:40:"charity_help/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=charity_help&feed=$matches[1]";s:32:"charity_help/page/([0-9]{1,})/?$";s:50:"index.php?post_type=charity_help&paged=$matches[1]";s:14:"charity_faq/?$";s:31:"index.php?post_type=charity_faq";s:44:"charity_faq/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=charity_faq&feed=$matches[1]";s:39:"charity_faq/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=charity_faq&feed=$matches[1]";s:31:"charity_faq/page/([0-9]{1,})/?$";s:49:"index.php?post_type=charity_faq&paged=$matches[1]";s:14:"testimonial/?$";s:31:"index.php?post_type=testimonial";s:44:"testimonial/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:39:"testimonial/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:31:"testimonial/page/([0-9]{1,})/?$";s:49:"index.php?post_type=testimonial&paged=$matches[1]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:12:"locations/?$";s:28:"index.php?post_type=location";s:42:"locations/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=location&feed=$matches[1]";s:37:"locations/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=location&feed=$matches[1]";s:29:"locations/page/([0-9]{1,})/?$";s:46:"index.php?post_type=location&paged=$matches[1]";s:9:"events/?$";s:25:"index.php?post_type=event";s:39:"events/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:34:"events/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:26:"events/page/([0-9]{1,})/?$";s:43:"index.php?post_type=event&paged=$matches[1]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"causes/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"causes/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"causes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"causes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"causes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"causes/([^/]+)/trackback/?$";s:41:"index.php?charity-causes=$matches[1]&tb=1";s:47:"causes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?charity-causes=$matches[1]&feed=$matches[2]";s:42:"causes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?charity-causes=$matches[1]&feed=$matches[2]";s:35:"causes/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?charity-causes=$matches[1]&paged=$matches[2]";s:42:"causes/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?charity-causes=$matches[1]&cpage=$matches[2]";s:32:"causes/([^/]+)/wc-api(/(.*))?/?$";s:55:"index.php?charity-causes=$matches[1]&wc-api=$matches[3]";s:38:"causes/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"causes/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:27:"causes/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?charity-causes=$matches[1]&page=$matches[2]";s:23:"causes/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"causes/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"causes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"causes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"causes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"causes-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?causes-category=$matches[1]&feed=$matches[2]";s:47:"causes-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?causes-category=$matches[1]&feed=$matches[2]";s:40:"causes-type/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?causes-category=$matches[1]&paged=$matches[2]";s:22:"causes-type/([^/]+)/?$";s:37:"index.php?causes-category=$matches[1]";s:56:"causes-location/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?causes-location=$matches[1]&feed=$matches[2]";s:51:"causes-location/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?causes-location=$matches[1]&feed=$matches[2]";s:44:"causes-location/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?causes-location=$matches[1]&paged=$matches[2]";s:26:"causes-location/([^/]+)/?$";s:37:"index.php?causes-location=$matches[1]";s:43:"charity-gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"charity-gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"charity-gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"charity-gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"charity-gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"charity-gallery/([^/]+)/trackback/?$";s:42:"index.php?charity-gallery=$matches[1]&tb=1";s:56:"charity-gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?charity-gallery=$matches[1]&feed=$matches[2]";s:51:"charity-gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?charity-gallery=$matches[1]&feed=$matches[2]";s:44:"charity-gallery/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?charity-gallery=$matches[1]&paged=$matches[2]";s:51:"charity-gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?charity-gallery=$matches[1]&cpage=$matches[2]";s:41:"charity-gallery/([^/]+)/wc-api(/(.*))?/?$";s:56:"index.php?charity-gallery=$matches[1]&wc-api=$matches[3]";s:47:"charity-gallery/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:58:"charity-gallery/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"charity-gallery/([^/]+)(/[0-9]+)?/?$";s:54:"index.php?charity-gallery=$matches[1]&page=$matches[2]";s:32:"charity-gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"charity-gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"charity-gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"charity-gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"charity-gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"gallery-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?gallery-type=$matches[1]&feed=$matches[2]";s:48:"gallery-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?gallery-type=$matches[1]&feed=$matches[2]";s:41:"gallery-type/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?gallery-type=$matches[1]&paged=$matches[2]";s:23:"gallery-type/([^/]+)/?$";s:34:"index.php?gallery-type=$matches[1]";s:45:"charity-portfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"charity-portfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"charity-portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"charity-portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"charity-portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"charity-portfolio/([^/]+)/trackback/?$";s:44:"index.php?charity-portfolio=$matches[1]&tb=1";s:58:"charity-portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?charity-portfolio=$matches[1]&feed=$matches[2]";s:53:"charity-portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?charity-portfolio=$matches[1]&feed=$matches[2]";s:46:"charity-portfolio/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?charity-portfolio=$matches[1]&paged=$matches[2]";s:53:"charity-portfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?charity-portfolio=$matches[1]&cpage=$matches[2]";s:43:"charity-portfolio/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?charity-portfolio=$matches[1]&wc-api=$matches[3]";s:49:"charity-portfolio/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"charity-portfolio/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"charity-portfolio/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?charity-portfolio=$matches[1]&page=$matches[2]";s:34:"charity-portfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"charity-portfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"charity-portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"charity-portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"charity-portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"portfolio-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?portfolio-type=$matches[1]&feed=$matches[2]";s:50:"portfolio-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?portfolio-type=$matches[1]&feed=$matches[2]";s:43:"portfolio-type/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?portfolio-type=$matches[1]&paged=$matches[2]";s:25:"portfolio-type/([^/]+)/?$";s:36:"index.php?portfolio-type=$matches[1]";s:43:"charity-our-works/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"charity-our-works/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"charity-our-works/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"charity-our-works/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"charity-our-works/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"charity-our-works/(.+?)/trackback/?$";s:44:"index.php?charity-our-works=$matches[1]&tb=1";s:56:"charity-our-works/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?charity-our-works=$matches[1]&feed=$matches[2]";s:51:"charity-our-works/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?charity-our-works=$matches[1]&feed=$matches[2]";s:44:"charity-our-works/(.+?)/page/?([0-9]{1,})/?$";s:57:"index.php?charity-our-works=$matches[1]&paged=$matches[2]";s:51:"charity-our-works/(.+?)/comment-page-([0-9]{1,})/?$";s:57:"index.php?charity-our-works=$matches[1]&cpage=$matches[2]";s:41:"charity-our-works/(.+?)/wc-api(/(.*))?/?$";s:58:"index.php?charity-our-works=$matches[1]&wc-api=$matches[3]";s:47:"charity-our-works/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:58:"charity-our-works/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"charity-our-works/(.+?)(/[0-9]+)?/?$";s:56:"index.php?charity-our-works=$matches[1]&page=$matches[2]";s:47:"charity_our_mission/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"charity_our_mission/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"charity_our_mission/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"charity_our_mission/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"charity_our_mission/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"charity_our_mission/([^/]+)/trackback/?$";s:46:"index.php?charity_our_mission=$matches[1]&tb=1";s:60:"charity_our_mission/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?charity_our_mission=$matches[1]&feed=$matches[2]";s:55:"charity_our_mission/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?charity_our_mission=$matches[1]&feed=$matches[2]";s:48:"charity_our_mission/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?charity_our_mission=$matches[1]&paged=$matches[2]";s:55:"charity_our_mission/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?charity_our_mission=$matches[1]&cpage=$matches[2]";s:45:"charity_our_mission/([^/]+)/wc-api(/(.*))?/?$";s:60:"index.php?charity_our_mission=$matches[1]&wc-api=$matches[3]";s:51:"charity_our_mission/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:62:"charity_our_mission/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:40:"charity_our_mission/([^/]+)(/[0-9]+)?/?$";s:58:"index.php?charity_our_mission=$matches[1]&page=$matches[2]";s:36:"charity_our_mission/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"charity_our_mission/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"charity_our_mission/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"charity_our_mission/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"charity_our_mission/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"charity_help/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"charity_help/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"charity_help/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"charity_help/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"charity_help/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"charity_help/(.+?)/trackback/?$";s:39:"index.php?charity_help=$matches[1]&tb=1";s:51:"charity_help/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?charity_help=$matches[1]&feed=$matches[2]";s:46:"charity_help/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?charity_help=$matches[1]&feed=$matches[2]";s:39:"charity_help/(.+?)/page/?([0-9]{1,})/?$";s:52:"index.php?charity_help=$matches[1]&paged=$matches[2]";s:46:"charity_help/(.+?)/comment-page-([0-9]{1,})/?$";s:52:"index.php?charity_help=$matches[1]&cpage=$matches[2]";s:36:"charity_help/(.+?)/wc-api(/(.*))?/?$";s:53:"index.php?charity_help=$matches[1]&wc-api=$matches[3]";s:42:"charity_help/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:53:"charity_help/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:31:"charity_help/(.+?)(/[0-9]+)?/?$";s:51:"index.php?charity_help=$matches[1]&page=$matches[2]";s:39:"charity_faq/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"charity_faq/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"charity_faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"charity_faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"charity_faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"charity_faq/([^/]+)/trackback/?$";s:38:"index.php?charity_faq=$matches[1]&tb=1";s:52:"charity_faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?charity_faq=$matches[1]&feed=$matches[2]";s:47:"charity_faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?charity_faq=$matches[1]&feed=$matches[2]";s:40:"charity_faq/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?charity_faq=$matches[1]&paged=$matches[2]";s:47:"charity_faq/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?charity_faq=$matches[1]&cpage=$matches[2]";s:37:"charity_faq/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?charity_faq=$matches[1]&wc-api=$matches[3]";s:43:"charity_faq/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"charity_faq/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"charity_faq/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?charity_faq=$matches[1]&page=$matches[2]";s:28:"charity_faq/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"charity_faq/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"charity_faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"charity_faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"charity_faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"testimonial/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"testimonial/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"testimonial/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:52:"testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:47:"testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:40:"testimonial/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:47:"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:37:"testimonial/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?testimonial=$matches[1]&wc-api=$matches[3]";s:43:"testimonial/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"testimonial/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"testimonial/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:28:"testimonial/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"testimonial/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"events/tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?event-tags=$matches[1]&feed=$matches[2]";s:47:"events/tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?event-tags=$matches[1]&feed=$matches[2]";s:40:"events/tags/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?event-tags=$matches[1]&paged=$matches[2]";s:22:"events/tags/([^/]+)/?$";s:32:"index.php?event-tags=$matches[1]";s:56:"events/categories/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?event-categories=$matches[1]&feed=$matches[2]";s:51:"events/categories/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?event-categories=$matches[1]&feed=$matches[2]";s:44:"events/categories/(.+?)/page/?([0-9]{1,})/?$";s:56:"index.php?event-categories=$matches[1]&paged=$matches[2]";s:26:"events/categories/(.+?)/?$";s:38:"index.php?event-categories=$matches[1]";s:37:"locations/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"locations/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"locations/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"locations/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"locations/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"locations/([^/]+)/trackback/?$";s:35:"index.php?location=$matches[1]&tb=1";s:50:"locations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?location=$matches[1]&feed=$matches[2]";s:45:"locations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?location=$matches[1]&feed=$matches[2]";s:38:"locations/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?location=$matches[1]&paged=$matches[2]";s:45:"locations/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?location=$matches[1]&cpage=$matches[2]";s:35:"locations/([^/]+)/wc-api(/(.*))?/?$";s:49:"index.php?location=$matches[1]&wc-api=$matches[3]";s:41:"locations/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"locations/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"locations/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?location=$matches[1]&page=$matches[2]";s:26:"locations/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"locations/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"locations/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"locations/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"locations/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"events/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:47:"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:42:"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:35:"events/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:42:"events/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:32:"events/([^/]+)/wc-api(/(.*))?/?$";s:46:"index.php?event=$matches[1]&wc-api=$matches[3]";s:38:"events/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"events/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:27:"events/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:23:"events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:28:"product/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"product_variation/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"shop_order_refund/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"vc_grid_item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"vc_grid_item/([^/]+)/trackback/?$";s:39:"index.php?vc_grid_item=$matches[1]&tb=1";s:41:"vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&paged=$matches[2]";s:48:"vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]";s:38:"vc_grid_item/([^/]+)/wc-api(/(.*))?/?$";s:53:"index.php?vc_grid_item=$matches[1]&wc-api=$matches[3]";s:44:"vc_grid_item/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:55:"vc_grid_item/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"vc_grid_item/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?vc_grid_item=$matches[1]&page=$matches[2]";s:29:"vc_grid_item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"vc_grid_item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=11&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=888 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(12, 11, '_wp_page_template', 'charity-blog.php'),
(13, 11, '_wpb_vc_js_status', 'false'),
(14, 11, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(15, 11, 'slide_template', 'default'),
(16, 11, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(17, 11, 'our_story', 'a:1:{s:15:"our_story_group";a:1:{i:0;a:1:{s:15:"our_story_image";s:0:"";}}}'),
(18, 11, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:0:"";s:14:"our_story_text";s:0:"";}'),
(19, 11, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(20, 11, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(21, 11, 'helpicon', 'a:4:{s:14:"helpicon_group";a:2:{i:0;a:3:{s:8:"helpicon";s:71:"http://localhost/drpp4/wp-content/uploads/2015/08/Icon-Consultation.png";s:9:"helptitle";s:16:"E - Consultation";s:11:"helpcontent";s:404:"E-consultation menyediakan fitur konsultasi kapanpun di manapun tentang permasalahan perkembangan anak. Ditangani oleh ahli neurodevelopmental disorders, termasuk konsultan neuropediatric, dokter anak, dan psikolog, E-consultation memberikan fasilitas konsultasi terbaik untuk menyelesaikan permasalahan pada anak. Ahli kami menjamin akan merespon konsultasi anda dengan cepat, tidak lebih dari 2x24 jam.";}i:1;a:3:{s:8:"helpicon";s:75:"http://localhost/drpp4/wp-content/uploads/2015/08/Icon-Online-Symposium.png";s:9:"helptitle";s:9:"Symposium";s:11:"helpcontent";s:358:"Online Symposium menyediakan tempat untuk belajar tentang neurodevelopmental disorders dengan ahli terbaik pada bidangnya. Anda dapat mengunduh materi pembelajaran dan melakukan diskusi dengan ahli dalam bidang tertentu. Selanjutnya, anda pun dapat mengikuti offline hands-on untuk meningkatkan dan memperluas pengetahuan anda tentang materi yang dipelajari.";}}s:16:"help-video-image";s:61:"http://localhost/drpp4/wp-content/uploads/2015/08/Capture.png";s:10:"help-video";s:122:"<iframe width="560" height="315" src="https://www.youtube.com/embed/kJW4A3TyKMA" frameborder="0" allowfullscreen></iframe>";s:16:"shortdescription";s:0:"";}'),
(22, 11, 'homeslider', 'a:1:{s:15:"slidershortcode";s:17:"[rev_slider home]";}'),
(23, 11, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(24, 11, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(25, 11, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(26, 11, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(27, 11, '_edit_lock', '1444830396:1'),
(28, 13, '_edit_last', '1'),
(29, 13, '_wp_page_template', 'charity-our-story.php'),
(30, 13, '_wpb_vc_js_status', 'false'),
(31, 13, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(32, 13, 'slide_template', 'default'),
(33, 13, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(34, 13, 'our_story', 'a:1:{s:15:"our_story_group";a:2:{i:0;a:1:{s:15:"our_story_image";s:65:"http://localhost/drpp4/wp-content/uploads/2015/08/quote-1-fix.jpg";}i:1;a:1:{s:15:"our_story_image";s:60:"http://localhost/drpp4/wp-content/uploads/2015/08/quote-.jpg";}}}'),
(35, 13, 'our_story_text', 'a:2:{s:22:"our_story_text_sammury";s:19:"The Learning Center";s:14:"our_story_text";s:2379:"The Learning Center adalah platform untuk belajar mengenai perkembangan anak dan masalah-masalahnya. The Learning Center menyediakan konsultasi online dengan dokter dan psikolog sehingga pasien dapat konsultasi di mana pun dan kapan pun. Selain itu, The Learning Center juga menyediakan fitur online\r\nsymposium sehingga siapapun yang tertarik untuk belajar lebih dalam mengenai perkembangan anak, permasalahannya, dan solusinya, dapat belajar secara mandiri dipandu dengan tim ahli kami.\r\n\r\nBerlatar belakang keinginan untuk berbagi pengalaman dari apa yang kami ketahui dan dapatkan selama ini dalam bidang kelaianan perkembangan dan saraf anak, behavioral (perilaku) anak, pendidikan anak dan juga masalah masalah yang berhubungan dengan minat, bakat dan kreatifitas anak, kami yang tergabung dalam satu tim yang terdiri dari: dokter spesialis saraf anak (pediatic neirologist), dokter spesialis anak, dokter spesialis rehabilitasi medik, dokter spesialis bedah ortopedi anak, dokter spesialis gizi anak, psikolog perkembangan anak membuka portal sebagai media konsultasi online tentang kelainan perkembangan dan saraf anak. Kami yang tergabung dalam satu kesempatan, juga ingin berbagi pengetahuan dari apa yang kami dapatkan selama ini buat para orang tua, guru, profesional lain yang berkecimpung dalam masalah perkembangan anak, kelaianan perkembangan dan saraf anak dan juga masalah masalah yang berhubungan dengan pendidikan anak.\r\n\r\n\r\nTim kami mengelola 3 tempat terapi: (Child Development Center) Rumah Sakit Santosa Bandung International Hospital, Indigrow Child Development Center, Kidz Potentia-Child development and dyslexia Center. Selain itu, kami bekerja sama erat dengan beberapa Center kelainan perkembangan anak di luar negeri (Persatuan dyslexia Malaysia, Segawa Neurological Cilinic Tokyo, Dyslexia Association of Singapore) dan melaksanakan berbagai simposium, seminar serta work shop di bidang kelainan Perkembangan dan Saraf anak.\r\n\r\n\r\nKonsultasi online yang kami lakukan, terbuka bagi siapa saja yang ingin melakukan komunikasi dengan kami untuk semua hal yang berhubungan dengan perkembangan anak, kelainan perkembangan dan saraf anak. Kami sangat berharap dapat terjalinnya hubungan yang erat antara kami dan semua individu yang mempunyai keseminatan yang sama dibidang perkembangan dan kelaian perkembangan dan saraf anak. Salam perkenalan dari kami.";}'),
(36, 13, 'charity-sub-page', 'a:1:{s:14:"charity_ask_us";s:0:"";}'),
(37, 13, 'contact_page', 'a:2:{s:23:"contact_page_form_title";s:0:"";s:17:"contact-page-form";s:0:"";}'),
(38, 13, 'helpicon', 'a:4:{s:14:"helpicon_group";a:1:{i:0;a:3:{s:8:"helpicon";s:0:"";s:9:"helptitle";s:0:"";s:11:"helpcontent";s:0:"";}}s:16:"help-video-image";s:0:"";s:10:"help-video";s:0:"";s:16:"shortdescription";s:0:"";}'),
(39, 13, 'homeslider', 'a:1:{s:15:"slidershortcode";s:0:"";}'),
(40, 13, 'volunteer', 'a:3:{s:15:"volunteer-title";s:0:"";s:15:"volunteer-image";s:0:"";s:17:"volunteer-content";s:0:"";}'),
(41, 13, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}'),
(42, 13, 'shoplanding', 'a:10:{s:15:"slidershortcode";s:0:"";s:6:"imgOne";s:0:"";s:10:"imgOneText";s:0:"";s:16:"imgOneTextsecond";s:0:"";s:6:"imgtwo";s:0:"";s:10:"imgtwoText";s:0:"";s:7:"imgtwo2";s:0:"";s:12:"productTitle";s:0:"";s:13:"product-image";s:0:"";s:15:"product-content";s:0:"";}'),
(43, 13, 'charity_testimonial_one', 'a:1:{s:14:"testimonial_bg";s:0:"";}'),
(44, 13, '_edit_lock', '1444889380:1'),
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
(66, 17, 'slide_template', ''),
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
(78, 17, '_edit_lock', '1444116718:1'),
(79, 19, '_edit_last', '1'),
(80, 19, '_wp_page_template', 'charity-gallery.php'),
(81, 19, '_wpb_vc_js_status', 'false'),
(82, 19, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(83, 19, 'slide_template', 'default'),
(84, 19, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
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
(95, 19, '_edit_lock', '1444889621:1'),
(96, 22, '_edit_last', '1'),
(97, 22, '_wp_page_template', 'default'),
(98, 22, '_wpb_vc_js_status', 'false'),
(99, 22, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(100, 22, 'slide_template', ''),
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
(112, 22, '_edit_lock', '1444115721:1'),
(113, 24, '_edit_last', '1'),
(114, 24, '_wp_page_template', 'charity-portfolio.php'),
(115, 24, '_wpb_vc_js_status', 'false'),
(116, 24, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(117, 24, 'slide_template', 'default'),
(118, 24, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
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
(129, 24, '_edit_lock', '1444889568:1'),
(130, 28, '_edit_last', '1'),
(131, 28, '_wp_page_template', 'default'),
(132, 28, '_wpb_vc_js_status', 'false'),
(133, 28, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(134, 28, 'slide_template', 'default'),
(135, 28, 'breadcrumb', 'a:1:{s:5:"image";s:74:"http://localhost/drpp4/wp-content/uploads/2015/08/Center-Laboratorium1.jpg";}'),
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
(146, 28, '_edit_lock', '1444377330:1'),
(147, 30, '_edit_last', '1'),
(148, 30, '_wp_page_template', 'charity-contact-us.php'),
(149, 30, '_wpb_vc_js_status', 'false'),
(150, 30, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(151, 30, 'slide_template', 'default'),
(152, 30, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
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
(163, 30, '_edit_lock', '1444889573:1'),
(173, 33, '_menu_item_type', 'post_type'),
(174, 33, '_menu_item_menu_item_parent', '179'),
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
(192, 35, '_menu_item_menu_item_parent', '41'),
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
(210, 37, '_menu_item_menu_item_parent', '0'),
(211, 37, '_menu_item_object_id', '24'),
(212, 37, '_menu_item_object', 'page'),
(213, 37, '_menu_item_target', ''),
(214, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 37, '_menu_item_xfn', ''),
(216, 37, '_menu_item_url', ''),
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
(272, 44, '_menu_item_type', 'post_type'),
(273, 44, '_menu_item_menu_item_parent', '0'),
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
(286, 45, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
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
(297, 45, '_edit_lock', '1444889499:1'),
(298, 36, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(299, 41, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(300, 40, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(304, 35, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(305, 44, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
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
(331, 54, '_edit_lock', '1443518257:1'),
(332, 55, '_wp_attached_file', '2015/08/Flyer-depan.png'),
(333, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:874;s:6:"height";i:1240;s:4:"file";s:23:"2015/08/Flyer-depan.png";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Flyer-depan-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"Flyer-depan-211x300.png";s:5:"width";i:211;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:24:"Flyer-depan-722x1024.png";s:5:"width";i:722;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Flyer-depan-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"Flyer-depan-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:23:"Flyer-depan-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:15:"charity_mission";a:4:{s:4:"file";s:21:"Flyer-depan-64x65.png";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:9:"chy_index";a:4:{s:4:"file";s:23:"Flyer-depan-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:8:"chy_thmb";a:4:{s:4:"file";s:23:"Flyer-depan-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:11:"chy_details";a:4:{s:4:"file";s:23:"Flyer-depan-850x626.png";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:9:"image/png";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:23:"Flyer-depan-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:23:"Flyer-depan-849x421.png";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:9:"image/png";}s:19:"charity_causes_full";a:4:{s:4:"file";s:23:"Flyer-depan-874x421.png";s:5:"width";i:874;s:6:"height";i:421;s:9:"mime-type";s:9:"image/png";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:21:"Flyer-depan-98x98.png";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:23:"Flyer-depan-553x188.png";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:16:"charity_our_work";a:4:{s:4:"file";s:23:"Flyer-depan-263x175.png";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(334, 56, '_wp_attached_file', '2015/08/quote-.jpg'),
(335, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1000;s:4:"file";s:18:"2015/08/quote-.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"quote--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"quote--300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"quote--1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"quote--180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"quote--300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"quote--600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:16:"quote--64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:18:"quote--360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:18:"quote--360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:18:"quote--850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:18:"quote--600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:18:"quote--849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:19:"quote--1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:16:"quote--98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:18:"quote--553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:18:"quote--263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(336, 57, '_wp_attached_file', '2015/08/quote-1-fix.jpg'),
(337, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:23:"2015/08/quote-1-fix.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"quote-1-fix-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"quote-1-fix-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"quote-1-fix-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"quote-1-fix-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"quote-1-fix-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"quote-1-fix-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:21:"quote-1-fix-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:23:"quote-1-fix-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:23:"quote-1-fix-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:23:"quote-1-fix-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:23:"quote-1-fix-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:23:"quote-1-fix-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:24:"quote-1-fix-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:21:"quote-1-fix-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:23:"quote-1-fix-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:23:"quote-1-fix-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(338, 54, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(339, 54, 'slide_template', 'default'),
(340, 54, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"image";s:19:"charity-meta-images";a:1:{i:0;a:1:{s:23:"upload-gallery-or-image";s:62:"http://localhost/drpp4/wp-content/uploads/2015/09/main.pdf.png";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:0:"";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
(341, 58, '_edit_last', '1'),
(342, 58, '_edit_lock', '1443508097:1'),
(343, 58, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(344, 58, 'slide_template', 'default'),
(345, 58, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"image";s:19:"charity-meta-images";a:1:{i:0;a:1:{s:23:"upload-gallery-or-image";s:82:"http://localhost/drpp4/wp-content/uploads/2015/09/1-s2.0-S0010945215003020-gr1.jpg";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:0:"";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
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
(363, 61, 'usericon', 'a:1:{s:8:"usericon";s:0:"";}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(409, 67, '_edit_lock', '1443430124:1'),
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
(442, 74, '_edit_last', '1'),
(443, 74, '_edit_lock', '1439948153:1'),
(444, 74, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(445, 74, 'slide_template', 'default'),
(456, 77, '_edit_last', '1'),
(457, 77, '_edit_lock', '1444375845:1'),
(458, 77, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(459, 77, 'slide_template', 'default'),
(460, 78, '_edit_last', '1'),
(461, 78, '_edit_lock', '1444375863:1'),
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
(511, 3, '_edit_lock', '1444889539:1'),
(512, 3, '_edit_last', '1'),
(513, 3, '_wp_page_template', 'charity-events.php'),
(514, 3, '_wpb_vc_js_status', 'false'),
(515, 3, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(516, 3, 'slide_template', 'default'),
(517, 3, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
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
(532, 85, '_edit_lock', '1444374988:1'),
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
(570, 91, '_edit_lock', '1443420596:1'),
(572, 91, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(573, 91, 'slide_template', 'default'),
(574, 91, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(575, 91, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(576, 91, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(578, 84, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:1664;s:6:"height";i:2496;s:4:"file";s:33:"2-Foto-M.-Risqi-Utama-Saputra.jpg";}}'),
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
(599, 94, '_edit_lock', '1443427166:1'),
(601, 94, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(602, 94, 'slide_template', 'default'),
(603, 94, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(604, 94, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(605, 94, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(606, 95, '_edit_last', '1'),
(607, 95, '_edit_lock', '1443427933:1'),
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
(636, 108, '_wp_attached_file', '2015/08/Center-Dokter-dokteran2.jpg'),
(637, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:35:"2015/08/Center-Dokter-dokteran2.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"Center-Dokter-dokteran2-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:33:"Center-Dokter-dokteran2-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:36:"Center-Dokter-dokteran2-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:33:"Center-Dokter-dokteran2-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:35:"Center-Dokter-dokteran2-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(638, 109, '_wp_attached_file', '2015/08/Center-Laboratorium1.jpg'),
(639, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:32:"2015/08/Center-Laboratorium1.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Center-Laboratorium1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"Center-Laboratorium1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"Center-Laboratorium1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"Center-Laboratorium1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"Center-Laboratorium1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:32:"Center-Laboratorium1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:30:"Center-Laboratorium1-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:32:"Center-Laboratorium1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:32:"Center-Laboratorium1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:32:"Center-Laboratorium1-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:32:"Center-Laboratorium1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:32:"Center-Laboratorium1-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:33:"Center-Laboratorium1-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:30:"Center-Laboratorium1-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:32:"Center-Laboratorium1-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:32:"Center-Laboratorium1-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(640, 110, '_wp_attached_file', '2015/08/Center-Orang-Depan-Komputer1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(641, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:899;s:4:"file";s:40:"2015/08/Center-Orang-Depan-Komputer1.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"Center-Orang-Depan-Komputer1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:38:"Center-Orang-Depan-Komputer1-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:41:"Center-Orang-Depan-Komputer1-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:38:"Center-Orang-Depan-Komputer1-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:40:"Center-Orang-Depan-Komputer1-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(642, 10, '_edit_lock', '1440644325:1'),
(643, 112, '_wp_attached_file', '2015/08/Foto-Ibuk-dan-dua-anaknya.jpg'),
(644, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:886;s:4:"file";s:37:"2015/08/Foto-Ibuk-dan-dua-anaknya.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-300x222.jpg";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"Foto-Ibuk-dan-dua-anaknya-1024x756.jpg";s:5:"width";i:1024;s:6:"height";i:756;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:35:"Foto-Ibuk-dan-dua-anaknya-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:38:"Foto-Ibuk-dan-dua-anaknya-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:35:"Foto-Ibuk-dan-dua-anaknya-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:37:"Foto-Ibuk-dan-dua-anaknya-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1300027912;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"100";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(660, 123, '_wp_attached_file', '2015/08/12046904_10206674968904359_4913403300117884939_n-Copy1.jpg'),
(661, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:240;s:4:"file";s:66:"2015/08/12046904_10206674968904359_4913403300117884939_n-Copy1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:66:"12046904_10206674968904359_4913403300117884939_n-Copy1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:66:"12046904_10206674968904359_4913403300117884939_n-Copy1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:66:"12046904_10206674968904359_4913403300117884939_n-Copy1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:66:"12046904_10206674968904359_4913403300117884939_n-Copy1-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:64:"12046904_10206674968904359_4913403300117884939_n-Copy1-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:64:"12046904_10206674968904359_4913403300117884939_n-Copy1-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:66:"12046904_10206674968904359_4913403300117884939_n-Copy1-360x188.jpg";s:5:"width";i:360;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:66:"12046904_10206674968904359_4913403300117884939_n-Copy1-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1443444516;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(662, 124, '_wp_attached_file', '2015/08/12046904_10206674968904359_4913403300117884939_n-11.jpg'),
(663, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:240;s:4:"file";s:63:"2015/08/12046904_10206674968904359_4913403300117884939_n-11.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:63:"12046904_10206674968904359_4913403300117884939_n-11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:63:"12046904_10206674968904359_4913403300117884939_n-11-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:63:"12046904_10206674968904359_4913403300117884939_n-11-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:63:"12046904_10206674968904359_4913403300117884939_n-11-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:61:"12046904_10206674968904359_4913403300117884939_n-11-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:61:"12046904_10206674968904359_4913403300117884939_n-11-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:63:"12046904_10206674968904359_4913403300117884939_n-11-360x188.jpg";s:5:"width";i:360;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:63:"12046904_10206674968904359_4913403300117884939_n-11-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1443446686;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(664, 94, '_thumbnail_id', '124'),
(665, 95, '_thumbnail_id', '123'),
(666, 95, '_wp_trash_meta_status', 'publish'),
(667, 95, '_wp_trash_meta_time', '1443427775'),
(668, 94, '_wp_trash_meta_status', 'publish'),
(669, 94, '_wp_trash_meta_time', '1443427775'),
(670, 93, '_wp_trash_meta_status', 'publish'),
(671, 93, '_wp_trash_meta_time', '1443427775'),
(672, 92, '_wp_trash_meta_status', 'publish'),
(673, 92, '_wp_trash_meta_time', '1443427775'),
(674, 91, '_wp_trash_meta_status', 'publish'),
(675, 91, '_wp_trash_meta_time', '1443427776'),
(676, 125, '_edit_lock', '1443429383:1'),
(677, 125, '_edit_last', '1'),
(678, 125, '_thumbnail_id', '124'),
(679, 125, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(680, 125, 'slide_template', 'default'),
(681, 125, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(682, 125, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(683, 125, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(684, 126, '_edit_lock', '1444375027:1'),
(685, 126, '_edit_last', '1'),
(686, 126, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(687, 126, 'slide_template', 'default'),
(688, 126, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(689, 126, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(690, 126, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(692, 127, '_edit_lock', '1443429007:1'),
(693, 127, '_edit_last', '1'),
(694, 127, '_thumbnail_id', '123'),
(695, 127, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(696, 127, 'slide_template', 'default'),
(697, 127, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(698, 127, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(699, 127, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(700, 128, '_edit_lock', '1444374551:1'),
(701, 128, '_edit_last', '1'),
(703, 128, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(704, 128, 'slide_template', 'default'),
(705, 128, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(706, 128, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(707, 128, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(708, 129, '_edit_lock', '1443429571:1'),
(709, 129, '_edit_last', '1'),
(710, 129, '_thumbnail_id', '124'),
(711, 129, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(712, 129, 'slide_template', 'default'),
(713, 129, 'doantion-settings', 'a:3:{s:15:"donation-target";s:1:"0";s:19:"donation-achivement";s:1:"0";s:15:"doantion-status";s:1:"0";}'),
(714, 129, 'breadcrumb', 'a:1:{s:5:"image";s:0:"";}'),
(715, 129, 'causes-short-code', 'a:1:{s:15:"causesshortcode";s:0:"";}'),
(716, 132, '_wp_attached_file', '2015/09/1-s2.0-S0010945215003020-gr1.jpg'),
(717, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:758;s:6:"height";i:358;s:4:"file";s:40:"2015/09/1-s2.0-S0010945215003020-gr1.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-300x142.jpg";s:5:"width";i:300;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-600x358.jpg";s:5:"width";i:600;s:6:"height";i:358;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:38:"1-s2.0-S0010945215003020-gr1-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-600x358.jpg";s:5:"width";i:600;s:6:"height";i:358;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:38:"1-s2.0-S0010945215003020-gr1-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:40:"1-s2.0-S0010945215003020-gr1-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:4:"6655";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:64:"Microsoft PowerPoint - cortex_1570_GabayHolt - CORTEX - Figures_";s:11:"orientation";i:1;}}'),
(718, 58, '_wp_old_slug', 'lorem-ipsum-2'),
(719, 133, '_wp_attached_file', '2015/09/1-s2.0-S0010945215003020-main.pdf'),
(720, 135, '_wp_attached_file', '2015/09/Shaywitz-Shaywitz-2003-The-science-of-reading-and-dyslexia.pdf'),
(721, 136, '_wp_attached_file', '2015/09/main.pdf.png'),
(722, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:798;s:4:"file";s:20:"2015/09/main.pdf.png";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"main.pdf-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"main.pdf-207x300.png";s:5:"width";i:207;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"main.pdf-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"main.pdf-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"main.pdf-550x600.png";s:5:"width";i:550;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:15:"charity_mission";a:4:{s:4:"file";s:18:"main.pdf-64x65.png";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:9:"chy_index";a:4:{s:4:"file";s:20:"main.pdf-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:8:"chy_thmb";a:4:{s:4:"file";s:20:"main.pdf-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:11:"chy_details";a:4:{s:4:"file";s:20:"main.pdf-550x626.png";s:5:"width";i:550;s:6:"height";i:626;s:9:"mime-type";s:9:"image/png";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:20:"main.pdf-550x400.png";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:20:"main.pdf-550x421.png";s:5:"width";i:550;s:6:"height";i:421;s:9:"mime-type";s:9:"image/png";}s:19:"charity_causes_full";a:4:{s:4:"file";s:20:"main.pdf-550x421.png";s:5:"width";i:550;s:6:"height";i:421;s:9:"mime-type";s:9:"image/png";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:18:"main.pdf-98x98.png";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:20:"main.pdf-550x188.png";s:5:"width";i:550;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:16:"charity_our_work";a:4:{s:4:"file";s:20:"main.pdf-263x175.png";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(723, 137, '_edit_lock', '1444901159:1'),
(724, 137, '_edit_last', '1'),
(725, 138, '_wp_attached_file', '2015/09/Vellutino-et-al.-2004-Specific-reading-disability-dyslexia-what-have-we-learned-in-the-past-four-decades.pdf'),
(726, 139, '_wp_attached_file', '2015/09/dsyl.jpg'),
(727, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:327;s:4:"file";s:16:"2015/09/dsyl.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"dsyl-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"dsyl-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"dsyl-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"dsyl-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:14:"dsyl-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:16:"dsyl-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:16:"dsyl-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:14:"dsyl-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:16:"dsyl-480x188.jpg";s:5:"width";i:480;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:16:"dsyl-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(728, 137, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(729, 137, 'slide_template', 'default'),
(730, 137, 'cahrity-meta-type-settings', 'a:3:{s:16:"choose-meta-type";s:5:"image";s:19:"charity-meta-images";a:1:{i:0;a:1:{s:23:"upload-gallery-or-image";s:58:"http://localhost/drpp4/wp-content/uploads/2015/09/dsyl.jpg";}}s:18:"charity-meta-video";a:1:{i:0;a:3:{s:18:"upload-video-image";s:0:"";s:21:"txt-youtube-video-url";s:0:"";s:19:"txt-vimeo-video-url";s:0:"";}}}'),
(731, 155, '_wp_attached_file', '2015/08/Capture.png'),
(732, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:313;s:4:"file";s:19:"2015/08/Capture.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Capture-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"Capture-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"Capture-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"Capture-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:15:"charity_mission";a:4:{s:4:"file";s:17:"Capture-64x65.png";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:9:"chy_index";a:4:{s:4:"file";s:19:"Capture-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:8:"chy_thmb";a:4:{s:4:"file";s:19:"Capture-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:17:"Capture-98x98.png";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:19:"Capture-553x188.png";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:16:"charity_our_work";a:4:{s:4:"file";s:19:"Capture-263x175.png";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(733, 156, '_wp_attached_file', '2015/10/6842253071_a712473f7d_o.jpg'),
(734, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:1200;s:4:"file";s:35:"2015/10/6842253071_a712473f7d_o.jpg";s:5:"sizes";a:16:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"6842253071_a712473f7d_o-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:33:"6842253071_a712473f7d_o-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-850x626.jpg";s:5:"width";i:850;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-849x421.jpg";s:5:"width";i:849;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:36:"6842253071_a712473f7d_o-1140x421.jpg";s:5:"width";i:1140;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:33:"6842253071_a712473f7d_o-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:35:"6842253071_a712473f7d_o-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:7.0999999999999996447286321199499070644378662109375;s:6:"credit";s:12:"John Maniaci";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1252513677;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"28";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(735, 157, '_wp_attached_file', '2015/10/9165046672_f12255ccac_z.jpg'),
(736, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:427;s:4:"file";s:35:"2015/10/9165046672_f12255ccac_z.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-600x427.jpg";s:5:"width";i:600;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:33:"9165046672_f12255ccac_z-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-640x421.jpg";s:5:"width";i:640;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-640x421.jpg";s:5:"width";i:640;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:33:"9165046672_f12255ccac_z-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:35:"9165046672_f12255ccac_z-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(737, 158, '_wp_attached_file', '2015/10/19169785441_93f9534163_c.jpg'),
(738, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:488;s:4:"file";s:36:"2015/10/19169785441_93f9534163_c.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-300x183.jpg";s:5:"width";i:300;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-600x488.jpg";s:5:"width";i:600;s:6:"height";i:488;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:34:"19169785441_93f9534163_c-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-800x421.jpg";s:5:"width";i:800;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-800x421.jpg";s:5:"width";i:800;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:34:"19169785441_93f9534163_c-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:36:"19169785441_93f9534163_c-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(739, 159, '_wp_attached_file', '2015/10/20893407224_5537e61aeb_c.jpg'),
(740, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:534;s:4:"file";s:36:"2015/10/20893407224_5537e61aeb_c.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-600x534.jpg";s:5:"width";i:600;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:34:"20893407224_5537e61aeb_c-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-800x421.jpg";s:5:"width";i:800;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-800x421.jpg";s:5:"width";i:800;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:34:"20893407224_5537e61aeb_c-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:36:"20893407224_5537e61aeb_c-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(741, 126, '_wp_old_slug', 'dr-kristiantini-dewi-sp-a'),
(746, 128, '_wp_old_slug', 'dr-purboyo-solek-sp-ak-2'),
(747, 161, '_wp_attached_file', '2015/09/12087490_10207535066722846_242040996_n.jpg'),
(748, 161, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:240;s:4:"file";s:50:"2015/09/12087490_10207535066722846_242040996_n.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"12087490_10207535066722846_242040996_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"12087490_10207535066722846_242040996_n-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:50:"12087490_10207535066722846_242040996_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:50:"12087490_10207535066722846_242040996_n-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:48:"12087490_10207535066722846_242040996_n-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:48:"12087490_10207535066722846_242040996_n-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:50:"12087490_10207535066722846_242040996_n-360x188.jpg";s:5:"width";i:360;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:50:"12087490_10207535066722846_242040996_n-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(749, 128, '_thumbnail_id', '161'),
(750, 126, '_thumbnail_id', '161'),
(752, 167, '_edit_lock', '1444375260:1'),
(753, 167, '_edit_last', '1'),
(754, 168, '_wp_attached_file', '2015/10/10526124_10206733686612265_4682536487427351894_n.jpg'),
(755, 168, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:473;s:6:"height";i:720;s:4:"file";s:60:"2015/10/10526124_10206733686612265_4682536487427351894_n.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-197x300.jpg";s:5:"width";i:197;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-473x600.jpg";s:5:"width";i:473;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:58:"10526124_10206733686612265_4682536487427351894_n-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-473x626.jpg";s:5:"width";i:473;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-473x400.jpg";s:5:"width";i:473;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-473x421.jpg";s:5:"width";i:473;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-473x421.jpg";s:5:"width";i:473;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:58:"10526124_10206733686612265_4682536487427351894_n-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-473x188.jpg";s:5:"width";i:473;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:60:"10526124_10206733686612265_4682536487427351894_n-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(756, 167, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(757, 167, 'slide_template', 'default'),
(758, 169, 'charity_event', 'a:3:{s:17:"event_video_image";s:102:"http://localhost/drpp4/wp-content/uploads/2015/10/10526124_10206733686612265_4682536487427351894_n.jpg";s:18:"event_you_tube_url";s:0:"";s:15:"event_vimeo_url";s:0:"";}'),
(759, 169, '_location_id', '2'),
(760, 169, '_blog_id', ''),
(761, 169, '_location_address', ' Jl. Dr. Cipto No. 1'),
(762, 169, '_location_town', 'Bandung'),
(763, 169, '_location_state', ''),
(764, 169, '_location_postcode', ''),
(765, 169, '_location_region', ''),
(766, 169, '_location_country', 'ID'),
(767, 169, '_location_latitude', '-6.9060771'),
(768, 169, '_location_longitude', '107.5999213'),
(769, 169, '_location_status', '1'),
(770, 167, '_event_id', '3'),
(771, 167, '_event_start_time', '09:00:00'),
(772, 167, '_event_end_time', '14:00:00'),
(773, 167, '_event_all_day', '0'),
(774, 167, '_event_start_date', '2015-10-17'),
(775, 167, '_event_end_date', '2015-10-17'),
(776, 167, '_event_rsvp', '0'),
(777, 167, '_event_rsvp_date', ''),
(778, 167, '_event_rsvp_time', '00:00:00'),
(779, 167, '_event_rsvp_spaces', ''),
(780, 167, '_event_spaces', ''),
(781, 167, '_location_id', '2'),
(782, 167, '_recurrence_id', ''),
(783, 167, '_event_status', '1'),
(784, 167, '_event_private', '0'),
(785, 167, '_event_date_created', ''),
(786, 167, '_event_date_modified', ''),
(787, 167, '_blog_id', ''),
(788, 167, '_group_id', '0'),
(789, 167, '_recurrence', '0'),
(790, 167, '_recurrence_interval', ''),
(791, 167, '_recurrence_freq', ''),
(792, 167, '_recurrence_days', '0'),
(793, 167, '_recurrence_byday', ''),
(794, 167, '_recurrence_byweekno', ''),
(795, 167, '_recurrence_rsvp_days', ''),
(796, 167, '_start_ts', '1445072400'),
(797, 167, '_end_ts', '1445090400'),
(798, 167, 'charity_event', 'a:3:{s:17:"event_video_image";s:102:"http://localhost/drpp4/wp-content/uploads/2015/10/10526124_10206733686612265_4682536487427351894_n.jpg";s:18:"event_you_tube_url";s:0:"";s:15:"event_vimeo_url";s:0:"";}'),
(799, 170, '_edit_lock', '1444375570:1'),
(800, 170, '_edit_last', '1'),
(801, 171, '_edit_lock', '1444375769:1'),
(802, 171, '_edit_last', '1'),
(803, 172, '_wp_attached_file', '2015/10/12115423_10206715471836907_7226119186921531650_n.jpg'),
(804, 172, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:569;s:6:"height";i:720;s:4:"file";s:60:"2015/10/12115423_10206715471836907_7226119186921531650_n.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-237x300.jpg";s:5:"width";i:237;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-569x600.jpg";s:5:"width";i:569;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"charity_mission";a:4:{s:4:"file";s:58:"12115423_10206715471836907_7226119186921531650_n-64x65.jpg";s:5:"width";i:64;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:9:"chy_index";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"chy_thmb";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"chy_details";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-569x626.jpg";s:5:"width";i:569;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:20:"charity_causes_thumb";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-569x400.jpg";s:5:"width";i:569;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity_causes_medium";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-569x421.jpg";s:5:"width";i:569;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:19:"charity_causes_full";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-569x421.jpg";s:5:"width";i:569;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:24:"charity-recentpost-thumb";a:4:{s:4:"file";s:58:"12115423_10206715471836907_7226119186921531650_n-98x98.jpg";s:5:"width";i:98;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:21:"charity-urgent-causes";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-553x188.jpg";s:5:"width";i:553;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:16:"charity_our_work";a:4:{s:4:"file";s:60:"12115423_10206715471836907_7226119186921531650_n-263x175.jpg";s:5:"width";i:263;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(805, 171, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(806, 171, 'slide_template', 'default'),
(807, 173, 'charity_event', 'a:3:{s:17:"event_video_image";s:102:"http://localhost/drpp4/wp-content/uploads/2015/10/12115423_10206715471836907_7226119186921531650_n.jpg";s:18:"event_you_tube_url";s:0:"";s:15:"event_vimeo_url";s:0:"";}'),
(808, 173, '_location_id', '3'),
(809, 173, '_blog_id', ''),
(810, 173, '_location_address', 'Jl. Dr. Cipto No. 1'),
(811, 173, '_location_town', 'Bandung'),
(812, 173, '_location_state', ''),
(813, 173, '_location_postcode', ''),
(814, 173, '_location_region', ''),
(815, 173, '_location_country', 'ID'),
(816, 173, '_location_latitude', '-6.9060771'),
(817, 173, '_location_longitude', '107.5999213'),
(818, 173, '_location_status', '1'),
(819, 171, '_event_id', '4'),
(820, 171, '_event_start_time', '09:00:00'),
(821, 171, '_event_end_time', '17:00:00'),
(822, 171, '_event_all_day', '0'),
(823, 171, '_event_start_date', '2015-10-19'),
(824, 171, '_event_end_date', '2015-10-30'),
(825, 171, '_event_rsvp', '0'),
(826, 171, '_event_rsvp_date', ''),
(827, 171, '_event_rsvp_time', '00:00:00'),
(828, 171, '_event_rsvp_spaces', ''),
(829, 171, '_event_spaces', ''),
(830, 171, '_location_id', '3'),
(831, 171, '_recurrence_id', ''),
(832, 171, '_event_status', '1'),
(833, 171, '_event_private', '0'),
(834, 171, '_event_date_created', ''),
(835, 171, '_event_date_modified', ''),
(836, 171, '_blog_id', ''),
(837, 171, '_group_id', '0'),
(838, 171, '_recurrence', '0'),
(839, 171, '_recurrence_interval', ''),
(840, 171, '_recurrence_freq', ''),
(841, 171, '_recurrence_days', '0'),
(842, 171, '_recurrence_byday', ''),
(843, 171, '_recurrence_byweekno', ''),
(844, 171, '_recurrence_rsvp_days', ''),
(845, 171, '_start_ts', '1445245200'),
(846, 171, '_end_ts', '1446224400'),
(847, 171, 'charity_event', 'a:3:{s:17:"event_video_image";s:102:"http://localhost/drpp4/wp-content/uploads/2015/10/12115423_10206715471836907_7226119186921531650_n.jpg";s:18:"event_you_tube_url";s:0:"";s:15:"event_vimeo_url";s:0:"";}'),
(848, 178, '_menu_item_type', 'custom'),
(849, 178, '_menu_item_menu_item_parent', '0'),
(850, 178, '_menu_item_object_id', '178'),
(851, 178, '_menu_item_object', 'custom'),
(852, 178, '_menu_item_target', ''),
(853, 178, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(854, 178, '_menu_item_xfn', ''),
(855, 178, '_menu_item_url', '/drpp'),
(857, 178, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(858, 179, '_menu_item_type', 'custom'),
(859, 179, '_menu_item_menu_item_parent', '0'),
(860, 179, '_menu_item_object_id', '179'),
(861, 179, '_menu_item_object', 'custom'),
(862, 179, '_menu_item_target', ''),
(863, 179, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(864, 179, '_menu_item_xfn', ''),
(865, 179, '_menu_item_url', '#'),
(867, 180, '_menu_item_type', 'custom'),
(868, 180, '_menu_item_menu_item_parent', '179'),
(869, 180, '_menu_item_object_id', '180'),
(870, 180, '_menu_item_object', 'custom'),
(871, 180, '_menu_item_target', ''),
(872, 180, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(873, 180, '_menu_item_xfn', ''),
(874, 180, '_menu_item_url', '#'),
(876, 181, '_menu_item_type', 'custom'),
(877, 181, '_menu_item_menu_item_parent', '179'),
(878, 181, '_menu_item_object_id', '181'),
(879, 181, '_menu_item_object', 'custom'),
(880, 181, '_menu_item_target', ''),
(881, 181, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(882, 181, '_menu_item_xfn', ''),
(883, 181, '_menu_item_url', '#'),
(885, 179, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(886, 180, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(887, 181, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-08-19 00:35:57', '2015-08-19 00:35:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-08-19 00:35:57', '2015-08-19 00:35:57', '', 0, 'http://localhost/drpp/?p=1', 0, 'post', '', 1),
(3, 1, '2015-08-19 00:40:18', '2015-08-19 00:40:18', '', 'Kegiatan', 'CONTENTS', 'publish', 'closed', 'closed', '', 'kegiatan', '', '', '2015-10-15 06:14:26', '2015-10-15 06:14:26', '', 0, 'http://localhost/drpp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2015-08-19 00:40:19', '2015-08-19 00:40:19', 'CONTENTS', 'Locations', '', 'publish', 'closed', 'open', '', 'locations', '', '', '2015-08-19 00:40:19', '2015-08-19 00:40:19', '', 3, 'http://localhost/drpp/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-08-19 00:40:19', '2015-08-19 00:40:19', 'CONTENTS', 'Categories', '', 'publish', 'closed', 'open', '', 'categories', '', '', '2015-08-19 00:40:19', '2015-08-19 00:40:19', '', 3, 'http://localhost/drpp/?page_id=5', 0, 'page', '', 0),
(6, 1, '2015-08-19 00:40:19', '2015-08-19 00:40:19', 'CONTENTS', 'Tags', '', 'publish', 'closed', 'open', '', 'tags', '', '', '2015-08-19 00:40:19', '2015-08-19 00:40:19', '', 3, 'http://localhost/drpp/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-08-19 00:40:20', '2015-08-19 00:40:20', 'CONTENTS', 'My Bookings', '', 'publish', 'closed', 'open', '', 'my-bookings', '', '', '2015-08-19 00:40:20', '2015-08-19 00:40:20', '', 3, 'http://localhost/drpp/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-08-19 00:41:44', '2015-08-19 00:41:44', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <kalikautsar@yahoo.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on The Learning Center (http://localhost/drpp)\nkalikautsar@yahoo.com\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nThe Learning Center <kalikautsar@yahoo.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on The Learning Center (http://localhost/drpp)\n[your-email]\nReply-To: kalikautsar@yahoo.com\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2015-08-19 00:41:44', '2015-08-19 00:41:44', '', 0, 'http://localhost/drpp/?post_type=wpcf7_contact_form&p=8', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2015-08-19 00:44:21', '2015-08-19 00:44:21', '', 'logo The Learning Center Diapositif', '', 'inherit', 'open', 'closed', '', 'logo-the-learning-center-diapositif', '', '', '2015-08-19 00:44:21', '2015-08-19 00:44:21', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/logo-The-Learning-Center-Diapositif.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2015-08-19 00:44:23', '2015-08-19 00:44:23', '', 'logo The Learning Center Putih', '', 'inherit', 'open', 'closed', '', 'logo-the-learning-center-putih', '', '', '2015-08-19 00:44:23', '2015-08-19 00:44:23', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/logo-The-Learning-Center-Putih.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2015-08-19 00:47:11', '2015-08-19 00:47:11', '', 'Beranda', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '2015-10-14 13:19:49', '2015-10-14 13:19:49', '', 0, 'http://localhost/drpp/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-08-19 00:47:11', '2015-08-19 00:47:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-08-19 00:47:11', '2015-08-19 00:47:11', '', 11, 'http://localhost/drpp/?p=12', 0, 'revision', '', 0),
(13, 1, '2015-08-19 00:47:53', '2015-08-19 00:47:53', '', 'Tentang', '', 'publish', 'closed', 'closed', '', 'tentang', '', '', '2015-10-15 06:10:08', '2015-10-15 06:10:08', '', 0, 'http://localhost/drpp/?page_id=13', 0, 'page', '', 0),
(14, 1, '2015-08-19 00:47:53', '2015-08-19 00:47:53', '', 'What is The Learning Center?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-08-19 00:47:53', '2015-08-19 00:47:53', '', 13, 'http://localhost/drpp/?p=14', 0, 'revision', '', 0),
(15, 1, '2015-08-19 00:48:16', '2015-08-19 00:48:16', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text css_animation="top-to-bottom"]The Learning Center have two main features, consultation and symposium, lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum[/vc_column_text][vc_separator color="grey" align="align_center" style="" border_width="" el_width=""][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="12" alignment="center" border_color="grey" img_link_large="" img_link_target="_self" img_size="600x600" css_animation="left-to-right"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<h2>Consultation</h2>\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][vc_btn title="Register Now!" style="flat" shape="rounded" color="green" size="md" align="inline" i_align="left" i_type="fontawesome" i_icon_fontawesome="fa fa-adjust" i_icon_openiconic="vc-oi vc-oi-dial" i_icon_typicons="typcn typcn-adjust-brightness" i_icon_entypo="entypo-icon entypo-icon-note" i_icon_linecons="vc_li vc_li-heart" button_block="" add_icon="" i_icon_pixelicons="vc_pixel_icon vc_pixel_icon-alert" css_animation="right-to-left"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="11" alignment="center" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="500x500"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<h2>Consultation</h2>\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][vc_btn title="Register Now!" style="flat" shape="rounded" color="green" size="md" align="inline" i_align="left" i_type="fontawesome" i_icon_fontawesome="fa fa-adjust" i_icon_openiconic="vc-oi vc-oi-dial" i_icon_typicons="typcn typcn-adjust-brightness" i_icon_entypo="entypo-icon entypo-icon-note" i_icon_linecons="vc_li vc_li-heart" button_block="" add_icon="" i_icon_pixelicons="vc_pixel_icon vc_pixel_icon-alert" css_animation="right-to-left"][/vc_column][/vc_row]', 'Main Features', '', 'trash', 'closed', 'closed', '', 'main-features', '', '', '2015-08-19 03:59:19', '2015-08-19 03:59:19', '', 0, 'http://localhost/drpp/?page_id=15', 0, 'page', '', 0),
(17, 1, '2015-08-19 00:48:36', '2015-08-19 00:48:36', '', 'Berita', '', 'publish', 'closed', 'closed', '', 'berita', '', '', '2015-10-06 07:31:58', '2015-10-06 07:31:58', '', 0, 'http://localhost/drpp/?page_id=17', 0, 'page', '', 0),
(18, 1, '2015-08-19 00:48:36', '2015-08-19 00:48:36', '', 'News', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2015-08-19 00:48:36', '2015-08-19 00:48:36', '', 17, 'http://localhost/drpp/?p=18', 0, 'revision', '', 0),
(19, 1, '2015-08-19 00:49:02', '2015-08-19 00:49:02', '', 'Galeri', '', 'publish', 'closed', 'closed', '', 'galeri', '', '', '2015-10-15 06:13:33', '2015-10-15 06:13:33', '', 0, 'http://localhost/drpp/?page_id=19', 0, 'page', '', 0),
(20, 1, '2015-08-19 00:49:02', '2015-08-19 00:49:02', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2015-08-19 00:49:02', '2015-08-19 00:49:02', '', 19, 'http://localhost/drpp/?p=20', 0, 'revision', '', 0),
(22, 1, '2015-08-19 00:49:23', '2015-08-19 00:49:23', '', 'Events', '', 'publish', 'closed', 'closed', '', 'event', '', '', '2015-10-06 07:15:21', '2015-10-06 07:15:21', '', 0, 'http://localhost/drpp/?page_id=22', 0, 'page', '', 0),
(23, 1, '2015-08-19 00:49:23', '2015-08-19 00:49:23', '', 'Event', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-08-19 00:49:23', '2015-08-19 00:49:23', '', 22, 'http://localhost/drpp/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-08-19 00:49:51', '2015-08-19 00:49:51', '', 'Jurnal', '', 'publish', 'closed', 'closed', '', 'jurnal', '', '', '2015-10-15 06:15:04', '2015-10-15 06:15:04', '', 0, 'http://localhost/drpp/?page_id=24', 0, 'page', '', 0),
(25, 1, '2015-08-19 00:49:51', '2015-08-19 00:49:51', '', 'Journal', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-08-19 00:49:51', '2015-08-19 00:49:51', '', 24, 'http://localhost/drpp/?p=25', 0, 'revision', '', 0),
(26, 1, '2015-08-19 00:50:07', '2015-08-19 00:50:07', '', 'Collaboration', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-08-19 00:50:07', '2015-08-19 00:50:07', '', 24, 'http://localhost/drpp/?p=26', 0, 'revision', '', 0),
(27, 1, '2015-08-19 00:50:19', '2015-08-19 00:50:19', '', 'Journal', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-08-19 00:50:19', '2015-08-19 00:50:19', '', 24, 'http://localhost/drpp/?p=27', 0, 'revision', '', 0),
(28, 1, '2015-08-19 00:50:37', '2015-08-19 00:50:37', 'IndiGrow hadir sebagai partner orang tua dan sekolah dalam mengembangkan anak mencapai potensinya. IndiGrow membantu menangani masalah perkembangan anak secara terpadu dengan tim ahli perkembangan anak dari berbagai disiplin ilmu: Dokter spesialis anak &amp; konsultan syaraf anak, dokter rehabilitasi medik, psikolog, terapis perilaku, terapis okupasi dan sensori integrasi, terapi wicara serta fisoterapi.\r\n<h2>Pemeriksaan dan Assesment</h2>\r\n<ul>\r\n	<li>Konsultasi dan pemeriksaan tumbuh kembang dan neurologi anak.</li>\r\n	<li>Konsultasi dan pemeriksaan psikologi, meliputi: tes potensi/intelegensi, tes kepribadian, tes kematangan sekolah, tes minat dan bakat.</li>\r\n	<li>Pemeriksaan tim (Dokter spesialis anak &amp; konsultan syaraf anak + psikolog/terapis) Khusus untuk anak dengan kesuitan belajar (disleksia, diskalkulia, disgrafia, autis, asperger, PDD-NOS dan ADD/ADHD.</li>\r\n</ul>\r\n<h2>Terapi dan Stimulasi</h2>\r\n<ul>\r\n	<li>Terapi perilaku</li>\r\n	<li>Terapi wicara</li>\r\n	<li>Terapi okupasi</li>\r\n	<li>Terapi sensori integrasi</li>\r\n	<li>Fisioterapi</li>\r\n	<li>Remdial terapi/paedagogi</li>\r\n	<li>Home program untuk menstimulasi perkembangan anak di rumah</li>\r\n</ul>\r\n<h2>Parent Education and Support Group</h2>\r\n<ul>\r\n	<li>Evaluasi perkembangan anak secara berkala</li>\r\n	<li>Family Gathering</li>\r\n	<li>Seminar dan pelatihan untuk orang tua</li>\r\n</ul>\r\n<h2>Fasilitas</h2>\r\nindiGrow menyediakan tempat yang nyaman, aman dan menyenangkan serta dilengkapi dengan fasilitas:\r\n<ul>\r\n	<li>Ruang individual dan group therapy</li>\r\n	<li>Ruang trampoline, Gym, dan taman senori</li>\r\n	<li>Ruang konsultasi dokter dan psikolog</li>\r\n	<li>Berbagai alat dan mainan edukatif yang mendukung kegiatan terapi</li>\r\n</ul>\r\n<h2>Ingin berkolaborasi penelitian dengan kami?</h2>\r\nHubungi kami di: Jl. Haruman No. 35 Bandung Telp. (022) 7303244 e-mail: indigrow1@yahoo.com', 'Kolaborasi', '', 'publish', 'closed', 'closed', '', 'kolaborasi', '', '', '2015-10-09 07:45:29', '2015-10-09 07:45:29', '', 0, 'http://localhost/drpp/?page_id=28', 0, 'page', '', 0),
(29, 1, '2015-08-19 00:50:37', '2015-08-19 00:50:37', '', 'Collaboration', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-08-19 00:50:37', '2015-08-19 00:50:37', '', 28, 'http://localhost/drpp/?p=29', 0, 'revision', '', 0),
(30, 1, '2015-08-19 00:50:58', '2015-08-19 00:50:58', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>The Learning Center</strong>\r\n<ul>\r\n	<li>indiGrow Child Development Center Jl. Haruman No. 35 Bandung<i class="fa fa-phone fa-lg"></i></li>\r\n	<li>(022) 7303244</li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> <a href="mailto:indigrow1@yahoo.com">indigrow1@yahoo.com</a></small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Kontak', '', 'publish', 'closed', 'closed', '', 'kontak', '', '', '2015-10-15 06:15:09', '2015-10-15 06:15:09', '', 0, 'http://localhost/drpp/?page_id=30', 0, 'page', '', 0),
(31, 1, '2015-08-19 00:50:58', '2015-08-19 00:50:58', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-08-19 00:50:58', '2015-08-19 00:50:58', '', 30, 'http://localhost/drpp/?p=31', 0, 'revision', '', 0),
(33, 1, '2015-08-19 00:56:24', '2015-08-19 00:56:24', '', 'Kolaborasi Penelitian', '', 'publish', 'closed', 'closed', '', '33', '', '', '2015-10-14 14:20:51', '2015-10-14 14:20:51', '', 0, 'http://localhost/drpp/?p=33', 9, 'nav_menu_item', '', 0),
(34, 1, '2015-08-19 00:56:24', '2015-08-19 00:56:24', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2015-10-14 14:20:51', '2015-10-14 14:20:51', '', 0, 'http://localhost/drpp/?p=34', 12, 'nav_menu_item', '', 0),
(35, 1, '2015-08-19 00:56:22', '2015-08-19 00:56:22', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2015-10-14 14:20:50', '2015-10-14 14:20:50', '', 0, 'http://localhost/drpp/?p=35', 5, 'nav_menu_item', '', 0),
(36, 1, '2015-08-19 00:56:18', '2015-08-19 00:56:18', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2015-10-14 14:20:50', '2015-10-14 14:20:50', '', 0, 'http://localhost/drpp/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2015-08-19 00:56:23', '2015-08-19 00:56:23', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2015-10-14 14:20:51', '2015-10-14 14:20:51', '', 0, 'http://localhost/drpp/?p=37', 11, 'nav_menu_item', '', 0),
(40, 1, '2015-08-19 00:56:20', '2015-08-19 00:56:20', '', 'Apa itu The Learning Center?', '', 'publish', 'closed', 'closed', '', '40', '', '', '2015-10-14 14:20:50', '2015-10-14 14:20:50', '', 0, 'http://localhost/drpp/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2015-08-19 00:56:19', '2015-08-19 00:56:19', '', 'Tentang', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2015-10-14 14:20:50', '2015-10-14 14:20:50', '', 0, 'http://localhost/drpp/?p=41', 2, 'nav_menu_item', '', 0),
(44, 1, '2015-08-19 00:56:23', '2015-08-19 00:56:23', '', 'Event', '', 'publish', 'closed', 'closed', '', '44', '', '', '2015-10-14 14:20:51', '2015-10-14 14:20:51', '', 0, 'http://localhost/drpp/?p=44', 10, 'nav_menu_item', '', 0),
(45, 1, '2015-08-19 00:56:14', '2015-08-19 00:56:14', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533858156{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534043825{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533869114{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534056914{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533886339{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534089852{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533908528{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534109307{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533922304{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534117823{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row]', 'Tim Ahli', '', 'publish', 'closed', 'closed', '', 'tim-ahli', '', '', '2015-10-15 06:13:30', '2015-10-15 06:13:30', '', 0, 'http://localhost/drpp/?page_id=45', 0, 'page', '', 0),
(46, 1, '2015-08-19 00:56:14', '2015-08-19 00:56:14', '', 'Our Expert', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2015-08-19 00:56:14', '2015-08-19 00:56:14', '', 45, 'http://localhost/drpp/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-08-19 00:56:45', '2015-08-19 00:56:45', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2015-10-14 14:20:50', '2015-10-14 14:20:50', '', 0, 'http://localhost/drpp/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2015-08-19 01:00:23', '2015-08-19 01:00:23', '', 'Keunggulan Online Consultation', '', 'inherit', 'open', 'closed', '', 'keunggulan-online-consultation', '', '', '2015-08-19 01:00:23', '2015-08-19 01:00:23', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/Keunggulan-Online-Consultation.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2015-08-19 01:00:27', '2015-08-19 01:00:27', '', 'Persuasive Question', '', 'inherit', 'open', 'closed', '', 'persuasive-question', '', '', '2015-08-19 01:00:27', '2015-08-19 01:00:27', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/Persuasive-Question.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2015-08-19 01:01:58', '2015-08-19 01:01:58', '', 'Icon Consultation', '', 'inherit', 'open', 'closed', '', 'icon-consultation', '', '', '2015-08-19 01:01:58', '2015-08-19 01:01:58', '', 11, 'http://localhost/drpp/wp-content/uploads/2015/08/Icon-Consultation.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2015-08-19 01:02:01', '2015-08-19 01:02:01', '', 'Icon Online Symposium', '', 'inherit', 'open', 'closed', '', 'icon-online-symposium', '', '', '2015-08-19 01:02:01', '2015-08-19 01:02:01', '', 11, 'http://localhost/drpp/wp-content/uploads/2015/08/Icon-Online-Symposium.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2015-08-19 01:03:26', '2015-08-19 01:03:26', '', 'Book', '', 'inherit', 'open', 'closed', '', 'book', '', '', '2015-08-19 01:03:26', '2015-08-19 01:03:26', '', 11, 'http://localhost/drpp/wp-content/uploads/2015/08/Book.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2015-08-19 01:08:36', '2015-08-19 01:08:36', 'Sally E. Shaywitz, MD, and Bennett A. Shaywitz, MD\r\n\r\nIt is a great honor to present this lecture, which honors the extraordinary contributions to scholarship and teaching of Leonard Apt, MD a true renaissance man. For more than four decades, Leonard Apt has contributed both singular discoveries and a continuous stream of research findings that have significantly advanced our knowledge in the field of pediatrics and pediatric ophthalmology. In the words of Leonard Apt, “In academic medicine, I have been free to question and investigate new theories. Years from now, I’d like to be remembered as a doctor who never stopped asking ‘Why?’” <a href="http://localhost/drpp4/wp-content/uploads/2015/09/Shaywitz-Shaywitz-2003-The-science-of-reading-and-dyslexia.pdf">Read more (download here)</a>', 'Leonard Apt Lecture: The Science of Reading and Dyslexia', '', 'publish', 'open', 'closed', '', 'lorem-ipsum', '', '', '2015-09-29 09:19:53', '2015-09-29 09:19:53', '', 0, 'http://localhost/drpp/?post_type=charity-portfolio&#038;p=54', 0, 'charity-portfolio', '', 0),
(55, 1, '2015-08-19 01:07:19', '2015-08-19 01:07:19', '', 'Flyer depan', '', 'inherit', 'open', 'closed', '', 'flyer-depan', '', '', '2015-08-19 01:07:19', '2015-08-19 01:07:19', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/Flyer-depan.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2015-08-19 01:08:06', '2015-08-19 01:08:06', '', 'quote', '', 'inherit', 'open', 'closed', '', 'quote', '', '', '2015-08-19 01:08:06', '2015-08-19 01:08:06', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/quote-.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2015-08-19 01:08:10', '2015-08-19 01:08:10', '', 'quote 1 fix', '', 'inherit', 'open', 'closed', '', 'quote-1-fix', '', '', '2015-08-19 01:08:10', '2015-08-19 01:08:10', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/quote-1-fix.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2015-08-19 01:09:07', '2015-08-19 01:09:07', '<div class="abstract svAbstract " data-etype="ab">\r\n<div class="title">\r\n<div class="title">Cortex Volume 73, December 2015, Pages 131–143</div>\r\n<div class="title">Yafit Gabay<sup>a</sup><sup>, </sup><sup>b</sup><sup>, </sup><sup>, </sup>,Lori L. Holt<sup>a</sup><sup>, </sup><sup>b</sup></div>\r\n<div class="title"><sup>a</sup> <span id="">Carnegie Mellon University, Department of Psychology, Pittsburgh, PA, USA\r\n</span><sup>b</sup> <span id="">Center for the Neural Basis of Cognition, Pittsburgh, PA, USA\r\n</span></div>\r\n<div class="title">Received 4 March 2015, Revised 9 June 2015, Accepted 7 August 2015, Available online 21 August 2015</div>\r\n</div>\r\n<h2 class="title">Abstract</h2>\r\n<p id="abspara0010">Developmental dyslexia is commonly thought to arise from specific phonologicalimpairments. However, recent evidence is consistent with the possibility that phonological impairments arise as symptoms of an underlying dysfunction of procedural learning. The nature of the link between impaired procedural learning and phonological dysfunction is unresolved. Motivated by the observation that speech processing involves the acquisition of procedural category knowledge, the present study investigates the possibility that procedural learning impairment may affect phonological processing by interfering with the typical course of phonetic category learning. The present study tests this hypothesis while controlling for linguistic experience and possible speech-specific deficits by comparing auditory category learning across artificial, nonlinguistic sounds among dyslexic adults and matched controls in a specialized first-person shooter videogame that has been shown to engage procedural learning. Nonspeech auditory category learning was assessed online via within-game measures and also with a post-training task involving overt categorization of familiar and novel sound exemplars. Each measure reveals that dyslexic participants do not acquire procedural category knowledge as effectively as age- and cognitive-ability matched controls. This difference cannot be explained by differences in perceptual acuity for the sounds. Moreover, poor nonspeech category learning is associated with slower phonological processing. Whereas phonological processing impairments have been emphasized as the cause of dyslexia, the current results suggest that impaired auditory category <em>learning</em>, general in nature and not specific to speech signals, could contribute to phonological deficits in dyslexia with subsequent negative effects on language acquisition and reading. Implications for the neuro-cognitive mechanisms of developmental dyslexia are discussed.</p>\r\n\r\n</div>\r\n<div id="SD_BA1P" class="sgfNoTitleBar sgfNoGadgetBorder svDoNotLink ui-sortable">\r\n<div id="SD_BA1P_323548" class="containerApplOver sgfVisible">\r\n<div id="maincontremote_iframe_0" class="containerAppDetails ">Keywords: <span id="">Developmental dyslexia, </span><span id="">Category acquisition, </span><span id="">Procedural learning, </span><span id="">Speech, </span>Videogame training</div>\r\n</div>\r\n<div class="containerAppDetails "><a href="http://localhost/drpp4/wp-content/uploads/2015/09/1-s2.0-S0010945215003020-main.pdf">Download</a></div>\r\n</div>', 'Incidental learning of sound categories is impaired in developmental dyslexia', '', 'publish', 'open', 'closed', '', 'incidental-learning-of-sound-categories', '', '', '2015-09-29 06:30:31', '2015-09-29 06:30:31', '', 0, 'http://localhost/drpp/?post_type=charity-portfolio&#038;p=58', 0, 'charity-portfolio', '', 0),
(60, 1, '2015-08-19 01:18:32', '2015-08-19 01:18:32', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta</small></li>\r\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-08-19 01:18:32', '2015-08-19 01:18:32', '', 30, 'http://localhost/drpp/30-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-08-19 01:20:48', '2015-08-19 01:20:48', 'Written by University of Illinois at Chicago\r\n\r\nResearchers at the University of Illinois at Chicago are the first to use brain imaging to examine the effects of emotion on working memory function in children with pediatric bipolar disorder or attention deficit hyperactivity disorder. The study is published in the October issue of the Journal of the American Academy of Child &amp; Adolescent Psychiatry. PBD and ADHD are very severe developmental disorders that share behavioral characteristics such as impulsivity, irritability and attention problems.\r\n\r\nUsing functional magnetic resonance imaging, researchers at UIC examined the brain activity of children as they performed a working memory task while viewing faces with different emotions, such as angry, happy or neutral expressions.\r\n\r\nThe children, ages 10 to 18, were asked to remember the faces and to press a button in the MR-scanner if they saw the same face that was presented two trials earlier. The study involved 23 non-medicated children with bipolar disorder, 14 non-medicated children with ADHD and 19 healthy controls.\r\n\r\n"It''s a simple yet elegant working memory test that tells us a lot about how their brain remembers stimuli like faces or objects," said Alessandra Passarotti, assistant professor of psychiatry at UIC and lead author of the study. "We also added in an emotional component -- because both disorders show emotional deficits -- to study how their working memory is affected by emotional challenge."\r\n\r\nThe researchers found that while both disorders show dysfunction in the prefrontal cortex relative to healthy controls, the ADHD group had the most severe dysfunction in this important region. The prefrontal cortex controls behavior, such as impulsivity, and executive function, as well as complex cognitive processes such as working memory, attention and language.\r\n\r\nFrom a treatment, learning and intervention perspective, the next step for researchers and clinicians is to figure out how to help patients use their prefrontal cortex, Passarotti said.\r\n\r\nThe researchers also found that while the ADHD group had greater dysfunction in working memory circuits in the brain, the bipolar group had more deficits in regions of the brain involved in emotion-processing and regulation.\r\n\r\nNow that researchers are starting to differentiate between the two disorders at a brain network level, rather than just at a behavioral level, the long-term goal is to develop diagnostic tests based on neurological and behavioral markers of illness that can be used in a clinical setting. Currently patients are diagnosed using clinical measures, questionnaires, behavior scales and interviews with parents.\r\n\r\nIt is difficult for physicians to differentiate between the two disorders behaviorally, which may lead to an incorrect diagnosis and wrong medications, a worsening of symptoms, and greater frustration for children and parents, said Passarotti, a researcher in UIC''s Institute for Juvenile Research.\r\n\r\nShe said that while researchers still do not understand all of the neurological deficits that characterize ADHD and PBD profiles, they know that drug treatment that works for ADHD does not work for bipolar disorder.\r\n\r\n"In fact, if you give a stimulant to a child with bipolar disorder, they become more manic, and this makes their illness even worse, whereas if you give the mood-regulation medicine commonly prescribed for PBD to a child with ADHD, they still show a lot of attention deficits and do not show any improvement," Passarotti said.\r\n\r\n"Our hope is that by better differentiating between these two severe developmental illnesses, we can help develop more accurate diagnoses and more targeted treatments for PBD and ADHD."\r\n\r\nCo-authors of the study are Dr. Mani Pavuluri, the Berger-Colbeth Term Chair in Child Psychiatry and director of the Pediatric Brain Research and Intervention Center at UIC, and John Sweeney, professor of psychiatry, neurology and psychology and director of the Center for Cognitive Medicine at UIC.', 'Brain Imaging Identifies Differences in Childhood Bipolar Disorder, ADHD', '', 'publish', 'open', 'open', '', 'brain-imaging-identifies-differences-in-childhood-bipolar-disorder-adhd', '', '', '2015-08-19 01:21:21', '2015-08-19 01:21:21', '', 0, 'http://localhost/drpp/?p=61', 0, 'post', '', 0),
(62, 1, '2015-08-19 01:20:48', '2015-08-19 01:20:48', 'Written by University of Illinois at Chicago\r\n\r\nResearchers at the University of Illinois at Chicago are the first to use brain imaging to examine the effects of emotion on working memory function in children with pediatric bipolar disorder or attention deficit hyperactivity disorder. The study is published in the October issue of the Journal of the American Academy of Child &amp; Adolescent Psychiatry. PBD and ADHD are very severe developmental disorders that share behavioral characteristics such as impulsivity, irritability and attention problems.\r\n\r\nUsing functional magnetic resonance imaging, researchers at UIC examined the brain activity of children as they performed a working memory task while viewing faces with different emotions, such as angry, happy or neutral expressions.\r\n\r\nThe children, ages 10 to 18, were asked to remember the faces and to press a button in the MR-scanner if they saw the same face that was presented two trials earlier. The study involved 23 non-medicated children with bipolar disorder, 14 non-medicated children with ADHD and 19 healthy controls.\r\n\r\n"It''s a simple yet elegant working memory test that tells us a lot about how their brain remembers stimuli like faces or objects," said Alessandra Passarotti, assistant professor of psychiatry at UIC and lead author of the study. "We also added in an emotional component -- because both disorders show emotional deficits -- to study how their working memory is affected by emotional challenge."\r\n\r\nThe researchers found that while both disorders show dysfunction in the prefrontal cortex relative to healthy controls, the ADHD group had the most severe dysfunction in this important region. The prefrontal cortex controls behavior, such as impulsivity, and executive function, as well as complex cognitive processes such as working memory, attention and language.\r\n\r\nFrom a treatment, learning and intervention perspective, the next step for researchers and clinicians is to figure out how to help patients use their prefrontal cortex, Passarotti said.\r\n\r\nThe researchers also found that while the ADHD group had greater dysfunction in working memory circuits in the brain, the bipolar group had more deficits in regions of the brain involved in emotion-processing and regulation.\r\n\r\nNow that researchers are starting to differentiate between the two disorders at a brain network level, rather than just at a behavioral level, the long-term goal is to develop diagnostic tests based on neurological and behavioral markers of illness that can be used in a clinical setting. Currently patients are diagnosed using clinical measures, questionnaires, behavior scales and interviews with parents.\r\n\r\nIt is difficult for physicians to differentiate between the two disorders behaviorally, which may lead to an incorrect diagnosis and wrong medications, a worsening of symptoms, and greater frustration for children and parents, said Passarotti, a researcher in UIC''s Institute for Juvenile Research.\r\n\r\nShe said that while researchers still do not understand all of the neurological deficits that characterize ADHD and PBD profiles, they know that drug treatment that works for ADHD does not work for bipolar disorder.\r\n\r\n"In fact, if you give a stimulant to a child with bipolar disorder, they become more manic, and this makes their illness even worse, whereas if you give the mood-regulation medicine commonly prescribed for PBD to a child with ADHD, they still show a lot of attention deficits and do not show any improvement," Passarotti said.\r\n\r\n"Our hope is that by better differentiating between these two severe developmental illnesses, we can help develop more accurate diagnoses and more targeted treatments for PBD and ADHD."\r\n\r\nCo-authors of the study are Dr. Mani Pavuluri, the Berger-Colbeth Term Chair in Child Psychiatry and director of the Pediatric Brain Research and Intervention Center at UIC, and John Sweeney, professor of psychiatry, neurology and psychology and director of the Center for Cognitive Medicine at UIC.', 'Brain Imaging Identifies Differences in Childhood Bipolar Disorder, ADHD', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-08-19 01:20:48', '2015-08-19 01:20:48', '', 61, 'http://localhost/drpp/61-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(63, 1, '2015-08-19 01:22:09', '2015-08-19 01:22:09', 'Written Karen Mallet (Georgetown University Medical Center)\r\n\r\nNeuroscientists at Georgetown University Medical Center (GUMC) say brain scans show that a gene nominally linked to attention deficit hyperactivity disorder (ADHD) leads to increased interference by brain regions associated with mind wandering during mental tasks. Presented at the annual meeting of the Society for Neuroscience, these researchers believe their findings are the first to show, through brain scanning, the differences in brain network relationships between individuals with this particular form of gene and others with a different form.\r\n\r\n"Our goal is to narrow down the function of candidate genes associated with ADHD, and in this study, we find this gene is tied to competition between brain networks. This could lead to increased inattention, but it likely has nothing to do with hyperactivity," says the study''s lead author, Evan Gordon, a doctoral candidate in the Interdisciplinary Program in Neuroscience at GUMC. "This is just one gene, and it does not cause ADHD but likely contributes to it. The disorder is believed to be due to a myriad of genetic factors."\r\n\r\nThe gene in question is DAT1; its protein produces the dopamine transporter that helps regulate dopamine transmission between brain cells. The DAT1 gene comes in two alleles, or forms - DAT1 10 and DAT1 9. People who inherit two 10 alleles (10/10) are said to be at greater risk for developing ADHD than people who inherit 10/9 alleles. Rarely does someone inherit two 9 alleles, according to Gordon; he says, in fact, that the10 allele is slightly more common than the 9 allele.\r\n\r\nThe biological significance of inheriting a DAT1 10 allele is that the brain produces excess quantities of dopamine transporters, and that results in less dopamine signaling between neurons. Too many dopamine transporters quickly scoop up dopamine released by neurons, leaving fewer available to actually reach other neurons and pass on a signal. If there are fewer transporters, more dopamine stays in the synapse between neurons, triggering a reaction.\r\n\r\nThat is important, Gordon says, because dopamine is important for "gating" the transfer of information between brain regions - that is, allowing or preventing new information to come in. "The belief is that dopamine helps teach certain brain regions how and when to gate, and that 10/10 carriers are not gating as quickly or effectively as is possible."\r\n\r\nThat is exactly what the researchers found when they used functional MRI (fMRI) on a group of 38 participants. Half of the groups were 10/10 carriers and half were 10/9 carriers, and none of the participants were diagnosed with ADHD.\r\n\r\nThe researchers investigated the activity in two areas of the brain, the default mode network (DMN), which is associated with mind wandering or daydreaming and is active when the mind is at rest, and task-positive networks (TPNs), which are active during problem solving and other cognitive work. In this study, participants were asked to remember letters they saw on a screen inside the fMRI machine, and to recall them, thus activating TPNs.\r\n\r\nScanning demonstrated that in 10/10 carriers, the mind wandering areas tended to communicate with regions performing memory tasks more strongly than in did in 10/9 carriers. "Dopamine in the 10/10 carriers was not doing a good enough job in preventing the mind wandering regions from interfering with memory performance regions, resulting in less efficient cognition," Gordon says.\r\n\r\nThey also found no differences between genotype when the participants were at rest after their memory tasks. "That tells us that the DAT1 genotype affects gating only when release of dopamine is high, such as during a memory task, and that less dopamine signaling leads to increased inattention," he says. "Being a DAT1 10/10 carrier does not mean a person has ADHD; it is not a diagnostic marker," Gordon says. "It has been viewed as a contributing factor, and now we know one reason why." The study was funded by the National Institute of Mental Health.', 'Gene Linked to ADHD Allows Memory Task to Be Interrupted By Brain Regions Tied to Daydreaming', '', 'publish', 'open', 'open', '', 'gene-linked-to-adhd-allows-memory-task-to-be-interrupted-by-brain-regions-tied-to-daydreaming', '', '', '2015-08-19 01:22:09', '2015-08-19 01:22:09', '', 0, 'http://localhost/drpp/?p=63', 0, 'post', '', 0),
(64, 1, '2015-08-19 01:22:09', '2015-08-19 01:22:09', 'Written Karen Mallet (Georgetown University Medical Center)\r\n\r\nNeuroscientists at Georgetown University Medical Center (GUMC) say brain scans show that a gene nominally linked to attention deficit hyperactivity disorder (ADHD) leads to increased interference by brain regions associated with mind wandering during mental tasks. Presented at the annual meeting of the Society for Neuroscience, these researchers believe their findings are the first to show, through brain scanning, the differences in brain network relationships between individuals with this particular form of gene and others with a different form.\r\n\r\n"Our goal is to narrow down the function of candidate genes associated with ADHD, and in this study, we find this gene is tied to competition between brain networks. This could lead to increased inattention, but it likely has nothing to do with hyperactivity," says the study''s lead author, Evan Gordon, a doctoral candidate in the Interdisciplinary Program in Neuroscience at GUMC. "This is just one gene, and it does not cause ADHD but likely contributes to it. The disorder is believed to be due to a myriad of genetic factors."\r\n\r\nThe gene in question is DAT1; its protein produces the dopamine transporter that helps regulate dopamine transmission between brain cells. The DAT1 gene comes in two alleles, or forms - DAT1 10 and DAT1 9. People who inherit two 10 alleles (10/10) are said to be at greater risk for developing ADHD than people who inherit 10/9 alleles. Rarely does someone inherit two 9 alleles, according to Gordon; he says, in fact, that the10 allele is slightly more common than the 9 allele.\r\n\r\nThe biological significance of inheriting a DAT1 10 allele is that the brain produces excess quantities of dopamine transporters, and that results in less dopamine signaling between neurons. Too many dopamine transporters quickly scoop up dopamine released by neurons, leaving fewer available to actually reach other neurons and pass on a signal. If there are fewer transporters, more dopamine stays in the synapse between neurons, triggering a reaction.\r\n\r\nThat is important, Gordon says, because dopamine is important for "gating" the transfer of information between brain regions - that is, allowing or preventing new information to come in. "The belief is that dopamine helps teach certain brain regions how and when to gate, and that 10/10 carriers are not gating as quickly or effectively as is possible."\r\n\r\nThat is exactly what the researchers found when they used functional MRI (fMRI) on a group of 38 participants. Half of the groups were 10/10 carriers and half were 10/9 carriers, and none of the participants were diagnosed with ADHD.\r\n\r\nThe researchers investigated the activity in two areas of the brain, the default mode network (DMN), which is associated with mind wandering or daydreaming and is active when the mind is at rest, and task-positive networks (TPNs), which are active during problem solving and other cognitive work. In this study, participants were asked to remember letters they saw on a screen inside the fMRI machine, and to recall them, thus activating TPNs.\r\n\r\nScanning demonstrated that in 10/10 carriers, the mind wandering areas tended to communicate with regions performing memory tasks more strongly than in did in 10/9 carriers. "Dopamine in the 10/10 carriers was not doing a good enough job in preventing the mind wandering regions from interfering with memory performance regions, resulting in less efficient cognition," Gordon says.\r\n\r\nThey also found no differences between genotype when the participants were at rest after their memory tasks. "That tells us that the DAT1 genotype affects gating only when release of dopamine is high, such as during a memory task, and that less dopamine signaling leads to increased inattention," he says. "Being a DAT1 10/10 carrier does not mean a person has ADHD; it is not a diagnostic marker," Gordon says. "It has been viewed as a contributing factor, and now we know one reason why." The study was funded by the National Institute of Mental Health.', 'Gene Linked to ADHD Allows Memory Task to Be Interrupted By Brain Regions Tied to Daydreaming', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-08-19 01:22:09', '2015-08-19 01:22:09', '', 63, 'http://localhost/drpp/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-08-19 01:22:45', '2015-08-19 01:22:45', 'Written by Wendy Leopold - Northwestern University\r\n\r\nScientists long have recognized that many perceptual skills important for language comprehension and reading can be enhanced through practice. Now research from Northwestern University suggests a new way of training that could reduce by at least half the effort previously thought necessary to make learning gains. The research also may be the first behavioral demonstration of metaplasticity -- the idea that experiences that on their own do not generate learning can influence how effective later experiences are at generating learning.\r\n\r\n"Prior to our work much of the research into perceptual learning could be summed up as ''no pain, no gain,''" says Beverly Wright, first author of a study in the Sept. 22 Journal of Neuroscience and communication sciences and disorders professor at Northwestern. "Our work suggests that you can have the same gain in learning with substantially less pain."\r\n\r\nThe findings could lead to less effortful therapies for children who suffer from language learning impairments involving perceptual skills. And they hold potential for members of the general population with an interest in enhancing perceptual abilities -- for musicians seeking to sharpen their sensitivity to sound, people studying a second language or physicians learning to tell the difference between regular and irregular heartbeats.\r\n\r\nPrevious research showed that individuals become better at many perceptual tasks by performing them again and again, typically making the training tedious and long in length. It also showed that mere exposure to the perceptual stimuli used during practice on these tasks does not generate learning.\r\n\r\nBut the Northwestern researchers found that robust learning occurred when they combined periods of practice that alone were too brief to cause learning with periods of mere exposure to perceptual stimuli. "To our surprise, we found that two ''wrongs'' actually can make a right when it comes to perceptual learning," says Wright.\r\n\r\nWhat''s more, they found that the combination led to perceptual learning gains that were equal to the learning gains made by participants who performed twice as much continuous task training (training which by nature of its repetition and length often is onerous).\r\n\r\n"It''s as though once you get your system revved up by practicing a particular skill, the brain acts as though you are still engaged in the task when you are not and learning still takes place," says Wright, who teaches in Northwestern''s School of Communication.\r\n\r\nWright and Northwestern researchers Andrew Sabin, Yuxuan Zhang, Nicole Marrone and Matthew Fitzgerald worked with four groups of adult participants aged 18 to 30 years with normal hearing and no previous experience with psychoacoustic tasks. Their goal was to improve participants'' ability to discriminate between the pitches of different tones.\r\n\r\nThe researchers initially determined the smallest difference in pitch that participants could discriminate from a 1,000 Hertz standard tone. They then divided the participants into four groups, each of which went through a different training regimen.Participants in one group were trained for 20 minutes per day for a week on the pitch-discrimination task. Over and over again, they were asked to tell the difference between the 1,000 Hertz tone and a lower tone but showed no improvement.\r\n\r\nOf greatest importance for the study, participants in a second group showed significant learning gains when the same amount of target task training (20 minutes) was combined with 20 minutes of work on an unrelated puzzle while repeatedly presenting a 1,000 Hertz tone through headphones. Impressively, the learning of the second group also was comparable to that of a third group that for a week practiced the pitch-discrimination target task for 40 minutes per day. A fourth group of participants repeatedly exposed to a 1,000 Hertz tone for 40 minutes per day while performing an unrelated task showed no learning gains.\r\n\r\nFurther experiments revealed that the order of presentation -- whether the 20 minutes of target task training occurred before or after the 20 minutes of the related task - did not affect learning. Each scenario yielded equal pitch discrimination learning gains.\r\n\r\nIn addition, the researchers discovered that the effectiveness of the combination of the target task training and of the unrelated training plus stimuli presentation began declining if the two tasks were separated by more than 15 minutes. Pitch discrimination learning - or evidence of metaplasticity -- disappeared completely if the sessions were separated by four hours.\r\n\r\nThe article in the Journal of Neuroscience (Sept. 22, 2010) is titled "Enhancing Perceptual Learning by Combining Practice with Additional Sensory Stimulation." The research is supported by the National Institute on Deafness and Other Communication Disorders-National Institutes of Health.', 'Less Pain for Learning Gain', '', 'publish', 'open', 'open', '', 'less-pain-for-learning-gain', '', '', '2015-08-19 01:22:45', '2015-08-19 01:22:45', '', 0, 'http://localhost/drpp/?p=65', 0, 'post', '', 0),
(66, 1, '2015-08-19 01:22:45', '2015-08-19 01:22:45', 'Written by Wendy Leopold - Northwestern University\r\n\r\nScientists long have recognized that many perceptual skills important for language comprehension and reading can be enhanced through practice. Now research from Northwestern University suggests a new way of training that could reduce by at least half the effort previously thought necessary to make learning gains. The research also may be the first behavioral demonstration of metaplasticity -- the idea that experiences that on their own do not generate learning can influence how effective later experiences are at generating learning.\r\n\r\n"Prior to our work much of the research into perceptual learning could be summed up as ''no pain, no gain,''" says Beverly Wright, first author of a study in the Sept. 22 Journal of Neuroscience and communication sciences and disorders professor at Northwestern. "Our work suggests that you can have the same gain in learning with substantially less pain."\r\n\r\nThe findings could lead to less effortful therapies for children who suffer from language learning impairments involving perceptual skills. And they hold potential for members of the general population with an interest in enhancing perceptual abilities -- for musicians seeking to sharpen their sensitivity to sound, people studying a second language or physicians learning to tell the difference between regular and irregular heartbeats.\r\n\r\nPrevious research showed that individuals become better at many perceptual tasks by performing them again and again, typically making the training tedious and long in length. It also showed that mere exposure to the perceptual stimuli used during practice on these tasks does not generate learning.\r\n\r\nBut the Northwestern researchers found that robust learning occurred when they combined periods of practice that alone were too brief to cause learning with periods of mere exposure to perceptual stimuli. "To our surprise, we found that two ''wrongs'' actually can make a right when it comes to perceptual learning," says Wright.\r\n\r\nWhat''s more, they found that the combination led to perceptual learning gains that were equal to the learning gains made by participants who performed twice as much continuous task training (training which by nature of its repetition and length often is onerous).\r\n\r\n"It''s as though once you get your system revved up by practicing a particular skill, the brain acts as though you are still engaged in the task when you are not and learning still takes place," says Wright, who teaches in Northwestern''s School of Communication.\r\n\r\nWright and Northwestern researchers Andrew Sabin, Yuxuan Zhang, Nicole Marrone and Matthew Fitzgerald worked with four groups of adult participants aged 18 to 30 years with normal hearing and no previous experience with psychoacoustic tasks. Their goal was to improve participants'' ability to discriminate between the pitches of different tones.\r\n\r\nThe researchers initially determined the smallest difference in pitch that participants could discriminate from a 1,000 Hertz standard tone. They then divided the participants into four groups, each of which went through a different training regimen.Participants in one group were trained for 20 minutes per day for a week on the pitch-discrimination task. Over and over again, they were asked to tell the difference between the 1,000 Hertz tone and a lower tone but showed no improvement.\r\n\r\nOf greatest importance for the study, participants in a second group showed significant learning gains when the same amount of target task training (20 minutes) was combined with 20 minutes of work on an unrelated puzzle while repeatedly presenting a 1,000 Hertz tone through headphones. Impressively, the learning of the second group also was comparable to that of a third group that for a week practiced the pitch-discrimination target task for 40 minutes per day. A fourth group of participants repeatedly exposed to a 1,000 Hertz tone for 40 minutes per day while performing an unrelated task showed no learning gains.\r\n\r\nFurther experiments revealed that the order of presentation -- whether the 20 minutes of target task training occurred before or after the 20 minutes of the related task - did not affect learning. Each scenario yielded equal pitch discrimination learning gains.\r\n\r\nIn addition, the researchers discovered that the effectiveness of the combination of the target task training and of the unrelated training plus stimuli presentation began declining if the two tasks were separated by more than 15 minutes. Pitch discrimination learning - or evidence of metaplasticity -- disappeared completely if the sessions were separated by four hours.\r\n\r\nThe article in the Journal of Neuroscience (Sept. 22, 2010) is titled "Enhancing Perceptual Learning by Combining Practice with Additional Sensory Stimulation." The research is supported by the National Institute on Deafness and Other Communication Disorders-National Institutes of Health.', 'Less Pain for Learning Gain', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-08-19 01:22:45', '2015-08-19 01:22:45', '', 65, 'http://localhost/drpp/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-08-19 01:24:47', '2015-08-19 01:24:47', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2015-08-19 01:24:47', '2015-08-19 01:24:47', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=67', 0, 'charity-gallery', '', 0),
(68, 1, '2015-08-19 01:25:32', '2015-08-19 01:25:32', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-2', '', '', '2015-08-19 01:25:32', '2015-08-19 01:25:32', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=68', 0, 'charity-gallery', '', 0),
(69, 1, '2015-08-19 01:26:21', '2015-08-19 01:26:21', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-3', '', '', '2015-08-19 03:21:32', '2015-08-19 03:21:32', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=69', 0, 'charity-gallery', '', 0),
(70, 1, '2015-08-19 01:29:15', '2015-08-19 01:29:15', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-4', '', '', '2015-08-19 01:29:15', '2015-08-19 01:29:15', '', 0, 'http://localhost/drpp/?post_type=charity-gallery&#038;p=70', 0, 'charity-gallery', '', 0),
(74, 1, '2015-08-19 01:37:07', '2015-08-19 01:37:07', 'Berlatar belakang keinginan untuk berbagi pengalaman dari apa yang kami ketahui dan dapatkan selama ini dalam bidang kelaianan perkembangan dan saraf anak, behavioral (perilaku) anak, pendidikan anak dan juga masalah masalah yang berhubungan dengan minat, bakat dan kreatifitas anak, kami yang tergabung dalam satu tim yang terdiri dari: dokter spesialis saraf anak (pediatic neirologist), dokter spesialis anak, dokter spesialis rehabilitasi medik, dokter spesialis bedah ortopedi anak, dokter spesialis gizi anak, psikolog perkembangan anak membuka portal sebagai media konsultasi online tentang kelainan perkembangan dan saraf anak. Kami yang tergabung dalam satu kesempatan, juga ingin berbagi pengetahuan dari apa yang kami dapatkan selama ini buat para orang tua, guru, profesional lain yang berkecimpung dalam masalah perkembangan anak, kelaianan perkembangan dan saraf anak dan juga masalah masalah yang berhubungan dengan pendidikan anak.\r\n\r\nTim kami mengelola <b>3 </b><b>tempat</b> <b>terapi</b><b>: (Child Development Center) </b><b>Rumah</b> <b>Sakit</b><b> Santosa Bandung International Hospital, Indigrow Child Development Center, </b><b>Kidz</b> <b>Potentia</b><b>-Child development and dyslexia Center</b>. Selain itu, kami bekerja sama erat dengan beberapa Center kelainan perkembangan anak di luar negeri (Persatuan dyslexia Malaysia, Segawa Neurological Cilinic Tokyo, Dyslexia Association of Singapore) dan melaksanakan berbagai simposium, seminar serta work shop di bidang kelainan Perkembangan dan Saraf anak.\r\n\r\nKonsultasi online yang kami lakukan, terbuka bagi siapa saja yang ingin melakukan komunikasi dengan kami untuk semua hal yang berhubungan dengan perkembangan anak, kelainan perkembangan dan saraf anak. Kami sangat berharap dapat terjalinnya hubungan yang erat antara kami dan semua individu yang mempunyai keseminatan yang sama dibidang perkembangan dan kelaian perkembangan dan saraf anak. Salam perkenalan dari kami.', 'What is The Learning Center?', '', 'publish', 'open', 'closed', '', 'what-is-the-learning-center', '', '', '2015-08-19 01:37:07', '2015-08-19 01:37:07', '', 0, 'http://localhost/drpp/?post_type=charity_our_mission&#038;p=74', 0, 'charity_our_mission', '', 0),
(77, 1, '2015-08-19 01:52:23', '2015-08-19 01:52:23', 'E-consultation menyediakan fitur konsultasi kapanpun di manapun tentang permasalahan perkembangan anak. Ditangani oleh ahli neurodevelopmental disorders, termasuk konsultan neuropediatric, dokter anak, dan psikolog, E-consultation memberikan fasilitas konsultasi terbaik untuk menyelesaikan permasalahan pada anak. Ahli kami menjamin akan merespon konsultasi anda dengan cepat, tidak lebih dari 2x24 jam.', 'E-Consultation', '', 'publish', 'open', 'closed', '', 'consultation', '', '', '2015-10-09 07:33:04', '2015-10-09 07:33:04', '', 0, 'http://localhost/drpp/?post_type=charity-our-works&#038;p=77', 0, 'charity-our-works', '', 0),
(78, 1, '2015-08-19 01:52:42', '2015-08-19 01:52:42', 'Online Symposium menyediakan tempat untuk belajar tentang neurodevelopmental disorders dengan ahli terbaik pada bidangnya. Anda dapat mengunduh materi pembelajaran dan melakukan diskusi dengan ahli dalam bidang tertentu. Selanjutnya, anda pun dapat mengikuti offline hands-on untuk meningkatkan dan memperluas pengetahuan anda tentang materi yang dipelajari.', 'Symposium', '', 'publish', 'open', 'closed', '', 'symposium', '', '', '2015-10-09 07:33:20', '2015-10-09 07:33:20', '', 0, 'http://localhost/drpp/?post_type=charity-our-works&#038;p=78', 0, 'charity-our-works', '', 0),
(80, 1, '2015-08-19 01:55:46', '2015-08-19 01:55:46', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533858156{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534043825{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533869114{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534056914{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533886339{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534089852{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533908528{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534109307{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533922304{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534117823{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row]', 'Our Expert', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2015-08-19 01:55:46', '2015-08-19 01:55:46', '', 45, 'http://localhost/drpp/45-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2015-08-19 02:54:41', '2015-08-19 02:54:41', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.', 'Lorem Ipsum', '', 'publish', 'open', 'closed', '', 'lorem-ipsum', '', '', '2015-08-27 06:23:06', '2015-08-27 06:23:06', '', 0, 'http://localhost/drpp/?post_type=event&#038;p=81', 0, 'event', '', 0),
(82, 1, '2015-08-19 02:54:43', '2015-08-19 02:54:43', '', 'Grha Sabha Pramana', '', 'publish', 'open', 'closed', '', 'grha-sabha-pramana', '', '', '2015-08-19 02:54:43', '2015-08-19 02:54:43', '', 0, 'http://localhost/drpp/locations/grha-sabha-pramana/', 0, 'location', '', 0),
(83, 1, '2015-08-19 02:56:08', '2015-08-19 02:56:08', '', 'Events', 'CONTENTS', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2015-08-19 02:56:08', '2015-08-19 02:56:08', '', 3, 'http://localhost/drpp/3-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2015-08-19 03:00:04', '2015-08-19 03:00:04', '', '2 - Foto M. Risqi Utama Saputra', '', 'inherit', 'open', 'closed', '', '2-foto-m-risqi-utama-saputra', '', '', '2015-08-19 03:00:04', '2015-08-19 03:00:04', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/2-Foto-M.-Risqi-Utama-Saputra.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2015-08-19 03:04:14', '2015-08-19 03:04:14', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 'Lorem Ipsum', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-2', '', '', '2015-08-27 06:19:18', '2015-08-27 06:19:18', '', 0, 'http://localhost/drpp/?post_type=event&#038;p=85', 0, 'event', '', 0),
(86, 1, '2015-10-09 07:14:32', '2015-10-09 07:14:32', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\n<ul class="widget-address sep-top-xs">\n	<li>indiGrow Child Development Center Jl. Haruman No. 35 Bandung</li>\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\n</ul>\n[/vc_column_text][/vc_column][/vc_row]', 'Kontak', '', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2015-10-09 07:14:32', '2015-10-09 07:14:32', '', 30, 'http://localhost/drpp/30-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2015-08-19 03:10:16', '2015-08-19 03:10:16', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta</small></li>\r\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]\r\n\r\n<strong>NextIn Indonesia</strong>\r\n\r\n<small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta\r\n</small> +62 823-2960-0100\r\n<i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com\r\n</small> Monday - Friday 10:00 - 17.00', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-08-19 03:10:16', '2015-08-19 03:10:16', '', 30, 'http://localhost/drpp/30-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2015-08-19 03:11:28', '2015-08-19 03:11:28', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta</small></li>\r\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-08-19 03:11:28', '2015-08-19 03:11:28', '', 30, 'http://localhost/drpp/30-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2015-08-19 03:29:23', '2015-08-19 03:29:23', '', '950 x 500 Keunggulan Online Consultation', '', 'inherit', 'open', 'closed', '', '950-x-500-keunggulan-online-consultation', '', '', '2015-08-19 03:29:23', '2015-08-19 03:29:23', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/950-x-500-Keunggulan-Online-Consultation.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2015-08-19 03:29:25', '2015-08-19 03:29:25', '', '950 x 500 Persuasive Question', '', 'inherit', 'open', 'closed', '', '950-x-500-persuasive-question', '', '', '2015-08-19 03:29:25', '2015-08-19 03:29:25', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/950-x-500-Persuasive-Question.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2015-08-19 03:42:43', '2015-08-19 03:42:43', 'dr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n<!--more-->\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.', 'dr. Purboyo Solek, Sp. A(K)', '', 'trash', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2015-09-28 08:09:36', '2015-09-28 08:09:36', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=91', 0, 'charity-causes', '', 0),
(92, 1, '2015-08-19 04:17:15', '2015-08-19 04:17:15', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.<!--more-->\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 'Dr. Risqi Utama', '', 'trash', 'closed', 'closed', '', 'dr-risqi-utama', '', '', '2015-09-28 08:09:35', '2015-09-28 08:09:35', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=92', 0, 'charity-causes', '', 0),
(93, 1, '2015-08-19 04:17:53', '2015-08-19 04:17:53', 'Lorem ipsum dolor sit amet, idque novum nam an. Ne vim nostrud pericula mediocrem, te pri essent audire, ea error iuvaret pro. Utinam graecis imperdiet pro eu, eam eu deleniti quaerendum, elit civibus ei est. Nibh aeque nostrum ei sea, cu vim pericula periculis. Id eum doctus constituto necessitatibus.<!--more-->\r\n\r\nQuo alterum repudiandae ex, magna oratio menandri has ea. At mel graece mentitum petentium, pro dicunt copiosae ad. Id vel noster essent, eu probo tantas vel. Eam ea ceteros offendit, ut vix nisl audire eleifend. Putant denique eu mea, cum an dico latine vituperatoribus. Fabulas vocibus sed te, movet affert explicari cum id.\r\n\r\nNe pri summo saperet, usu eruditi adversarium consectetuer at. Tempor inciderint his ne, ius nominati delicata in. In mea luptatum invidunt. Ut eam mazim tamquam, inimicus accusamus eam ex.\r\n\r\nDico legere intellegebat ad sit, ex homero efficiantur vis. Omnis labitur indoctum quo ut, nulla noster qui et. Ex usu nulla noluisse salutandi. Soleat persius consulatu eum eu.\r\n\r\nCu facilis qualisque intellegat est. Tincidunt adolescens ex vix. Facer luptatum eam eu, aeque reprimique eos in. Sale pericula sed at, aperiri fastidii no eum. Ad quo utinam veritus constituto.', 'Dr. Risqi Utama', '', 'trash', 'closed', 'closed', '', 'dr-risqi-utama-2', '', '', '2015-09-28 08:09:35', '2015-09-28 08:09:35', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=93', 0, 'charity-causes', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(94, 1, '2015-08-19 04:18:40', '2015-08-19 04:18:40', 'dr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n<!--more-->\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.', 'dr. Purboyo Solek, Sp. A(K)', '', 'trash', 'closed', 'closed', '', 'dr-risqi-utama-3', '', '', '2015-09-28 08:09:35', '2015-09-28 08:09:35', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=94', 0, 'charity-causes', '', 0),
(95, 1, '2015-08-19 04:19:10', '2015-08-19 04:19:10', 'dr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007.<!--more-->Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi', 'dr. Kristiantini Dewi, Sp.A', '', 'trash', 'closed', 'closed', '', 'dr-risqi-utama-4', '', '', '2015-09-28 08:09:35', '2015-09-28 08:09:35', '', 0, 'http://localhost/drpp/?post_type=charity-causes&#038;p=95', 0, 'charity-causes', '', 0),
(96, 1, '2015-08-19 05:05:23', '2015-08-19 05:05:23', '', '1650 x 1100 Keunggulan Online Consultation', '', 'inherit', 'open', 'closed', '', '1650-x-1100-keunggulan-online-consultation', '', '', '2015-08-19 05:05:23', '2015-08-19 05:05:23', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/1650-x-1100-Keunggulan-Online-Consultation.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2015-08-19 05:05:28', '2015-08-19 05:05:28', '', '1650 x 1100 Persuasive Question', '', 'inherit', 'open', 'closed', '', '1650-x-1100-persuasive-question', '', '', '2015-08-19 05:05:28', '2015-08-19 05:05:28', '', 0, 'http://localhost/drpp/wp-content/uploads/2015/08/1650-x-1100-Persuasive-Question.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2015-08-21 03:16:26', '2015-08-21 03:16:26', '', 'Laboratorium', '', 'inherit', 'open', 'closed', '', 'laboratorium', '', '', '2015-08-21 03:16:26', '2015-08-21 03:16:26', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Laboratorium.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2015-08-21 03:16:33', '2015-08-21 03:16:33', '', 'Orang Depan Komputer', '', 'inherit', 'open', 'closed', '', 'orang-depan-komputer', '', '', '2015-08-21 03:16:33', '2015-08-21 03:16:33', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Orang-Depan-Komputer.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2015-08-21 04:20:52', '2015-08-21 04:20:52', '', 'Center Laboratorium', '', 'inherit', 'open', 'closed', '', 'center-laboratorium', '', '', '2015-08-21 04:20:52', '2015-08-21 04:20:52', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Laboratorium.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2015-08-21 04:20:57', '2015-08-21 04:20:57', '', 'Center Orang Depan Komputer', '', 'inherit', 'open', 'closed', '', 'center-orang-depan-komputer', '', '', '2015-08-21 04:20:57', '2015-08-21 04:20:57', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Orang-Depan-Komputer.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2015-08-21 04:57:09', '2015-08-21 04:57:09', '', 'Center Dokter dokteran2', '', 'inherit', 'open', 'closed', '', 'center-dokter-dokteran2', '', '', '2015-08-21 04:57:09', '2015-08-21 04:57:09', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Dokter-dokteran2.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2015-08-21 04:57:32', '2015-08-21 04:57:32', '', 'Center Laboratorium1', '', 'inherit', 'open', 'closed', '', 'center-laboratorium1', '', '', '2015-08-21 04:57:32', '2015-08-21 04:57:32', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Laboratorium1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2015-08-21 04:57:36', '2015-08-21 04:57:36', '', 'Center Orang Depan Komputer1', '', 'inherit', 'open', 'closed', '', 'center-orang-depan-komputer1', '', '', '2015-08-21 04:57:36', '2015-08-21 04:57:36', '', 13, 'http://localhost/drpp/wp-content/uploads/2015/08/Center-Orang-Depan-Komputer1.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2015-08-27 03:16:25', '2015-08-27 03:16:25', '', 'Foto Ibuk dan dua anaknya', '', 'inherit', 'open', 'closed', '', 'foto-ibuk-dan-dua-anaknya', '', '', '2015-08-27 03:16:25', '2015-08-27 03:16:25', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/08/Foto-Ibuk-dan-dua-anaknya.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2015-09-28 05:44:46', '2015-09-28 05:44:46', 'dr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia.\n<!--more-->\n\nSelain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\n\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\n\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.', 'dr. Purboyo Solek, Sp. A(K)', '', 'inherit', 'closed', 'closed', '', '91-autosave-v1', '', '', '2015-09-28 05:44:46', '2015-09-28 05:44:46', '', 91, 'http://localhost/drpp4/91-autosave-v1/', 0, 'revision', '', 0),
(120, 1, '2015-09-28 08:05:53', '2015-09-28 08:05:53', 'dr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007.\n\n<!--more-->\n\nBeliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\n\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi', 'dr. Kristiantini Dewi, Sp.A', '', 'inherit', 'closed', 'closed', '', '95-autosave-v1', '', '', '2015-09-28 08:05:53', '2015-09-28 08:05:53', '', 95, 'http://localhost/drpp4/95-autosave-v1/', 0, 'revision', '', 0),
(121, 1, '2015-09-28 06:27:46', '2015-09-28 06:27:46', 'dr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\n<!--more-->\n\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\n\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.', 'dr. Purboyo Solek, Sp. A(K)', '', 'inherit', 'closed', 'closed', '', '94-autosave-v1', '', '', '2015-09-28 06:27:46', '2015-09-28 06:27:46', '', 94, 'http://localhost/drpp4/94-autosave-v1/', 0, 'revision', '', 0),
(123, 1, '2015-09-28 07:59:34', '2015-09-28 07:59:34', '', '12046904_10206674968904359_4913403300117884939_n - Copy', '', 'inherit', 'open', 'closed', '', '12046904_10206674968904359_4913403300117884939_n-copy-2', '', '', '2015-09-28 07:59:34', '2015-09-28 07:59:34', '', 94, 'http://localhost/drpp4/wp-content/uploads/2015/08/12046904_10206674968904359_4913403300117884939_n-Copy1.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2015-09-28 07:59:37', '2015-09-28 07:59:37', '', '12046904_10206674968904359_4913403300117884939_n (1)', '', 'inherit', 'open', 'closed', '', '12046904_10206674968904359_4913403300117884939_n-1-2', '', '', '2015-09-28 07:59:37', '2015-09-28 07:59:37', '', 94, 'http://localhost/drpp4/wp-content/uploads/2015/08/12046904_10206674968904359_4913403300117884939_n-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2015-09-28 08:11:35', '2015-09-28 08:11:35', 'dr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.<!--more-->\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.', 'dr. Purboyo Solek, Sp. A(K)', '', 'publish', 'closed', 'closed', '', 'dr-purboyo-solek-sp-ak', '', '', '2015-09-28 08:33:19', '2015-09-28 08:33:19', '', 0, 'http://localhost/drpp4/?post_type=charity-causes&#038;p=125', 0, 'charity-causes', '', 0),
(126, 1, '2015-09-28 08:12:48', '2015-09-28 08:12:48', 'dr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.<!--more-->\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi', 'Sary Matualesy, M.T., M.Psi.', '', 'publish', 'closed', 'closed', '', 'sary-matualesy', '', '', '2015-10-09 07:11:57', '2015-10-09 07:11:57', '', 0, 'http://localhost/drpp4/?post_type=charity-causes&#038;p=126', 0, 'charity-causes', '', 0),
(127, 1, '2015-09-28 08:19:10', '2015-09-28 08:19:10', 'dr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.<!--more-->\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi', 'dr. Kristiantini Dewi, Sp.A', '', 'publish', 'closed', 'closed', '', 'dr-kristiantini-dewi-sp-a-2', '', '', '2015-09-28 08:32:24', '2015-09-28 08:32:24', '', 0, 'http://localhost/drpp4/?post_type=charity-causes&#038;p=127', 0, 'charity-causes', '', 0),
(128, 1, '2015-09-28 08:20:28', '2015-09-28 08:20:28', 'dr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.<!--more-->\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.', 'Sary Matualesy, M.T., M.Psi.', '', 'publish', 'closed', 'closed', '', 'sary-matualesy-2', '', '', '2015-10-09 07:11:26', '2015-10-09 07:11:26', '', 0, 'http://localhost/drpp4/?post_type=charity-causes&#038;p=128', 0, 'charity-causes', '', 0),
(129, 1, '2015-09-28 08:23:24', '2015-09-28 08:23:24', 'dr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.<!--more-->\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.', 'dr. Purboyo Solek, Sp. A(K)', '', 'publish', 'closed', 'closed', '', 'dr-purboyo-solek-sp-ak-3', '', '', '2015-09-28 08:40:10', '2015-09-28 08:40:10', '', 0, 'http://localhost/drpp4/?post_type=charity-causes&#038;p=129', 0, 'charity-causes', '', 0),
(131, 1, '2015-09-29 06:27:45', '2015-09-29 06:27:45', '<div class="abstract svAbstract " data-etype="ab">\n<div class="title">\n<div class="title">Cortex Volume 73, December 2015, Pages 131–143</div>\n<p id="authorabs00101" class="secHeading">Yafit Gabay<sup>a</sup><sup>, </sup><sup>b</sup><sup>, </sup><sup>, </sup>,Lori L. Holt<sup>a</sup><sup>, </sup><sup>b</sup></p>\n<sup>a</sup> <span id="">Carnegie Mellon University, Department of Psychology, Pittsburgh, PA, USA\n</span><sup>b</sup> <span id="">Center for the Neural Basis of Cognition, Pittsburgh, PA, USA</span>\n<p id="currtAsOf">Received 4 March 2015, Revised 9 June 2015, Accepted 7 August 2015, Available online 21 August 2015</p>\n\n</div>\n<h2 class="title">Abstract</h2>\n<p id="abspara0010">Developmental dyslexia is commonly thought to arise from specific phonologicalimpairments. However, recent evidence is consistent with the possibility that phonological impairments arise as symptoms of an underlying dysfunction of procedural learning. The nature of the link between impaired procedural learning and phonological dysfunction is unresolved. Motivated by the observation that speech processing involves the acquisition of procedural category knowledge, the present study investigates the possibility that procedural learning impairment may affect phonological processing by interfering with the typical course of phonetic category learning. The present study tests this hypothesis while controlling for linguistic experience and possible speech-specific deficits by comparing auditory category learning across artificial, nonlinguistic sounds among dyslexic adults and matched controls in a specialized first-person shooter videogame that has been shown to engage procedural learning. Nonspeech auditory category learning was assessed online via within-game measures and also with a post-training task involving overt categorization of familiar and novel sound exemplars. Each measure reveals that dyslexic participants do not acquire procedural category knowledge as effectively as age- and cognitive-ability matched controls. This difference cannot be explained by differences in perceptual acuity for the sounds. Moreover, poor nonspeech category learning is associated with slower phonological processing. Whereas phonological processing impairments have been emphasized as the cause of dyslexia, the current results suggest that impaired auditory category <em>learning</em>, general in nature and not specific to speech signals, could contribute to phonological deficits in dyslexia with subsequent negative effects on language acquisition and reading. Implications for the neuro-cognitive mechanisms of developmental dyslexia are discussed.</p>\n\n</div>\n<div id="SD_BA1P" class="sgfNoTitleBar sgfNoGadgetBorder svDoNotLink ui-sortable">\n<div id="SD_BA1P_323548" class="containerApplOver sgfVisible">\n<div id="maincontremote_iframe_0" class="containerAppDetails ">Keywords: <span id="">Developmental dyslexia, </span><span id="">Category acquisition, </span><span id="">Procedural learning, </span><span id="">Speech, </span>Videogame training</div>\n</div>\n<div class="containerAppDetails "><a href="http://localhost/drpp4/wp-content/uploads/2015/09/1-s2.0-S0010945215003020-main.pdf">1-s2.0-S0010945215003020-main</a></div>\n</div>', 'Incidental learning of sound categories is impaired in developmental dyslexia', '', 'inherit', 'closed', 'closed', '', '58-autosave-v1', '', '', '2015-09-29 06:27:45', '2015-09-29 06:27:45', '', 58, 'http://localhost/drpp4/58-autosave-v1/', 0, 'revision', '', 0),
(132, 1, '2015-09-29 06:16:44', '2015-09-29 06:16:44', '', 'Microsoft PowerPoint - cortex_1570_GabayHolt - CORTEX - Figures_', '', 'inherit', 'open', 'closed', '', 'microsoft-powerpoint-cortex_1570_gabayholt-cortex-figures_', '', '', '2015-09-29 06:16:44', '2015-09-29 06:16:44', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/09/1-s2.0-S0010945215003020-gr1.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2015-09-29 06:27:32', '2015-09-29 06:27:32', '', '1-s2.0-S0010945215003020-main', '', 'inherit', 'open', 'closed', '', '1-s2-0-s0010945215003020-main', '', '', '2015-09-29 06:27:32', '2015-09-29 06:27:32', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/09/1-s2.0-S0010945215003020-main.pdf', 0, 'attachment', 'application/pdf', 0),
(134, 1, '2015-09-29 09:18:53', '2015-09-29 09:18:53', 'Sally E. Shaywitz, MD, and Bennett A. Shaywitz, MD\n\nIt is a great honor to present this lecture, which honors the extraordinary contributions to scholarship and teaching of Leonard Apt, MD a true renaissance man. For more than four decades, Leonard Apt has contributed both singular discoveries and a continuous stream of research findings that have significantly advanced our knowledge in the field of pediatrics and pediatric ophthalmology. In the words of Leonard Apt, “In academic medicine, I have been free to question and investigate new theories. Years from now, I’d like to be remembered as a doctor who never stopped asking ‘Why?’” <a href="http://localhost/drpp4/wp-content/uploads/2015/09/Shaywitz-Shaywitz-2003-The-science-of-reading-and-dyslexia.pdf">Shaywitz, Shaywitz - 2003 - The science of reading and dyslexia</a>', 'Leonard Apt Lecture: The Science of Reading and Dyslexia', '', 'inherit', 'closed', 'closed', '', '54-autosave-v1', '', '', '2015-09-29 09:18:53', '2015-09-29 09:18:53', '', 54, 'http://localhost/drpp4/54-autosave-v1/', 0, 'revision', '', 0),
(135, 1, '2015-09-29 09:18:43', '2015-09-29 09:18:43', '', 'Shaywitz, Shaywitz - 2003 - The science of reading and dyslexia', '', 'inherit', 'open', 'closed', '', 'shaywitz-shaywitz-2003-the-science-of-reading-and-dyslexia', '', '', '2015-09-29 09:18:43', '2015-09-29 09:18:43', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/09/Shaywitz-Shaywitz-2003-The-science-of-reading-and-dyslexia.pdf', 0, 'attachment', 'application/pdf', 0),
(136, 1, '2015-09-29 09:19:44', '2015-09-29 09:19:44', '', 'main.pdf', '', 'inherit', 'open', 'closed', '', 'main-pdf', '', '', '2015-09-29 09:19:44', '2015-09-29 09:19:44', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/09/main.pdf.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2015-09-29 09:23:45', '2015-09-29 09:23:45', 'Frank R. Vellutino, Jack M. Fletcher, Margaret J. Snowling, and Donna M. Scanlon\r\n\r\nWe summarize some of the most important findings from research evaluating the hypothesized causes of specific reading disability (dyslexia) over the past four decades. After outlining components of reading ability, we discuss manifest causes of reading difficulties, in terms of deficiencies in component reading skills that might lead to such difficulties. The evidence suggests that inadequate facility in word identification due, in most cases, to more basic deficits in alphabetic coding is the basic cause of difficulties in learning to read. We next discuss hypothesized deficiencies in readingrelated cognitive abilities as underlying causes of deficiencies in component reading skills. The evidence in these areas suggests that, in most cases, phonological skills deficiencies associated with phonological coding deficits are the probable causes of the disorder rather than visual, semantic, or syntactic deficits, although reading difficulties in some children may be associated with general language deficits. Hypothesized deficits in general learning abilities (e.g., attention, association learning, cross-modal transfer etc.) and low-level sensory deficits have weak validity as causal factors in specific reading disability. These inferences are, by and large, supported by research evaluating the biological foundations of dyslexia. Finally, evidence is presented in support of the idea that many poor readers are impaired because of inadequate instruction or other experiential factors. This does not mean that biological factors are not relevant, because the brain and environment interact to produce the neural networks that support reading acquisition. We conclude with a discussion of the clinical implications of the research findings, focusing on the need for enhanced instruction.\r\n\r\n<a href="http://localhost/drpp4/wp-content/uploads/2015/09/Vellutino-et-al.-2004-Specific-reading-disability-dyslexia-what-have-we-learned-in-the-past-four-decades.pdf">Download </a>', 'Specific reading disability (dyslexia): what havewe learned in the past four decades?', '', 'publish', 'open', 'closed', '', 'speci%c2%a2c-reading-disability-dyslexia-what-havewe-learned-in-the-past-four-decades', '', '', '2015-09-29 09:24:25', '2015-09-29 09:24:25', '', 0, 'http://localhost/drpp4/?post_type=charity-portfolio&#038;p=137', 0, 'charity-portfolio', '', 0),
(138, 1, '2015-09-29 09:22:55', '2015-09-29 09:22:55', '', 'Vellutino et al. - 2004 - Specific reading disability (dyslexia) what have we learned in the past four decades', '', 'inherit', 'open', 'closed', '', 'vellutino-et-al-2004-specific-reading-disability-dyslexia-what-have-we-learned-in-the-past-four-decades', '', '', '2015-09-29 09:22:55', '2015-09-29 09:22:55', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/09/Vellutino-et-al.-2004-Specific-reading-disability-dyslexia-what-have-we-learned-in-the-past-four-decades.pdf', 0, 'attachment', 'application/pdf', 0),
(139, 1, '2015-09-29 09:23:39', '2015-09-29 09:23:39', '', 'dsyl', '', 'inherit', 'open', 'closed', '', 'dsyl', '', '', '2015-09-29 09:23:39', '2015-09-29 09:23:39', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/09/dsyl.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2015-10-06 07:10:17', '2015-10-06 07:10:17', '', 'Beranda', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-10-06 07:10:17', '2015-10-06 07:10:17', '', 11, 'http://localhost/drpp4/11-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2015-10-06 07:11:20', '2015-10-06 07:11:20', '', 'Apa itu The Learning Center?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-10-06 07:11:20', '2015-10-06 07:11:20', '', 13, 'http://localhost/drpp4/13-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2015-10-06 07:12:45', '2015-10-06 07:12:45', '', 'Kolaborasi', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-10-06 07:12:45', '2015-10-06 07:12:45', '', 28, 'http://localhost/drpp4/28-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2015-10-06 07:13:10', '2015-10-06 07:13:10', '', 'Tentang', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-10-06 07:13:10', '2015-10-06 07:13:10', '', 13, 'http://localhost/drpp4/13-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2015-10-06 07:14:04', '2015-10-06 07:14:04', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li><small>Mergangsan Kidul MG II/1236, RT 70/22, Wirogunan, Mergangsan, Tamansiswa, Yogyakarta</small></li>\r\n	<li><i class="fa fa-phone fa-lg"></i><small> +62 823-2960-0100</small></li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> contact@nextin-indonesia.com</small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Kontak', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-10-06 07:14:04', '2015-10-06 07:14:04', '', 30, 'http://localhost/drpp4/30-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2015-10-06 07:14:15', '2015-10-06 07:14:15', '', 'Kegiatan', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-10-06 07:14:15', '2015-10-06 07:14:15', '', 22, 'http://localhost/drpp4/22-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2015-10-06 07:15:01', '2015-10-06 07:15:01', '', 'kegiatan', 'CONTENTS', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2015-10-06 07:15:01', '2015-10-06 07:15:01', '', 3, 'http://localhost/drpp4/3-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2015-10-06 07:15:21', '2015-10-06 07:15:21', '', 'Events', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-10-06 07:15:21', '2015-10-06 07:15:21', '', 22, 'http://localhost/drpp4/22-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2015-10-06 07:15:31', '2015-10-06 07:15:31', '', 'Kegiatan', 'CONTENTS', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2015-10-06 07:15:31', '2015-10-06 07:15:31', '', 3, 'http://localhost/drpp4/3-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2015-10-06 07:15:44', '2015-10-06 07:15:44', '', 'Galeri', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2015-10-06 07:15:44', '2015-10-06 07:15:44', '', 19, 'http://localhost/drpp4/19-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2015-10-06 07:27:33', '2015-10-06 07:27:33', '', 'Jurnal Penelitian', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-10-06 07:27:33', '2015-10-06 07:27:33', '', 24, 'http://localhost/drpp4/24-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2015-10-06 07:28:42', '2015-10-06 07:28:42', '', 'Jurnal', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-10-06 07:28:42', '2015-10-06 07:28:42', '', 24, 'http://localhost/drpp4/24-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2015-10-06 07:30:59', '2015-10-06 07:30:59', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533858156{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534043825{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533869114{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534056914{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533886339{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534089852{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533878661{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534078501{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_column_text css_animation="left-to-right" css=".vc_custom_1439533908528{margin-right: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Kristiantini Dewi, Sp.A</span></strong></h2>\r\n<span class="profil-jobdesc">Ketua Umum Asosiasi Dyslexia Indonesia</span>\r\n\r\ndr. Kristiantini Dewi SpA menyelesaikan Spesialis Anak (SpA) di Fakultas Kedokteran Universitas Padjajaran tahun 2005. Dan sekarang sebagai dokter spesialis anak di Indigrow Child Development Centre (CDC) sejak 2005 dan Rumah Sakit Santosa Internasional Bandung sejak 2007. Beliau telah menyelesaikan fellow dalam clinical attachment di bidang neuropediatric di Institut Pediatrik Hospital Kuala Lumpur 2007. Dan banyak training berhubungan dengan pertumbuhan dan perkembangan anak berkebutuhan khusus (ABK) yang telah diikuti.\r\n\r\nSelain menjabat Ketua Umum Asosiasi Disleksia Indonesia, beliau juga sebagai koordinator perkembangan Program Layanan Khusus Kelas Disleksia di Indonesia, kelas Autism dan kelas inklusi[/vc_column_text][/vc_column][vc_column width="1/2"][vc_single_image image="68" alignment="center" style="vc_box_circle_2" border_color="grey" img_link_large="" img_link_target="_self" css_animation="right-to-left" img_size="300x300" css=".vc_custom_1439534109307{margin-top: 80px !important;}"][/vc_column][/vc_row][vc_row full_width="" parallax="" parallax_image="" el_id=""][vc_column width="1/2"][vc_single_image image="66" alignment="center" style="vc_box_circle" border_color="grey" img_link_large="" img_link_target="_self" css_animation="left-to-right" img_size="300x300" css=".vc_custom_1439533922304{margin-top: 180px !important;}"][/vc_column][vc_column width="1/2"][vc_column_text css_animation="right-to-left" css=".vc_custom_1439534117823{margin-left: -60px !important;}"]\r\n<h2><strong><span class="profil-name">dr. Purboyo Solek, Sp. A(K)</span></strong></h2>\r\n<span class="profil-jobdesc">Konsultan Saraf Anak, Bagian Ilmu Kesehatan Anak, Fakultas Kedokteran UNPAD.</span>\r\n\r\ndr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.\r\n\r\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\r\n\r\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.[/vc_column_text][/vc_column][/vc_row]', 'Tim Ahli', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2015-10-06 07:30:59', '2015-10-06 07:30:59', '', 45, 'http://localhost/drpp4/45-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2015-10-06 07:31:24', '2015-10-06 07:31:24', '', 'Berita', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2015-10-06 07:31:24', '2015-10-06 07:31:24', '', 17, 'http://localhost/drpp4/17-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2015-10-09 06:06:01', '2015-10-09 06:06:01', '', 'Capture', '', 'inherit', 'open', 'closed', '', 'capture', '', '', '2015-10-09 06:06:01', '2015-10-09 06:06:01', '', 11, 'http://localhost/drpp4/wp-content/uploads/2015/08/Capture.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2015-10-09 06:46:43', '2015-10-09 06:46:43', '', '6842253071_a712473f7d_o', '', 'inherit', 'open', 'closed', '', '6842253071_a712473f7d_o', '', '', '2015-10-09 06:46:43', '2015-10-09 06:46:43', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/10/6842253071_a712473f7d_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2015-10-09 06:46:49', '2015-10-09 06:46:49', '', '9165046672_f12255ccac_z', '', 'inherit', 'open', 'closed', '', '9165046672_f12255ccac_z', '', '', '2015-10-09 06:46:49', '2015-10-09 06:46:49', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/10/9165046672_f12255ccac_z.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2015-10-09 06:46:52', '2015-10-09 06:46:52', '', '19169785441_93f9534163_c', '', 'inherit', 'open', 'closed', '', '19169785441_93f9534163_c', '', '', '2015-10-09 06:46:52', '2015-10-09 06:46:52', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/10/19169785441_93f9534163_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2015-10-09 06:46:54', '2015-10-09 06:46:54', '', '20893407224_5537e61aeb_c', '', 'inherit', 'open', 'closed', '', '20893407224_5537e61aeb_c', '', '', '2015-10-09 06:46:54', '2015-10-09 06:46:54', '', 0, 'http://localhost/drpp4/wp-content/uploads/2015/10/20893407224_5537e61aeb_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2015-10-09 07:11:14', '2015-10-09 07:11:14', '', '12087490_10207535066722846_242040996_n', '', 'inherit', 'open', 'closed', '', '12087490_10207535066722846_242040996_n', '', '', '2015-10-09 07:11:14', '2015-10-09 07:11:14', '', 128, 'http://localhost/drpp4/wp-content/uploads/2015/09/12087490_10207535066722846_242040996_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2015-10-09 07:11:32', '2015-10-09 07:11:32', 'dr. Purboyo Solek SpA (K) merupakan dokter Anak di Bagian Ilmu Kesehatan Anak Sub Neuropediatri RS. Hasan Sadikin (RSHS) - FK UNPAD sejak tahun 1997. Beliau menyelesaikan program konsultan saraf anak pada tahun 2001 di Fakultas Kedokteran Universitas Indonesia. Selain menjadi konsultan saraf anak di RSHS Bandung, beliau juga menjabat sebagai Direktur Medis di Indigrow Child Development Centre, Konsultan Saraf Anak di Child Development Centre - Rumah Sakit Santosa Internasional Bandung dan Dewan Pembina Asosiasi Disleksia Indonesia.<!--more-->\n\nBeliau telah menyelesaikan banyak training/short course (SC), diantaranya SC Diagnostic dan Management of Epilepsy dan EEG di UKM Malaysia 1999 dan 2001. Fellowship Training Program Bidang Developmental Pediatric di University of Philippines Manila tahun 2003. Griffiths mental Developmental Scale Course, National Institute for Health Manila Philipina.\n\nSebagai konsultan saraf anak yang profesional, saat ini beliau telah menjadi narasumber di berbagai simposium berskala nasional dan international khususnya di bidang Anak Berkebutuhan Khsus (ABK). Beliau juga menjadi penanggung jawab perkembangan program Layanan khusus kelas autism dan disleksia. Ketua umum forum international peningkatan kualitas hidup bayi-remaja-manula, serta kontributor di beberapa media radio-televisi dan sekolah-sekolah inklusi.', 'Sary Matualesy, M.T., M.Psi.', '', 'inherit', 'closed', 'closed', '', '128-autosave-v1', '', '', '2015-10-09 07:11:32', '2015-10-09 07:11:32', '', 128, 'http://localhost/drpp4/128-autosave-v1/', 0, 'revision', '', 0),
(163, 1, '2015-10-09 07:14:49', '2015-10-09 07:14:49', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>NextIn Indonesia</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li>indiGrow Child Development Center Jl. Haruman No. 35 Bandung</li>\r\n	<li><i class="fa fa-phone fa-lg"></i>(022) 7303244</li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> <a href="mailto:indigrow1@yahoo.com">indigrow1@yahoo.com</a></small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Kontak', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-10-09 07:14:49', '2015-10-09 07:14:49', '', 30, 'http://localhost/drpp4/30-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(164, 1, '2015-10-09 07:15:11', '2015-10-09 07:15:11', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>The Learning Center</strong>\r\n<ul class="widget-address sep-top-xs">\r\n	<li>indiGrow Child Development Center Jl. Haruman No. 35 Bandung</li>\r\n	<li><i class="fa fa-phone fa-lg"></i>(022) 7303244</li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> <a href="mailto:indigrow1@yahoo.com">indigrow1@yahoo.com</a></small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Kontak', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-10-09 07:15:11', '2015-10-09 07:15:11', '', 30, 'http://localhost/drpp4/30-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2015-10-09 07:15:53', '2015-10-09 07:15:53', '[vc_row full_width="" parallax="" parallax_image=""][vc_column width="1/1"][vc_column_text]<strong>The Learning Center</strong>\r\n<ul>\r\n	<li>indiGrow Child Development Center Jl. Haruman No. 35 Bandung<i class="fa fa-phone fa-lg"></i></li>\r\n	<li>(022) 7303244</li>\r\n	<li><i class="fa fa-envelope fa-lg"></i><small> <a href="mailto:indigrow1@yahoo.com">indigrow1@yahoo.com</a></small></li>\r\n	<li><i class="fa fa-clock-o fa-lg"></i><small> Monday - Friday 10:00 - 17.00</small></li>\r\n</ul>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Kontak', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-10-09 07:15:53', '2015-10-09 07:15:53', '', 30, 'http://localhost/drpp4/30-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2015-10-09 07:22:10', '2015-10-09 07:22:10', '', 'Open Discussion 3 - Pendidikan Bagi Anak Autis', '', 'publish', 'open', 'closed', '', 'open-discussion-3-pendidikan-bagi-anak-autis', '', '', '2015-10-09 07:22:10', '2015-10-09 07:22:10', '', 0, 'http://localhost/drpp4/?post_type=event&#038;p=167', 0, 'event', '', 0),
(168, 1, '2015-10-09 07:22:01', '2015-10-09 07:22:01', '', '10526124_10206733686612265_4682536487427351894_n', '', 'inherit', 'open', 'closed', '', '10526124_10206733686612265_4682536487427351894_n', '', '', '2015-10-09 07:22:01', '2015-10-09 07:22:01', '', 167, 'http://localhost/drpp4/wp-content/uploads/2015/10/10526124_10206733686612265_4682536487427351894_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2015-10-09 07:22:10', '2015-10-09 07:22:10', '', 'RS Melinda 2, Lantai 6', '', 'publish', 'open', 'closed', '', 'rs-melinda-2-lantai-6', '', '', '2015-10-09 07:22:10', '2015-10-09 07:22:10', '', 0, 'http://localhost/drpp4/locations/rs-melinda-2-lantai-6/', 0, 'location', '', 0),
(170, 1, '2015-10-09 07:24:02', '0000-00-00 00:00:00', '', 'Two Weeks Intensive Training on Children With Special Needs', '', 'draft', 'open', 'closed', '', '', '', '', '2015-10-09 07:24:02', '2015-10-09 07:24:02', '', 0, 'http://localhost/drpp4/?post_type=event&#038;p=170', 0, 'event', '', 0),
(171, 1, '2015-10-09 07:30:07', '2015-10-09 07:30:07', '', 'Two Weeks Intensive Training on Children With Special Needs', '', 'publish', 'open', 'closed', '', 'two-weeks-intensive-training-on-children-with-special-needs', '', '', '2015-10-09 07:30:07', '2015-10-09 07:30:07', '', 0, 'http://localhost/drpp4/?post_type=event&#038;p=171', 0, 'event', '', 0),
(172, 1, '2015-10-09 07:29:22', '2015-10-09 07:29:22', '', '12115423_10206715471836907_7226119186921531650_n', '', 'inherit', 'open', 'closed', '', '12115423_10206715471836907_7226119186921531650_n', '', '', '2015-10-09 07:29:22', '2015-10-09 07:29:22', '', 171, 'http://localhost/drpp4/wp-content/uploads/2015/10/12115423_10206715471836907_7226119186921531650_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2015-10-09 07:30:08', '2015-10-09 07:30:08', '', 'RS Melinda 2, Lantai 6', '', 'publish', 'open', 'closed', '', 'rs-melinda-2-lantai-6-2', '', '', '2015-10-09 07:30:08', '2015-10-09 07:30:08', '', 0, 'http://localhost/drpp4/locations/rs-melinda-2-lantai-6-2/', 0, 'location', '', 0),
(174, 1, '2015-10-09 07:44:38', '2015-10-09 07:44:38', 'IndiGrow hadir sebagai partner orang tua dan sekolah dalam mengembangkan anak mencapai potensinya. IndiGrow membantu menangani masalah perkembangan anak secara terpadu dengan tim ahli perkembangan anak dari berbagai disiplin ilmu: Dokter spesialis anak &amp; konsultan syaraf anak, dokter rehabilitasi medik, psikolog, terapis perilaku, terapis okupasi dan sensori integrasi, terapi wicara serta fisoterapi.\n<h2>Pemeriksaan dan Assesment</h2>\n<ul>\n	<li>Konsultasi dan pemeriksaan tumbuh kembang dan neurologi anak.</li>\n	<li>Konsultasi dan pemeriksaan psikologi, meliputi: tes potensi/intelegensi, tes kepribadian, tes kematangan sekolah, tes minat dan bakat.</li>\n	<li>Pemeriksaan tim (Dokter spesialis anak &amp; konsultan syaraf anak + psikolog/terapis) Khusus untuk anak dengan kesuitan belajar (disleksia, diskalkulia, disgrafia, autis, asperger, PDD-NOS dan ADD/ADHD.</li>\n</ul>\n<h2>Terapi dan Stimulasi</h2>\n<ul>\n	<li>Terapi perilaku</li>\n	<li>Terapi wicara</li>\n	<li>Terapi okupasi</li>\n	<li>Terapi sensori integrasi</li>\n	<li>Fisioterapi</li>\n	<li>Remdial terapi/paedagogi</li>\n	<li>Home program untuk menstimulasi perkembangan anak di rumah</li>\n</ul>\n<h2>Parent Education and Support Group</h2>\n<ul>\n	<li>Evaluasi perkembangan anak secara berkala</li>\n	<li>Family Gathering</li>\n	<li>Seminar dan pelatihan untuk orang tua</li>\n</ul>\nFasilitas\n\nindiGrow menyediakan tempat yang nyaman, aman dan menyenangkan serta dilengkapi dengan fasilitas:\n\nRuang individual dan group therapy\n\nRuang trampoline, Gym, dan taman senori\n\nRuang konsultasi dokter dan psikolog\n\nBerbagai alat dan mainan edukatif yang mendukung kegiatan terapi\n\nIngin berkolaborasi penelitian dengan kami?\n\nHubungi kami di: Jl. Haruman No. 35 Bandung Telp. (022) 7303244 e-mail: indigrow1@yahoo.com', 'Kolaborasi', '', 'inherit', 'closed', 'closed', '', '28-autosave-v1', '', '', '2015-10-09 07:44:38', '2015-10-09 07:44:38', '', 28, 'http://localhost/drpp4/28-autosave-v1/', 0, 'revision', '', 0),
(175, 1, '2015-10-09 07:44:53', '2015-10-09 07:44:53', 'IndiGrow hadir sebagai partner orang tua dan sekolah dalam mengembangkan anak mencapai potensinya. IndiGrow membantu menangani masalah perkembangan anak secara terpadu dengan tim ahli perkembangan anak dari berbagai disiplin ilmu: Dokter spesialis anak &amp; konsultan syaraf anak, dokter rehabilitasi medik, psikolog, terapis perilaku, terapis okupasi dan sensori integrasi, terapi wicara serta fisoterapi.\r\n<h2>Pemeriksaan dan Assesment</h2>\r\n<ul>\r\n	<li>Konsultasi dan pemeriksaan tumbuh kembang dan neurologi anak.</li>\r\n	<li>Konsultasi dan pemeriksaan psikologi, meliputi: tes potensi/intelegensi, tes kepribadian, tes kematangan sekolah, tes minat dan bakat.</li>\r\n	<li>Pemeriksaan tim (Dokter spesialis anak &amp; konsultan syaraf anak + psikolog/terapis) Khusus untuk anak dengan kesuitan belajar (disleksia, diskalkulia, disgrafia, autis, asperger, PDD-NOS dan ADD/ADHD.</li>\r\n</ul>\r\n<h2>Terapi dan Stimulasi</h2>\r\n<ul>\r\n	<li>Terapi perilaku</li>\r\n	<li>Terapi wicara</li>\r\n	<li>Terapi okupasi</li>\r\n	<li>Terapi sensori integrasi</li>\r\n	<li>Fisioterapi</li>\r\n	<li>Remdial terapi/paedagogi</li>\r\n	<li>Home program untuk menstimulasi perkembangan anak di rumah</li>\r\n</ul>\r\n<h2>Parent Education and Support Group</h2>\r\n<ul>\r\n	<li>Evaluasi perkembangan anak secara berkala</li>\r\n	<li>Family Gathering</li>\r\n	<li>Seminar dan pelatihan untuk orang tua</li>\r\n</ul>\r\n<h2>Fasilitas</h2>\r\nindiGrow menyediakan tempat yang nyaman, aman dan menyenangkan serta dilengkapi dengan fasilitas:\r\n<ul>\r\n	<li>Ruang individual dan group therapy</li>\r\n	<li>Ruang trampoline, Gym, dan taman senori</li>\r\n	<li>Ruang konsultasi dokter dan psikolog</li>\r\n	<li>Berbagai alat dan mainan edukatif yang mendukung kegiatan terapi</li>\r\n</ul>\r\n<h2>Ingin berkolaborasi penelitian dengan kami?</h2>\r\nHubungi kami di: Jl. Haruman No. 35 Bandung Telp. (022) 7303244 e-mail: indigrow1@yahoo.com', 'Kolaborasi', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-10-09 07:44:53', '2015-10-09 07:44:53', '', 28, 'http://localhost/drpp4/28-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2015-10-14 13:14:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-10-14 13:14:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/drpp4/?p=176', 0, 'post', '', 0),
(178, 1, '2015-10-14 14:17:14', '2015-10-14 14:17:14', '', 'Login/Daftar', '', 'publish', 'closed', 'closed', '', 'logindaftar', '', '', '2015-10-14 14:20:51', '2015-10-14 14:20:51', '', 0, 'http://localhost/drpp4/?p=178', 13, 'nav_menu_item', '', 0),
(179, 1, '2015-10-14 14:19:11', '2015-10-14 14:19:11', '', 'Layanan', '', 'publish', 'closed', 'closed', '', 'layanan', '', '', '2015-10-14 14:20:50', '2015-10-14 14:20:50', '', 0, 'http://localhost/drpp4/?p=179', 6, 'nav_menu_item', '', 0),
(180, 1, '2015-10-14 14:19:11', '2015-10-14 14:19:11', '', 'Konsultasi Online', '', 'publish', 'closed', 'closed', '', 'konsultasi-online', '', '', '2015-10-14 14:20:50', '2015-10-14 14:20:50', '', 0, 'http://localhost/drpp4/?p=180', 7, 'nav_menu_item', '', 0),
(181, 1, '2015-10-14 14:19:12', '2015-10-14 14:19:12', '', 'Simposium Online', '', 'publish', 'closed', 'closed', '', 'simposium-online', '', '', '2015-10-14 14:20:51', '2015-10-14 14:20:51', '', 0, 'http://localhost/drpp4/?p=181', 8, 'nav_menu_item', '', 0),
(182, 1, '2015-10-15 06:15:10', '2015-10-15 06:15:10', '', 'Jurnal', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2015-10-15 06:15:10', '2015-10-15 06:15:10', '', 24, 'http://localhost/drpp4/24-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_css`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_css` (
`id` int(9) NOT NULL,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `hover` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(52, '.tp-caption.ada-aja4', '{"hover":"false"}', '""', '{"font-size":"21px","line-height":"33px","font-family":"\\"Lucida Sans Unicode\\", \\"Lucida Grande\\", sans-serif","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(53, '.tp-caption.ada-aja5', '{"hover":"false"}', '""', '{"font-size":"21px","line-height":"28px","font-family":"\\"Lucida Sans Unicode\\", \\"Lucida Grande\\", sans-serif","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_layer_animations`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_layer_animations` (
`id` int(9) NOT NULL,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_settings`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_settings` (
`id` int(9) NOT NULL,
  `general` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
`id` int(9) NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
`id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layers` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_revslider_slides`
--

INSERT INTO `wp_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(5, 1, 2, '{"background_type":"image","image":"http:\\/\\/localhost\\/drpp4\\/wp-content\\/uploads\\/2015\\/10\\/20893407224_5537e61aeb_c.jpg","image_id":"159","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"http:\\/\\/c1.staticflickr.com\\/1\\/625\\/20893407224_5537e61aeb_c.jpg","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center center","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"1500","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"Konsultasi pada tim ahli kami, kapan saja dan di mana saja","type":"text","left":74,"top":329,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":700,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":604,"height":33,"serial":"0","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"E-Consultation","type":"text","left":74,"top":297,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja","time":400,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":292,"height":33,"serial":"1","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Hemat waktu, hemat biaya","type":"text","left":74,"top":353,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":800,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":271,"height":33,"serial":"2","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<a href=\\"http:\\/\\/localhost\\/drpp\\" style=\\"border-color:black; color:black\\" class=\\"btn btn-default btn-lg join-today\\">DAFTAR<\\/a>","type":"text","left":74,"top":389,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja","time":1000,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":157,"height":33,"serial":"3","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(6, 1, 1, '{"background_type":"image","image":"http:\\/\\/localhost\\/drpp4\\/wp-content\\/uploads\\/2015\\/10\\/9165046672_f12255ccac_z.jpg","image_id":"157","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"https:\\/\\/farm3.staticflickr.com\\/2875\\/9165046672_f12255ccac_z.jpg","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center center","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"2000","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"Tidak punya waktu menemui <br> Dokter Anak atau Psikolog?","type":"text","left":136,"top":89,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"right","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja","time":600,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":572,"height":66,"serial":"0","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Konsultasikan permasalahan anak anda bersama tim ahli kami","type":"text","left":72,"top":136,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"right","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":800,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":636,"height":33,"serial":"1","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<a href=\\"http:\\/\\/localhost\\/drpp\\" style=\\"border-color:black; color:black\\" class=\\"btn btn-default btn-lg join-today\\">DAFTAR<\\/a>","type":"text","left":245,"top":406,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":1000,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":82,"height":32,"serial":"2","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Bingung mengenai permasalahan perkembangan anak anda?","type":"text","left":90,"top":41,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lft","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"right","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja2","time":400,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":618,"height":33,"serial":"3","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(7, 1, 3, '{"background_type":"image","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","image_id":"156","slide_bg_color":"#E7E7E7","slide_bg_external":"https:\\/\\/farm8.staticflickr.com\\/7015\\/6842253071_a712473f7d_o.jpg","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"left center","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"2000","kb_easing":"Linear.easeNone","image":"http:\\/\\/localhost\\/drpp4\\/wp-content\\/uploads\\/2015\\/10\\/6842253071_a712473f7d_o.jpg","0":"Remove"}', '[{"text":"Online Symposium","type":"text","left":47,"top":273,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lfb","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja3","time":400,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":362,"height":33,"serial":"0","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Belajar tentang perkembangan anak, kapan pun dan di mana pun<br>\\nUnduh materi dan diskusi dengan ahlinya<br>Perdalam  materi dengan hands-on<br>","type":"text","left":47,"top":306,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lfb","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja5","time":600,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":568,"height":79,"serial":"1","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<a href=\\"http:\\/\\/localhost\\/drpp\\" style=\\"border-color:white; color:white\\" class=\\"btn btn-default btn-lg join-today\\">DAFTAR<\\/a>","type":"text","left":47,"top":55,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"lfb","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"bottom","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"ada-aja","time":800,"endtime":"4700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":157,"height":33,"serial":"2","endTimeFinal":4700,"endSpeedFinal":300,"realEndTime":5000,"timeLast":4700,"endWithSlide":true,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_static_slides`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_static_slides` (
`id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layers` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
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
(40, 6, 0),
(41, 6, 0),
(44, 6, 0),
(47, 6, 0),
(61, 1, 0),
(63, 1, 0),
(65, 1, 0),
(81, 7, 0),
(81, 8, 0),
(85, 7, 0),
(85, 8, 0),
(178, 6, 0),
(179, 6, 0),
(180, 6, 0),
(181, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 13),
(7, 7, 'event-categories', '', 0, 2),
(8, 8, 'event-tags', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
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
(12, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor,vc_pointers_frontend_editor'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '176'),
(15, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(16, 1, 'wp_user-settings-time', '1444375812'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(19, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(20, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:16:{i:0;s:19:"wpb_visual_composer";i:1;s:17:"our_story_metabox";i:2;s:22:"our_story_text_metabox";i:3;s:20:"contact_page_metabox";i:4;s:16:"helpicon_metabox";i:5;s:18:"homeslider_metabox";i:6;s:17:"volunteer_metabox";i:7;s:16:"usericon_metabox";i:8;s:19:"shoplanding_metabox";i:9;s:12:"revisionsdiv";i:10;s:10:"postcustom";i:11;s:16:"commentstatusdiv";i:12;s:11:"commentsdiv";i:13;s:7:"slugdiv";i:14;s:9:"authordiv";i:15;s:21:"mymetabox_revslider_0";}'),
(23, 1, 'manageedit-eventcolumnshidden', 'a:1:{i:0;s:8:"event-id";}'),
(24, 1, 'image_thumb', ''),
(25, 1, 'image_medium', ''),
(26, 1, 'image', ''),
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
(55, 1, 'session_tokens', 'a:6:{s:64:"cd87f3c54112e52f0d6494f993d01a011fc0f750966e568b8c34549f37cc9653";a:4:{s:10:"expiration";i:1445318470;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444108870;}s:64:"7473e39285548c6d036b020c7794cee6d536c25617d960210ac4943371e33b22";a:4:{s:10:"expiration";i:1444992603;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444819803;}s:64:"be261e5b444ad01e3408a7b6ef0315b212d916564a99bd794f3051d9ea0caaa4";a:4:{s:10:"expiration";i:1445001263;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444828463;}s:64:"7dc80f089a46d124531b76b5780418049996bb8dd0e8626434a1c18ef58cae9b";a:4:{s:10:"expiration";i:1445062151;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444889351;}s:64:"d946d536b14bff6c248701f4f1b4b7f526c39011b99ea877fd763961a1963bfa";a:4:{s:10:"expiration";i:1445073342;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444900542;}s:64:"f955c152216a38e403462327ffacbdeea2c56205d68f38febf9133d6bbe5d109";a:4:{s:10:"expiration";i:1445139423;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36";s:5:"login";i:1444966623;}}'),
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
(102, 2, 'session_tokens', 'a:1:{s:64:"a113f1d63a860e9da69e6f5e8f55e21dc41dd6acd9ffa1cf69ab78a6abe0e57a";a:4:{s:10:"expiration";i:1440833852;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440661052;}}'),
(103, 1, 'closedpostboxes_event', 'a:0:{}'),
(104, 1, 'metaboxhidden_event', 'a:2:{i:0;s:7:"slugdiv";i:1;s:21:"mymetabox_revslider_0";}'),
(105, 1, 'ecae_premium_ignore_count_notice', '15'),
(106, 1, 'ecae_premium_ignore_notice', 'forever'),
(107, 1, 'tgmpa_dismissed_notice', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B5Qtlh5.NYClzoEVkpSmdDLr2lZ28J.', 'admin', 'kalikautsar@yahoo.com', '', '2015-08-19 00:35:52', '', 0, 'admin'),
(2, 'contributor1', '$P$BvNqzy1ZFjwnMf.CzjoqNFB9rghe7s0', 'contributor1', 'contributor@learning.com', '', '2015-08-27 07:32:48', '1440660772:$P$B78VB32vOB8EZk4mYLMhrJ3lEP6ieO0', 0, 'Risqi Utama');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
`key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
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

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
`meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
`order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
`location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
`tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_termmeta` (
`meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_cf7dbplugin_st`
--
ALTER TABLE `wp_cf7dbplugin_st`
 ADD PRIMARY KEY (`submit_time`);

--
-- Indexes for table `wp_cf7dbplugin_submits`
--
ALTER TABLE `wp_cf7dbplugin_submits`
 ADD KEY `submit_time_idx` (`submit_time`), ADD KEY `form_name_idx` (`form_name`), ADD KEY `field_name_idx` (`field_name`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_easypay_payment_log`
--
ALTER TABLE `wp_easypay_payment_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_easypay_recurring`
--
ALTER TABLE `wp_easypay_recurring`
 ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `wp_em_bookings`
--
ALTER TABLE `wp_em_bookings`
 ADD PRIMARY KEY (`booking_id`), ADD KEY `event_id` (`event_id`), ADD KEY `person_id` (`person_id`), ADD KEY `booking_status` (`booking_status`);

--
-- Indexes for table `wp_em_events`
--
ALTER TABLE `wp_em_events`
 ADD PRIMARY KEY (`event_id`), ADD KEY `event_status` (`event_status`), ADD KEY `post_id` (`post_id`), ADD KEY `blog_id` (`blog_id`), ADD KEY `group_id` (`group_id`), ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `wp_em_locations`
--
ALTER TABLE `wp_em_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `location_state` (`location_state`), ADD KEY `location_region` (`location_region`), ADD KEY `location_country` (`location_country`), ADD KEY `post_id` (`post_id`), ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_em_meta`
--
ALTER TABLE `wp_em_meta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `object_id` (`object_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_em_tickets`
--
ALTER TABLE `wp_em_tickets`
 ADD PRIMARY KEY (`ticket_id`), ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `wp_em_tickets_bookings`
--
ALTER TABLE `wp_em_tickets_bookings`
 ADD PRIMARY KEY (`ticket_booking_id`), ADD KEY `booking_id` (`booking_id`), ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_settings`
--
ALTER TABLE `wp_revslider_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
 ADD PRIMARY KEY (`key_id`), ADD KEY `consumer_key` (`consumer_key`), ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
 ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
 ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
 ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
 ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`(191)), ADD KEY `tax_rate_state` (`tax_rate_state`(191)), ADD KEY `tax_rate_class` (`tax_rate_class`(191)), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `woocommerce_term_id` (`woocommerce_term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_easypay_payment_log`
--
ALTER TABLE `wp_easypay_payment_log`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_easypay_recurring`
--
ALTER TABLE `wp_easypay_recurring`
MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_em_bookings`
--
ALTER TABLE `wp_em_bookings`
MODIFY `booking_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_em_events`
--
ALTER TABLE `wp_em_events`
MODIFY `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_em_locations`
--
ALTER TABLE `wp_em_locations`
MODIFY `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_em_meta`
--
ALTER TABLE `wp_em_meta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_em_tickets`
--
ALTER TABLE `wp_em_tickets`
MODIFY `ticket_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_em_tickets_bookings`
--
ALTER TABLE `wp_em_tickets_bookings`
MODIFY `ticket_booking_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6313;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=888;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_revslider_settings`
--
ALTER TABLE `wp_revslider_settings`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;--
-- Database: `drpp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `drpp_adm`
--

CREATE TABLE IF NOT EXISTS `drpp_adm` (
`adm_id` bigint(20) NOT NULL,
  `adm_uname` varchar(50) NOT NULL,
  `adm_pass` varchar(50) NOT NULL,
  `adm_date` date NOT NULL,
  `adm_fname` varchar(50) NOT NULL,
  `adm_hash` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_adm`
--

INSERT INTO `drpp_adm` (`adm_id`, `adm_uname`, `adm_pass`, `adm_date`, `adm_fname`, `adm_hash`) VALUES
(1, 'anov', '1a1dc91c907325c69271ddf0c944bc72', '2015-08-22', 'Anovymous', '7c8fa0321957372a9f156804d1851b61');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_att`
--

CREATE TABLE IF NOT EXISTS `drpp_att` (
`att_id` bigint(20) NOT NULL,
  `att_date` date NOT NULL,
  `att_name` varchar(200) NOT NULL,
  `att_file` text NOT NULL,
  `att_type` varchar(50) NOT NULL,
  `att_size` bigint(20) NOT NULL,
  `expert_id` bigint(20) NOT NULL,
  `att_hash` varchar(100) NOT NULL,
  `att_desc` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_att`
--

INSERT INTO `drpp_att` (`att_id`, `att_date`, `att_name`, `att_file`, `att_type`, `att_size`, `expert_id`, `att_hash`, `att_desc`) VALUES
(14, '2015-10-12', 'drpp', 'folder-rahasia-file-simposium-expert/id6-1444623303-drpp.sql', 'application/octet-stream', 899214, 6, '', 'db untu drpp');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_biling`
--

CREATE TABLE IF NOT EXISTS `drpp_biling` (
`biling_id` bigint(20) NOT NULL,
  `biling_date` date NOT NULL,
  `biling_datesend` date NOT NULL,
  `biling_status` varchar(100) NOT NULL DEFAULT '0',
  `ventor_id` bigint(20) NOT NULL DEFAULT '0',
  `consul_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `child_id` bigint(20) NOT NULL DEFAULT '0',
  `biling_paid` varchar(20) NOT NULL,
  `biling_from` varchar(100) NOT NULL,
  `biling_sender` varchar(100) NOT NULL,
  `biling_receiver` varchar(100) NOT NULL,
  `biling_msg` text NOT NULL,
  `biling_type` varchar(20) NOT NULL,
  `biling_credit` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_biling`
--

INSERT INTO `drpp_biling` (`biling_id`, `biling_date`, `biling_datesend`, `biling_status`, `ventor_id`, `consul_id`, `user_id`, `child_id`, `biling_paid`, `biling_from`, `biling_sender`, `biling_receiver`, `biling_msg`, `biling_type`, `biling_credit`) VALUES
(22, '2015-10-09', '2015-10-12', '1', 3, 0, 10, 0, '500107', 'User Demo', 'asdfg', 'bca', 'aserg', 'simpos', 0),
(23, '2015-10-09', '2015-10-01', '1', 0, 39, 10, 17, '450005', 'User Demo', 'bank', 'bca', 'hai', 'consul', 3);

-- --------------------------------------------------------

--
-- Table structure for table `drpp_cate`
--

CREATE TABLE IF NOT EXISTS `drpp_cate` (
`cate_id` bigint(20) NOT NULL,
  `cate_title` varchar(120) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_cate`
--

INSERT INTO `drpp_cate` (`cate_id`, `cate_title`) VALUES
(1, 'General'),
(2, 'Dyslexia'),
(3, 'Dyscalculia'),
(4, 'Dysgraphia'),
(5, 'Dyspraxia'),
(6, 'ADHD'),
(7, 'Autism'),
(8, 'Conduct Disorder'),
(9, 'Cerebal Palsy'),
(10, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_child`
--

CREATE TABLE IF NOT EXISTS `drpp_child` (
`child_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `child_date` date NOT NULL,
  `child_fname` varchar(50) NOT NULL,
  `child_nname` varchar(25) NOT NULL,
  `child_gender` varchar(11) NOT NULL,
  `child_birthmethod` varchar(10) NOT NULL,
  `child_birthplace` varchar(20) NOT NULL,
  `child_birthdate` date NOT NULL,
  `child_weight` varchar(6) NOT NULL,
  `child_height` bigint(6) NOT NULL,
  `child_order` int(2) NOT NULL,
  `child_d_status` varchar(125) NOT NULL DEFAULT '',
  `child_d_result` text NOT NULL,
  `child_img` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_child`
--

INSERT INTO `drpp_child` (`child_id`, `user_id`, `child_date`, `child_fname`, `child_nname`, `child_gender`, `child_birthmethod`, `child_birthplace`, `child_birthdate`, `child_weight`, `child_height`, `child_order`, `child_d_status`, `child_d_result`, `child_img`) VALUES
(16, 10, '2015-09-16', 'Jaka Alas', '', 'laki', '', '', '2001-04-12', '', 0, 0, 'gila', '', ''),
(17, 10, '2015-09-16', 'Putri Kembang', '', 'perempuan', '', '', '2003-11-16', '', 0, 0, 'Kelainan Pencernaan', '', ''),
(19, 11, '2015-09-22', 'budi', '', 'laki', '', '', '2015-09-01', '30', 50, 2, '', '', ''),
(20, 10, '2015-10-13', 'aaa', '', 'perempuan', '', '', '2015-10-02', '', 0, 0, '', '', ''),
(21, 10, '2015-10-13', 'bbbbbbbbbbb', '', 'laki', '', '', '2015-10-01', '', 0, 0, '', '', ''),
(22, 5, '2015-10-14', 'Arisa', '', 'perempuan', '', '', '2014-09-24', '40', 123, 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_config`
--

CREATE TABLE IF NOT EXISTS `drpp_config` (
  `config_name` varchar(100) NOT NULL,
  `config_number` bigint(20) NOT NULL,
  `config_content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_config`
--

INSERT INTO `drpp_config` (`config_name`, `config_number`, `config_content`) VALUES
('biling.add.number', 5, ''),
('biling.add.number.simpos', 107, '');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_consul`
--

CREATE TABLE IF NOT EXISTS `drpp_consul` (
`consul_id` bigint(20) NOT NULL,
  `consul_date` date NOT NULL,
  `consul_status` tinyint(1) NOT NULL DEFAULT '0',
  `cate_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `child_id` bigint(20) NOT NULL,
  `subsc_id` bigint(20) NOT NULL,
  `expert_id` bigint(20) NOT NULL,
  `consul_title` varchar(200) NOT NULL,
  `consul_quest` longblob NOT NULL,
  `consul_url` varchar(250) NOT NULL,
  `consul_type` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_consul`
--

INSERT INTO `drpp_consul` (`consul_id`, `consul_date`, `consul_status`, `cate_id`, `user_id`, `child_id`, `subsc_id`, `expert_id`, `consul_title`, `consul_quest`, `consul_url`, `consul_type`) VALUES
(39, '2015-10-09', 2, 1, 10, 17, 0, 4, 'hai expert', 0x6d75616368, '', 'old'),
(40, '2015-10-09', 3, 3, 10, 17, 0, 6, 'lalall', 0x6b6a686766646667, '', 'old'),
(41, '2015-10-13', 2, 4, 10, 20, 0, 1, 'ertyu', 0x3c703e727479753c2f703e3c703e646667686e3c2f703e, '', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_conwer`
--

CREATE TABLE IF NOT EXISTS `drpp_conwer` (
`conwer_id` bigint(20) NOT NULL,
  `conwer_date` date NOT NULL,
  `consul_id` bigint(20) NOT NULL,
  `expert_id` bigint(20) NOT NULL,
  `child_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `conwer_content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drpp_expert`
--

CREATE TABLE IF NOT EXISTS `drpp_expert` (
`expert_id` bigint(20) NOT NULL,
  `expert_date` date NOT NULL,
  `expert_uname` varchar(25) NOT NULL,
  `expert_email` varchar(25) NOT NULL,
  `expert_pass` varchar(32) NOT NULL,
  `expert_fname` varchar(50) NOT NULL,
  `expert_work` varchar(100) NOT NULL,
  `expert_birthdate` date NOT NULL,
  `expert_phone` varchar(15) NOT NULL,
  `expert_homephone` varchar(15) NOT NULL,
  `expert_img` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_expert`
--

INSERT INTO `drpp_expert` (`expert_id`, `expert_date`, `expert_uname`, `expert_email`, `expert_pass`, `expert_fname`, `expert_work`, `expert_birthdate`, `expert_phone`, `expert_homephone`, `expert_img`) VALUES
(1, '2014-03-09', 'purboyo', 'purboyo@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'dr. Purboyo Solek, Sp.A(K)', 'Neuropediatric Consultant', '1996-05-22', '08888777', '02723113', '1-1442550511-logocopy.png'),
(2, '2015-09-08', 'tian', 'kristiantini@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'dr. Kristiantini Dewi, Sp.A', 'Pediatrician', '2015-09-01', '0856', '0274', ''),
(3, '2015-09-22', 'indra', 'indra@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'dr. Indra Sahril, Sp.A', 'Pediatrician', '2015-09-01', '0856', '0274', ''),
(4, '2015-09-22', 'sari', 'sari@gmail.com', 'pass', 'Diah Purpasari, M.Psi.', 'Psychologist', '2015-09-01', '0826', '0274', ''),
(5, '2015-09-22', 'sary', 'sary@gmail.com', 'pass', 'Sary Matualesy, M.T., M.Psi.', 'Psychologist', '2015-09-01', '0896', '0274', ''),
(6, '2015-09-06', 'anov', 'anov.siradj22@gmail.com', '7c8fa0321957372a9f156804d1851b61', 'Mayendra Costanov', 'psikopat', '1996-05-22', '085102235119', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_notif`
--

CREATE TABLE IF NOT EXISTS `drpp_notif` (
`notif_id` bigint(20) NOT NULL,
  `notif_date` date DEFAULT NULL,
  `notif_title` varchar(200) NOT NULL,
  `notif_msg` text NOT NULL,
  `adm_id` bigint(20) NOT NULL,
  `expert_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `child_id` bigint(20) NOT NULL,
  `biling_id` bigint(20) NOT NULL,
  `consul_id` bigint(20) NOT NULL,
  `conwer_id` bigint(20) NOT NULL,
  `notif_for` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_notif`
--

INSERT INTO `drpp_notif` (`notif_id`, `notif_date`, `notif_title`, `notif_msg`, `adm_id`, `expert_id`, `user_id`, `child_id`, `biling_id`, `consul_id`, `conwer_id`, `notif_for`) VALUES
(1, '2015-09-22', 'Thanks for your consultation request!', 'Berhasil buat konsultasi, silahkan segera melakukan pmbyran agar mendapat jawaban.', 0, 1, 10, 0, 0, 32, 0, 'user'),
(2, '2015-09-22', 'Thanks for your consultation request!', 'Your question has been saved to our database. Do the payment as soon as possible, so we can process it further.', 0, 1, 10, 0, 0, 33, 0, 'user'),
(3, '2015-09-22', 'Thanks for your payment confirmation!', 'Now we are verifying your data. This process is done within 24 hours.', 0, 0, 10, 0, 18, 33, 0, 'user'),
(4, '2015-09-22', 'Your consultation payment has been verified', 'We have confirmed your payment. The expert is answering your question within 3 days.', 0, 0, 10, 0, 18, 33, 0, 'user'),
(5, '2015-09-22', 'Your consultation has been answered!', 'The expert has responded your question. Check the answer <a href="http://localhost/drpp/readconsul/?id=33#sb3">here</a>.', 0, 1, 10, 16, 0, 33, 0, 'user'),
(6, '2015-09-22', 'Thanks for your consultation request!', 'Your question has been saved to our database. Do the payment as soon as possible, so we can process it further.', 0, 3, 11, 0, 0, 0, 0, 'user'),
(7, '2015-09-22', 'Thanks for your consultation request!', 'Your question has been saved to our database. Do the payment as soon as possible, so we can process it further.', 0, 4, 11, 0, 0, 0, 0, 'user'),
(8, '2015-09-22', 'Thanks for your consultation request!', 'Your question has been saved to our database. Do the payment as soon as possible, so we can process it further.', 0, 3, 11, 0, 0, 34, 0, 'user'),
(9, '2015-09-28', 'Thanks for your consultation request!', 'Your question has been saved to our database. Do the payment as soon as possible, so we can process it further.', 0, 1, 10, 0, 0, 35, 0, 'user'),
(10, '2015-10-07', 'Thanks for your consultation request!', 'Your question has been saved to our database. Do the payment as soon as possible, so we can process it further.', 0, 1, 10, 0, 0, 36, 0, 'user'),
(11, '2015-10-07', 'Thanks for your consultation request!', 'Your question has been saved to our database. Do the payment as soon as possible, so we can process it further.', 0, 2, 10, 0, 0, 37, 0, 'user'),
(12, '2015-10-09', 'Terima kasih telah melakukan konsultasi', 'Pertanyaan anda telah tersimpan. Lakukan pembayaran segera agar dapat diproses lebih lanjut.', 0, 4, 10, 0, 0, 38, 0, 'user'),
(13, '2015-10-09', 'Terima kasih telah melakukan konfirmasi pembayaran', 'Saat ini kami melakukan verifikasi. Verifikasi akan berlangsung maksimal dalam 24 jam.', 0, 0, 10, 0, 20, 35, 0, 'user'),
(14, '2015-10-09', 'Terima kasih telah melakukan konfirmasi pembayaran', 'Saat ini kami melakukan verifikasi. Verifikasi akan berlangsung maksimal dalam 24 jam.', 0, 0, 10, 0, 21, 37, 0, 'user'),
(15, '2015-10-09', 'Pembayaran anda telah dikonfirmasi', 'Pembayaran anda telah dikonfirmasi. Tim ahli kami akan menjawab konsultasi anda maksimal 3 hari', 0, 0, 10, 0, 21, 37, 0, 'user'),
(16, '2015-10-09', 'Terima kasih telah melakukan konsultasi', 'Pertanyaan anda telah tersimpan. Lakukan pembayaran segera agar dapat diproses lebih lanjut.', 0, 4, 10, 0, 0, 39, 0, 'user'),
(17, '2015-10-09', 'Terima kasih telah melakukan konfirmasi pembayaran', 'Saat ini kami melakukan verifikasi. Verifikasi akan berlangsung maksimal dalam 24 jam.', 0, 0, 10, 0, 23, 39, 0, 'user'),
(18, '2015-10-09', 'Pembayaran anda telah dikonfirmasi', 'Pembayaran anda telah dikonfirmasi. Tim ahli kami akan menjawab konsultasi anda maksimal 3 hari', 0, 0, 10, 0, 23, 39, 0, 'user'),
(19, '2015-10-09', 'Konsultasi anda telah dijawab!', 'Tim ahli kami telah menjawab konsultasi anda. Lihat jawaban di <a class="grlink" href="http://localhost/drpp/readconsul/?id=40#sb3">sini</a>.', 0, 6, 10, 17, 0, 40, 0, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_sevent`
--

CREATE TABLE IF NOT EXISTS `drpp_sevent` (
`sevent_id` bigint(20) NOT NULL,
  `expert_id` bigint(20) NOT NULL,
  `simpos_id` bigint(20) NOT NULL,
  `sevent_date` date NOT NULL,
  `sevent_date_start` date NOT NULL,
  `sevent_date_end` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_sevent`
--

INSERT INTO `drpp_sevent` (`sevent_id`, `expert_id`, `simpos_id`, `sevent_date`, `sevent_date_start`, `sevent_date_end`) VALUES
(15, 6, 27, '2015-10-09', '2015-10-07', '2015-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_sevwer`
--

CREATE TABLE IF NOT EXISTS `drpp_sevwer` (
`sevwer_id` bigint(20) NOT NULL,
  `sevwer_date` datetime NOT NULL,
  `sevent_id` bigint(20) NOT NULL,
  `sevwer_parent` bigint(20) NOT NULL DEFAULT '0',
  `sevwer_by` varchar(10) NOT NULL,
  `by_id` bigint(20) NOT NULL,
  `sevwer_content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_sevwer`
--

INSERT INTO `drpp_sevwer` (`sevwer_id`, `sevwer_date`, `sevent_id`, `sevwer_parent`, `sevwer_by`, `by_id`, `sevwer_content`) VALUES
(30, '2015-10-13 16:46:56', 15, 0, 'user', 10, '<p>lorem&nbsp;&nbsp;&nbsp;&nbsp;</p><p><br></p>'),
(31, '2015-10-13 16:50:39', 15, 0, 'user', 10, '<p>hai&nbsp;</p><p>lkjhgfdfghjkl</p><p>dfghmv</p>');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_simpos`
--

CREATE TABLE IF NOT EXISTS `drpp_simpos` (
`simpos_id` bigint(20) NOT NULL,
  `simpos_date` date NOT NULL,
  `expert_id` bigint(20) NOT NULL,
  `simpos_title` varchar(100) NOT NULL,
  `simpos_content` longblob NOT NULL,
  `simpos_files` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_simpos`
--

INSERT INTO `drpp_simpos` (`simpos_id`, `simpos_date`, `expert_id`, `simpos_title`, `simpos_content`, `simpos_files`) VALUES
(27, '2015-10-09', 6, 'Gila', 0x3c703e6164616c616820736562756168206b61726d61266e6273703b266e6273703b266e6273703b266e6273703b3c2f703e, '14');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_user`
--

CREATE TABLE IF NOT EXISTS `drpp_user` (
`user_id` bigint(20) NOT NULL,
  `user_date` date NOT NULL,
  `user_uname` varchar(25) NOT NULL,
  `user_pass` varchar(32) NOT NULL,
  `user_email` varchar(25) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_nname` varchar(25) NOT NULL,
  `user_gender` varchar(20) NOT NULL,
  `user_birthplace` varchar(20) NOT NULL,
  `user_birthdate` date NOT NULL,
  `user_address` text NOT NULL,
  `user_education` varchar(20) NOT NULL,
  `user_work` varchar(20) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_homephone` varchar(15) NOT NULL,
  `user_credit` int(3) NOT NULL DEFAULT '0',
  `user_status` tinyint(1) NOT NULL DEFAULT '0',
  `user_hash` varchar(60) NOT NULL,
  `user_img` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_user`
--

INSERT INTO `drpp_user` (`user_id`, `user_date`, `user_uname`, `user_pass`, `user_email`, `user_fname`, `user_nname`, `user_gender`, `user_birthplace`, `user_birthdate`, `user_address`, `user_education`, `user_work`, `user_phone`, `user_homephone`, `user_credit`, `user_status`, `user_hash`, `user_img`) VALUES
(5, '2015-10-15', 'vina1', '7859830fceb79f0ccd7fd57519008e8f', 'vina@vina.com', 'Vina Sectiana', '', '', 'dsd', '2015-10-14', '', '', '', '', '', 0, 1, '', ''),
(10, '2015-08-02', 'user', '1a1dc91c907325c69271ddf0c944bc72', 'iam.user@mail.com', 'User Demo', 'Dirgado', 'laki', 'jogja', '1996-05-22', 'suatu tempat', 'sma', 'serabutan', '085102235119', '', 1, 1, 'a6e4a48c515598529ced003b22cffee5', '10-1442476777-2.png'),
(11, '2015-09-08', 'risqius', '1cef7ac56702c7e78e683adf09170eec', 'm.risqi.us@gmail.com', 'risqi', 'utama', 'laki', 'jogja', '2015-09-15', 'jogja', 'sma', 'ceo', '0896', '0274', 0, 1, '', ''),
(12, '0000-00-00', 'vina', 'vina', '', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, 0, '', ''),
(13, '2015-10-15', 'ulia', '665e1247c5bfdde25d207005bd2fb1b5', 'uliala@gmail.com', 'Alissa', '', 'perempuan', '', '2015-10-16', 'aklsdkasdj', 'smp', 'Mahasiswa', '085729404949', '', 0, 0, 'fbc01194f7d009dc217cc79ebf61c3b2', ''),
(14, '2015-10-15', 'pinah', '6a127f2468fa09ce08159ad91ac063f7', 'vina.sectiana@gmail.com', 'Lisa', '', 'perempuan', '', '2015-10-16', 'akjsdhas', 'smp', 'Mahasiswa', '085729404949', '', 0, 1, '3098e7d3461da044a511278174d560c8', '');

-- --------------------------------------------------------

--
-- Table structure for table `drpp_ventor`
--

CREATE TABLE IF NOT EXISTS `drpp_ventor` (
`ventor_id` bigint(20) NOT NULL,
  `ventor_date` date NOT NULL,
  `sevent_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ventor_status` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpp_ventor`
--

INSERT INTO `drpp_ventor` (`ventor_id`, `ventor_date`, `sevent_id`, `user_id`, `ventor_status`) VALUES
(3, '2015-10-09', 15, 10, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drpp_adm`
--
ALTER TABLE `drpp_adm`
 ADD PRIMARY KEY (`adm_id`), ADD KEY `adm_uname` (`adm_uname`);

--
-- Indexes for table `drpp_att`
--
ALTER TABLE `drpp_att`
 ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `drpp_biling`
--
ALTER TABLE `drpp_biling`
 ADD PRIMARY KEY (`biling_id`), ADD KEY `biling_type` (`biling_type`);

--
-- Indexes for table `drpp_cate`
--
ALTER TABLE `drpp_cate`
 ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `drpp_child`
--
ALTER TABLE `drpp_child`
 ADD PRIMARY KEY (`child_id`);

--
-- Indexes for table `drpp_config`
--
ALTER TABLE `drpp_config`
 ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `drpp_consul`
--
ALTER TABLE `drpp_consul`
 ADD PRIMARY KEY (`consul_id`);

--
-- Indexes for table `drpp_conwer`
--
ALTER TABLE `drpp_conwer`
 ADD PRIMARY KEY (`conwer_id`);

--
-- Indexes for table `drpp_expert`
--
ALTER TABLE `drpp_expert`
 ADD PRIMARY KEY (`expert_id`), ADD KEY `expert_uname` (`expert_uname`,`expert_email`);

--
-- Indexes for table `drpp_notif`
--
ALTER TABLE `drpp_notif`
 ADD PRIMARY KEY (`notif_id`), ADD KEY `notif_for` (`notif_for`);

--
-- Indexes for table `drpp_sevent`
--
ALTER TABLE `drpp_sevent`
 ADD PRIMARY KEY (`sevent_id`);

--
-- Indexes for table `drpp_sevwer`
--
ALTER TABLE `drpp_sevwer`
 ADD PRIMARY KEY (`sevwer_id`);

--
-- Indexes for table `drpp_simpos`
--
ALTER TABLE `drpp_simpos`
 ADD PRIMARY KEY (`simpos_id`);

--
-- Indexes for table `drpp_user`
--
ALTER TABLE `drpp_user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `drpp_ventor`
--
ALTER TABLE `drpp_ventor`
 ADD PRIMARY KEY (`ventor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drpp_adm`
--
ALTER TABLE `drpp_adm`
MODIFY `adm_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `drpp_att`
--
ALTER TABLE `drpp_att`
MODIFY `att_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `drpp_biling`
--
ALTER TABLE `drpp_biling`
MODIFY `biling_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `drpp_cate`
--
ALTER TABLE `drpp_cate`
MODIFY `cate_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `drpp_child`
--
ALTER TABLE `drpp_child`
MODIFY `child_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `drpp_consul`
--
ALTER TABLE `drpp_consul`
MODIFY `consul_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `drpp_conwer`
--
ALTER TABLE `drpp_conwer`
MODIFY `conwer_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drpp_expert`
--
ALTER TABLE `drpp_expert`
MODIFY `expert_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `drpp_notif`
--
ALTER TABLE `drpp_notif`
MODIFY `notif_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `drpp_sevent`
--
ALTER TABLE `drpp_sevent`
MODIFY `sevent_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `drpp_sevwer`
--
ALTER TABLE `drpp_sevwer`
MODIFY `sevwer_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `drpp_simpos`
--
ALTER TABLE `drpp_simpos`
MODIFY `simpos_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `drpp_user`
--
ALTER TABLE `drpp_user`
MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `drpp_ventor`
--
ALTER TABLE `drpp_ventor`
MODIFY `ventor_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `lexipal`
--

-- --------------------------------------------------------

--
-- Table structure for table `coba`
--

CREATE TABLE IF NOT EXISTS `coba` (
  `nama` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
`ID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coba`
--

INSERT INTO `coba` (`nama`, `age`, `ID`) VALUES
('lala', '', 1),
('misa', '', 2),
('misa', '', 3),
('misa', '', 4),
('ucon', '', 5),
('qiqi', '', 6),
('qiqi', '', 7),
('qiqi', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
`orderID` int(255) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `usia` varchar(256) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `telp` varchar(256) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `nama_receiver` varchar(255) NOT NULL,
  `notelp_receiver` varchar(255) NOT NULL,
  `alamat_receiver` varchar(255) NOT NULL,
  `kota_receiver` varchar(255) NOT NULL,
  `kodepos_receiver` varchar(255) NOT NULL,
  `software_selected` varchar(255) NOT NULL,
  `software_ori_price` int(255) NOT NULL,
  `discount` varchar(10) NOT NULL,
  `discount_code` varchar(255) NOT NULL,
  `discount_percentage` int(255) NOT NULL,
  `software_final_price` int(255) NOT NULL,
  `shipping_cost` int(255) NOT NULL,
  `total_due` int(255) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `shipping_status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coba`
--
ALTER TABLE `coba`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
 ADD PRIMARY KEY (`orderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coba`
--
ALTER TABLE `coba`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
MODIFY `orderID` int(255) NOT NULL AUTO_INCREMENT;--
-- Database: `percobaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`name`, `address`) VALUES
('atelier', 'angelina');
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
`id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
`id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'vinnera_godemy', 'scholarship', 'scholarshippicture', '', '', '_', ''),
(2, 'vinnera_godemy', 'userdata', 'userphoto', '', '', '_', ''),
(3, 'percobaan', 'userdata', 'name', '', '', '_', ''),
(4, 'percobaan', 'userdata', 'address', '', '', '_', ''),
(5, 'vinnera_smartq', 'user', 'mynumber', '', '', '_', ''),
(6, 'vinnera_smartq', 'user', 'remain', '', '', '_', ''),
(7, 'vinnera_smartq', 'user', 'antri', '', '', '_', ''),
(8, 'vinnera_smartq', 'vendor', 'totalque', '', '', '_', ''),
(9, 'vinnera_smartq', 'vendor', 'currentque', '', '', '_', ''),
(10, 'vinnera_smartq', 'vendor', 'average', '', '', '_', ''),
(11, 'vinnera_smartq', 'vendor', 'id', '', '', '_', ''),
(12, 'vinnera_smartq', 'user', 'id', '', '', '_', ''),
(13, 'vinnera_godemy', 'scholarshipstarred', 'userid', '', '', '_', ''),
(14, 'vinnera_godemy', 'scholarshipstarred', 'sessionid', '', '', '_', ''),
(15, 'vinnera_godemy', 'scholarshipstarred', 'no', '', '', '_', ''),
(16, 'vinnera_godemy', 'scholarshipapply', 'sessionid', '', '', '_', ''),
(17, 'vinnera_godemy', 'scholarshipapply', 'no', '', '', '_', ''),
(18, 'vinnera_godemy', 'user', 'userid', '', '', '_', ''),
(19, 'vinnera_godemy', 'userdata', 'userid', '', '', '_', ''),
(20, 'vinnera_godemy', 'userschool', 'userid', '', '', '_', ''),
(21, 'vinnera_godemy', 'userfamily', 'userid', '', '', '_', ''),
(22, 'lexipal', 'Order', 'orderID', '', '', '_', ''),
(23, 'lexipal', 'Order', 'nama', '', '', '_', ''),
(24, 'lexipal', 'Order', 'usia', '', '', '_', ''),
(25, 'lexipal', 'Order', 'gender', '', '', '_', ''),
(46, 'lexipal', 'pemesanan', 'orderID', '', '', '_', ''),
(47, 'tbd_01', 'STUDENT', 'STUDENT_ID', '', '', '_', ''),
(48, 'tbd_01', 'STUDENT', 'tac', '', '', '_', ''),
(43, 'lexipal', 'coba', 'nama', '', '', '_', ''),
(44, 'lexipal', 'coba', 'age', '', '', '_', ''),
(45, 'lexipal', 'coba', 'ID', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
`id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
`page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '{"0":{"db":"drpp2","table":"drpp_user"},"2":{"db":"drpp2","table":"drpp_adm"},"3":{"db":"skripsi","table":"user"},"4":{"db":"lexipal","table":"pemesanan"},"5":{"db":"lexipal","table":"coba"}}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
`id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'godemy', 'scholarship', '{"sorted_col":"`scholarship`.`scholarshipid` ASC"}', '2014-12-08 12:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-11-22 16:14:21', '{"collation_connection":"utf8mb4_general_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
 ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
 ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
 ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
 ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
 ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
 ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
 ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `sewa`
--

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE IF NOT EXISTS `sewa` (
`sewaid` int(11) NOT NULL,
  `mobil` text NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `bank` text NOT NULL,
  `tanggalpinjam` text NOT NULL,
  `jampinjam` text NOT NULL,
  `tanggalkembali` text NOT NULL,
  `tujuan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`sewaid`, `mobil`, `nama`, `alamat`, `bank`, `tanggalpinjam`, `jampinjam`, `tanggalkembali`, `tujuan`) VALUES
(2, 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
 ADD PRIMARY KEY (`sewaid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sewa`
--
ALTER TABLE `sewa`
MODIFY `sewaid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;--
-- Database: `skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'anisa', '123');

-- --------------------------------------------------------

--
-- Table structure for table `marker`
--

CREATE TABLE IF NOT EXISTS `marker` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(4) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomorHandphone` int(20) NOT NULL,
  `luas` text NOT NULL,
  `lokasiLahan` varchar(50) NOT NULL,
  `jenisProduk` text NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `nama`, `alamat`, `nomorHandphone`, `luas`, `lokasiLahan`, `jenisProduk`, `lat`, `lng`) VALUES
(24, '', '', 'ifah', '0', 0, '0', '', '', -7.760831, 110.246277),
(25, '', '', 'latifah', '0', 0, '0', '', '', -7.759512, 110.248169),
(26, '', '', 'lalat', 'ponggi', 0, '0', '', '', -7.758705, 110.246277),
(27, '', '', '', '', 0, '0', '', '', 0.000000, 0.000000),
(28, '', '', '', '', 0, '0', '', '', 0.000000, 0.000000),
(29, '', '', 'hafid', '', 0, '0', '', 'padi', -7.759385, 110.246147),
(30, '', '', '', '', 0, '0', '', '', 0.000000, 0.000000),
(31, '', '', '', '', 0, '10', 'ponggok', 'padi', -7.760958, 110.250916),
(32, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(33, 'latifah', 'latifah', 'latifah', 'latifah', 0, '', '', '', 0.000000, 0.000000),
(34, '', '', '', '', 0, '100 hektar', 'ponggok', 'padi', -7.759300, 110.248207),
(35, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(36, '', '', '', '', 0, '100', 'ngentak', 'padi', -7.762404, 110.253830),
(37, '', '111111', 'bambang', 'nulisan', 0, '', '', '', 0.000000, 0.000000),
(38, '', '111111', 'bambang', 'nulisan', 0, 'skdjfhsd', 'djfhd', 'asdasd', -7.762447, 110.257355),
(39, 'lat@gmail.com', '888888', 'latifah', 'ngentak', 0, '', '', '', 0.000000, 0.000000),
(40, 'anisaituituazis@gmail.com', '15060606', 'anisaaz', 'ponggok', 0, 'i3u4', '24i3u', 'sjdkfh', 0.000000, 0.000000),
(41, '', '', '', '', 0, '555', 'mbulak', 'paddy', -7.763254, 110.254349),
(42, '', '', '', '', 0, '1000', 'pogung', 'pogung', -7.765806, 110.252716),
(43, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(44, 'drgsenik@gmail.com', 'rumahku', 'hafidz', 'nulisan sumberagung', 0, '', '', '', 0.000000, 0.000000),
(45, 'drgsenik@gmail.com', 'rumahku', 'nurhakin', 'nulisan sumberagung', 0, '', '', '', 0.000000, 0.000000),
(46, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(47, 'anisaituazis@gmail.com', 'aaaaaaa', 'LatifahHamid', 'aahajhajsg', 0, '', '', '', 0.000000, 0.000000),
(48, '', '', '', '', 0, 'aaaaa', 'aaaaa', 'aaaaa', -7.769888, 110.251602),
(49, 'anisaituazis@gmail.com', '1717171', 'aaaaaa', 'aaaaaa', 0, '', '', '', 0.000000, 0.000000),
(50, '', '', '', '', 0, 'aaa', 'aaa', 'aaa', -7.775656, 110.261147),
(51, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(52, 'anisaituazis@gmail.com', '111111', 'aaaaaa', 'aaaaa', 0, '', '', '', 0.000000, 0.000000),
(53, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(54, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(55, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(56, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(57, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(58, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(59, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(60, '', '', '', '', 0, 'aaaa', 'aaa', 'aaaa', -7.762489, 110.246239),
(61, '', '', '', '', 0, 'aaaa', 'aaa', 'aaaa', -7.762489, 110.246239),
(62, '', '', '', '', 0, 'aaaa', 'aaaa', 'aaaa', -7.764020, 110.254646),
(63, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(64, '', '', '', '', 0, 'aaa', 'aaa', 'aaa', -7.764658, 110.253319),
(65, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(66, '', '', '', '', 0, 'ssss', 'ssss', 'ssss', -7.763339, 110.252846),
(67, '', '', '', '', 0, 'aaaa', 'aaaa', 'aaaa', -7.763254, 110.254646),
(68, '', '', '', '', 0, 'aaaaa', 'aaaaa', 'aaaaa', -7.766231, 110.253922),
(69, '', '', '', '', 0, 'akuuu', 'akuuu', 'akuuu', -7.764998, 110.253830),
(70, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(71, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(72, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(73, '', '', '', '', 0, 'AAAAA', 'AAAAA', 'AAAAA', -7.763127, 110.254562),
(74, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(75, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(76, '', '', '', '', 0, 'aaa', 'aaa', 'aaa', -7.764403, 110.253830),
(77, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(78, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(79, '', '', '', '', 0, 'aaaa', 'aaaa', 'aaaa', -7.763382, 110.255035),
(80, '', '', '', '', 0, 'aaaa', 'aaaa', 'aaaa', -7.765721, 110.253532),
(81, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(82, '', '', '', '', 0, 'dfdg', 'dgdf', 'dffzg', -7.756068, 110.249969),
(83, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(84, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(85, '', '', '', '', 0, 'sdsfc', 'dsff', 'afds', -7.753318, 110.257996),
(86, '', '', '', '', 0, 'fsfsd', 'zgdf', 'dvdv', -7.767265, 110.253235),
(87, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(88, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(89, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(90, '', '', '', '', 0, 'czcz', 'xvv', 'vxv', -7.762489, 110.254387),
(91, '', '', '', '', 0, 'xcdgf', 'gfbgfbxd', 'gbfxd', -7.762532, 110.250397),
(92, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(93, '', '', '', '', 0, 'fcsfgse', 'dfvgd', 'gdvgd', -7.762574, 110.250526),
(94, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(95, '', '', '', '', 0, 'fbfcbg', 'gbgc', 'n gcvc', -7.762021, 110.255890),
(96, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(97, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(98, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(99, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(100, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(101, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(102, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(103, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(104, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(105, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(106, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(107, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(108, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(109, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(110, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(111, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(112, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(113, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(114, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(115, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(116, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(117, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(118, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(119, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(120, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(121, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(122, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(123, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(124, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(125, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(126, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(127, '', '', '', '', 0, 'fgvdxb', 'fghbf', 'dbf', -7.764587, 110.253273),
(128, 'anisaituazis@gmail.com', '111', 'fgsdgvs', 'svdfvsd', 0, '', '', '', 0.000000, 0.000000),
(129, 'anisaituazis@gmail.com', 'aaa', 'dvdxvdf', 'zxvfdc', 0, '', '', '', 0.000000, 0.000000),
(130, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(131, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(132, 'anisaituazis@gmail.com', '111', 'dfscd', 'cdxcf', 0, '', '', '', 0.000000, 0.000000),
(133, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(134, 'anisaituazis@gmail.com', '11111', 'dfcsfcs', 'azfcvsd', 0, '', '', '', 0.000000, 0.000000),
(135, 'anisaituazis@gmail.com', '11111', 'dfsd', 'dfsd', 0, '', '', '', 0.000000, 0.000000),
(136, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(137, '', '', '', '', 0, 'fgsd', 'dfgdg', 'dgg', -7.754707, 110.257996),
(138, 'anisaituazis@gmail.com', 'sdasda', 'aas', 'dscs', 0, '', '', '', 0.000000, 0.000000),
(139, 'anisaituituazis@gmail.com', 'aaaaa', 'aaaaa', 'sdsfcvs', 0, '', '', '', 0.000000, 0.000000),
(140, 'anisaituazis@gmail.com', 'aaaaa', 'asxsa', 'asxa', 0, '', '', '', 0.000000, 0.000000),
(141, 'fgdfs@gmail.com', 'aaa', 'fvas', 'dfvds', 0, '', '', '', 0.000000, 0.000000),
(142, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(143, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(144, 'anisaituazis@gmail.com', '111', 'aaaa', 'aaaa', 0, '', '', '', 0.000000, 0.000000),
(145, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(146, 'anisaituazis@gmail.com', '11111', 'anisa', 'aaaa', 2147483647, '', '', '', 0.000000, 0.000000),
(147, 'aaaa@gmail.com', 'aaaa', 'aaaa', 'aaaa', 0, '', '', '', 0.000000, 0.000000),
(148, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(149, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(150, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(151, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(152, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(153, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(154, 'anisaituazis@gmail.com', '1111', 'anisa', 'aaaa', 123455555, '', '', '', 0.000000, 0.000000),
(155, 'aaaa@gmail.com', 'aaaaa', 'aaaaa', 'aaaa', 0, '', '', '', 0.000000, 0.000000),
(156, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(157, 'anisaituazis@gmail.com', '11111', 'aaaaa', 'aaaaa', 11111111, '', '', '', 0.000000, 0.000000),
(158, 'adaad@gmail.com', 'adsa', 'anisa', 'aaaa', 0, '', '', '', 0.000000, 0.000000),
(159, 'anisaituazis@gmail.com', '11111', 'anisa', 'aaaa', 1111111, '', '', '', 0.000000, 0.000000),
(160, 'dfg23@sjdhsd.cdas', 'dfgdfg', 'dfgdf', 'dfgf', 0, '', '', '', 0.000000, 0.000000),
(161, '2juli@djf.com', 'skdfh', '2juli', 'sjdhsjd', 234234, '', '', '', 0.000000, 0.000000),
(162, '', '', '', '', 0, '', '', '', 0.000000, 0.000000),
(163, 'test', 'test', 'test', 'test', 0, '', '', '', 0.000000, 0.000000),
(164, 'test', 'test', 'test', 'test', 0, '', '', '', 0.000000, 0.000000),
(165, 'test', 'test', 'test', 'test', 0, '', '', '', 0.000000, 0.000000),
(166, 'askdjahs@sjkdfhf.com', 'skdjhfsdkjfh', 'skdjfhksdjfh', 'skdjfhsdjfh', 0, '', '', '', 0.000000, 0.000000),
(167, 'cobaya@cobaya.com', 'cobaya', 'askjdhsad', 'ksjhdjsdfh', 0, '', '', '', 0.000000, 0.000000),
(168, 'cobaya@cobaya.com', 'cobaya', 'askjdhsad', 'ksjhdjsdfh', 0, '', '', '', 0.000000, 0.000000),
(169, 'test', 'test', 'test', 'test', 0, '', '', '', 0.000000, 0.000000),
(170, 'test', 'test', 'test', 'test', 0, '', '', '', 0.000000, 0.000000),
(171, 'test', 'test', 'test', 'test', 0, '', '', '', 0.000000, 0.000000),
(172, 'asdjakshjd@skdjfhsd.co', 'sjkdhfsjdf', 'skdjfhskjf', 'sjkdfhskjdfh', 0, '', '', '', 0.000000, 0.000000),
(173, 'sakdah@sdjfhs.c', 'skjdfhskjdfh', 'kjdfhsd', 'sdjkhsdf', 0, '', '', '', 0.000000, 0.000000),
(174, '', '', '', '', 0, 'asdas', 'sjadasd', 'sdsadfas', -7.751447, 110.252548),
(175, '', '', '', '', 0, 'asdas', 'sjadasd', 'sdsadfas', -7.751447, 110.252548),
(176, '', '', '', '', 0, '324234', '23241', '23423', -7.751447, 110.252548),
(177, '', '', '', '', 0, '324234', '23241', '23423', -7.751447, 110.252548),
(178, '', '', '', '', 0, '324234', '23241', '23423', -7.751447, 110.252548),
(179, '', '', '', '', 0, '324234', '23241', '23423', -7.751447, 110.252548),
(180, '', '', '', '', 0, '324234', '23241', '23423', -7.751447, 110.252548),
(181, 'asdasdh@jadfdf.com', 'asdadas', 'kjsdajksdh', 'ksajdhasjd', 0, '', '', '', 0.000000, 0.000000),
(182, 'sdfjshdjf@ajkshdasd.com', 'dkjhfsdjf', 'sdkjfhsdkjf', 'skdjfhskjdfh', 0, '', '', '', 0.000000, 0.000000),
(183, 'djhskdjfh@ksdjfhsjdf.com', 'skdjfhskjdfh@jdfs', 'skdjfhs', 'sdkjfhsd', 0, '', '', '', 0.000000, 0.000000),
(184, 'askjdahsd@hajsda.com', 'skjdfhskjdfh', 'skdjfhsjdh', 'sdjfhskdjfh', 0, '', '', '', 0.000000, 0.000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marker`
--
ALTER TABLE `marker`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `marker`
--
ALTER TABLE `marker`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=185;--
-- Database: `tbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` varchar(8) NOT NULL,
  `course_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
('ISM 3112', 'Syst Design'),
('ISM 3113', 'Syst Analysis'),
('ISM 4212', 'Introduction to'),
('ISM 4950', 'Networking');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `faculty_id` int(6) NOT NULL,
  `faculty_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`) VALUES
(2143, 'Birkin'),
(3467, 'Berndt'),
(4756, 'Collins');

-- --------------------------------------------------------

--
-- Table structure for table `is_qualified`
--

CREATE TABLE IF NOT EXISTS `is_qualified` (
  `faculty_id` int(6) NOT NULL,
  `course_id` varchar(8) NOT NULL,
  `date_qualified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_qualified`
--

INSERT INTO `is_qualified` (`faculty_id`, `course_id`, `date_qualified`) VALUES
(2143, 'ISM 3112', '1988-09-01'),
(2143, 'ISM 3113', '1988-09-01'),
(3467, 'ISM 4212', '1995-09-01'),
(4756, 'ISM 3113', '1991-09-01'),
(4756, 'ISM 3112', '1991-09-01'),
(3467, 'ISM 4950', '1996-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `is_registered`
--

CREATE TABLE IF NOT EXISTS `is_registered` (
  `student_id` int(6) NOT NULL,
  `section_id` int(6) NOT NULL,
  `semester` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_registered`
--

INSERT INTO `is_registered` (`student_id`, `section_id`, `semester`) VALUES
(38214, 2714, 'I-2001'),
(54907, 2714, 'I-2001'),
(54907, 2715, 'I-2001'),
(66324, 2713, 'I-2001');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(6) NOT NULL,
  `course_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `course_id`) VALUES
(2712, 'ISM 3113'),
(2713, 'ISM 3113'),
(2714, 'ISM 4212'),
(2715, 'ISM 4950');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(6) NOT NULL,
  `student_name` varchar(25) DEFAULT NULL,
  `class` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `class`) VALUES
(38214, 'Letersky', NULL),
(54907, 'Altvater', NULL),
(65798, 'Lopez', ''),
(66324, 'Aiken', NULL),
(70542, 'Marra', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
 ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `is_qualified`
--
ALTER TABLE `is_qualified`
 ADD KEY `faculty_id_key` (`faculty_id`), ADD KEY `course_id_key` (`course_id`);

--
-- Indexes for table `is_registered`
--
ALTER TABLE `is_registered`
 ADD KEY `student_id_key` (`student_id`), ADD KEY `section_id_key` (`section_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
 ADD PRIMARY KEY (`section_id`), ADD KEY `course_id_key_2` (`course_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`student_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `is_qualified`
--
ALTER TABLE `is_qualified`
ADD CONSTRAINT `course_id_key` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
ADD CONSTRAINT `faculty_id_key` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`);

--
-- Constraints for table `is_registered`
--
ALTER TABLE `is_registered`
ADD CONSTRAINT `section_id_key` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`),
ADD CONSTRAINT `student_id_key` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
ADD CONSTRAINT `course_id_key_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);
--
-- Database: `tbd_01`
--
--
-- Database: `test`
--
--
-- Database: `vinnera_godemy`
--

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE IF NOT EXISTS `scholarship` (
  `scholarshipid` int(10) NOT NULL,
  `scholarshipname` varchar(100) NOT NULL,
  `shortdescription` varchar(1000) NOT NULL,
  `scholarshippicture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`scholarshipid`, `scholarshipname`, `shortdescription`, `scholarshippicture`) VALUES
(1, 'Public Engagement Competition', 'Access to knowledge is our passion. When it comes to higher education for promising scholars, we don''t want anything to stand in the way. That''s why we''re proud to present the Google Europe Scholarshi', 'scholarship1.PNG'),
(2, 'World Citizen Talent Scholarship', 'Prove you’re a global citizen by applying for our Talent Scholarship We offer a total of 9 scholarships to students who would like to start their Master programme during the academic year 2014-2015', 'scholarship2.PNG'),
(3, 'French Ministry of Foreign Affairs - Eiffel excellence scholarships', 'The French Ministry of Foreign Affairs launched the Eiffel excellence scholarship programme in January 1999 to support French centres of higher education in their international outreach initiatives, in a context of mounting competition among developed countries, to attract elite overseas students on master''s, engineering and PhD courses.', 'scholarship3.PNG'),
(4, 'The Käte Hamburger Kolleg/ Centre for Global Cooperation Research - Autumn 2015 Fellowships', 'The Käte Hamburger Kolleg / Centre for Global Cooperation Research invites applications for fellowships roughly beginning in October 2015. Fellows will join the Centre for a period of six to twelve months. The Centre’s research in 2015 will focus on ''Micro-Politics and Patterns of Legitimation in International Negotiation Arenas''. We invite theoretical and conceptual contributions, discourse and narrative analysis, and also welcome empirical case studies on the role of state and non-state actors in global and regional negotiation processes. The Centre is able to provide funding for respective field research of up to three weeks in selected cases. We are especially interested in projects that bring together insights from interaction between individual and group levels of cooperation in the context of collective action problems (micro-macro nexus). Furthermore, the interface between global and regional negotiation processes is of particular importance for us.', 'scholarship4.PNG'),
(5, 'Facebook Fellowship', 'We are excited to announce that we have expanded the Facebook Fellowship Award to cover two years! The Fellowship Program is open to full-time PhD students (domestic and international) enrolled during the current academic year and studying computer science, computer engineering, electrical engineering, system architecture, or a related area.', 'scholarship5.PNG'),
(6, 'IIASA Funded Postdoctoral Fellowships', 'Every year IIASA provides full funding for several postdoctoral researchers. Scholars are expected to conduct their own research in collaboration with one or more of IIASA''s research programs or speci', 'colorfullskyness.png'),
(7, 'The Hong Kong PhD Fellowship Scheme 2015', 'Established by the Research Grants Council (RGC) of Hong Kong in 2009, the Hong Kong PhD Fellowship Scheme (HKPFS) aims at attracting the best and brightest students in the world to pursue their PhD s', 'colorfullskyness.png');

-- --------------------------------------------------------

--
-- Table structure for table `scholarshipapply`
--

CREATE TABLE IF NOT EXISTS `scholarshipapply` (
`no` int(10) NOT NULL,
  `sessionid` varchar(50) NOT NULL,
  `scholarshipid` int(10) NOT NULL,
  `scholarshipname` varchar(100) NOT NULL,
  `datesubmitted` date NOT NULL,
  `scholarshipstatus` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarshipapply`
--

INSERT INTO `scholarshipapply` (`no`, `sessionid`, `scholarshipid`, `scholarshipname`, `datesubmitted`, `scholarshipstatus`) VALUES
(3, 'gusna', 1, 'Public Engagement Competition', '0000-00-00', 'On Process'),
(4, 'gusna', 1, 'Public Engagement Competition', '0000-00-00', 'On Process'),
(5, 'vina', 2, 'World Citizen Talent Scholarship', '0000-00-00', 'On Process'),
(6, 'vina', 3, 'French Ministry of Foreign Affairs - Eiffel excellence scholarships', '0000-00-00', 'On Process'),
(7, 'gusna', 1, 'Public Engagement Competition', '0000-00-00', 'On Process');

-- --------------------------------------------------------

--
-- Table structure for table `scholarshipdetail`
--

CREATE TABLE IF NOT EXISTS `scholarshipdetail` (
  `scholarshipid` int(10) NOT NULL,
  `fulldescription` varchar(2000) NOT NULL,
  `degreetype` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarshipdetail`
--

INSERT INTO `scholarshipdetail` (`scholarshipid`, `fulldescription`, `degreetype`, `location`, `deadline`) VALUES
(1, 'Here''s how it works:<br><br>Register for the competition\r\n\r\nAnswer the multiple-choice questions<br><br>Submit a video telling "Your Story"  \r\n\r\nApply to The New School for Public Engagement \r\n\r\nApplicants will be judged according to their performance in the quizzes as well as the quality of their video presentations. The winning submission will win a full-tuition scholarship and the runner-up will win a partial-tuition scholarship. ', 'Undergraduate', 'United States of America', '2015-04-01'),
(2, 'Application Process\r\nApplicants will be asked to complete an online application through EmployAbility which includes:\r\n\r\nGeneral background information (i.e. contact information and details about your current and intended universities for the 2014-2015 school year)\r\nResume/CV\r\nAcademic transcripts from your current and prior institutions (if you have earned a prior degree)\r\nA reference letter from a professor, instructor, adviser or supervisor\r\nResponses to essay questions', 'Undergraduate\r\nMaster\r\nPHD', 'Worldwide (participant will choose a location)\r\nVarious locations in Europe', '2015-01-01'),
(3, 'Are you a world citizen?\r\nWe are seeking young, intelligent, talented and ambitious people who view themselves as citizens of the world. If this sounds like you and the conditions listed above apply to you, all you need to do is complete the application form and write an essay of 950 to 1100 words that would convince us to provide you with a scholarship.\r\n\r\nIn the essay, describe your cultural background and explain why and how you can contribute to the multinational, multicultural beehive that is The Hague University of Applied Sciences.\r\n\r\nOur university is an educational united nations of 146 nationalities, where everyone speaks English. You will be taught by both local and international lecturers who have an easy way of interacting with the students. The social contact among the students also makes for an enriching study period.\r\n\r\nInternational city\r\n\r\nThe Hague is the perfect home for our university, it is a very international city which deserves its title - The International City of Peace & Justice. The vibrant seaside resort of Scheveningen, historic city centre and international diplomatic community all add to its international atmosphere. We know from experience that young people of every origin, colour and creed find both The Hague and The Hague University of Applied Sciences stimulating and inspiring.', 'Master', 'Netherlands', '2015-03-31'),
(4, 'Calendar Session 2015/2016\r\n\r\nOpening of the call for applications: October 21th, 2014\r\n\r\nDeadline for receipt of applications by Campus France : January 9th, 2015\r\n\r\nAnnouncement of results: Week of March 23th, 2015\r\n\r\nRules\r\n\r\nEiffel Programme guide – 2015 Session', 'Master\r\nPHD', 'France', '2015-01-09'),
(5, 'Fellowships include a working space in fully equipped offices and a competitive stipend commensurate with the applicant’s level of professional experience. Fellows are expected to contribute to the Centre’s overall line of research and embrace its inter- and multidisciplinary environment. Regular attendance at the Centre is thus required, implying residency in Duisburg or the Rhine-Ruhr region in most cases. Fellowships are mainly offered in the fields of the humanities and social sciences (including social psychology), but may also be granted to scholars in economics, law and the natural sciences. In the latter case, the proposed research project must not require laboratory facilities and should relate to the humanities and social sciences, in particular questions of global cooperation\r\n\r\nApplications (in English) should contain a cover letter, your CV with publication list, a concise research proposal (3-5 pages) plus one relevant publication. Please indicate your preferred period of stay. Please submit your application electronically using our website:www.gcr21.org/fellows/how-to-become-a-fellow/application-form/\r\n\r\nThe deadline for application is 4 January 2015. We particularly encourage female researchers and scholars from the Global South to apply. For questions on this call, contact Mr. Matthias Schuler (schuler@gcr21.uni-due.de).\r\n\r\nPlease, see the PDF file for more information:\r\n\r\nCall for Application', 'Research and Fellowship', 'Germany', '2015-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `scholarshipfacilities`
--

CREATE TABLE IF NOT EXISTS `scholarshipfacilities` (
  `scholarshipid` int(10) NOT NULL,
  `fundingtotal` varchar(100) NOT NULL,
  `fundingsystem` varchar(1000) NOT NULL,
  `fundingperiod` varchar(100) NOT NULL,
  `otherfacilities` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarshipfacilities`
--

INSERT INTO `scholarshipfacilities` (`scholarshipid`, `fundingtotal`, `fundingsystem`, `fundingperiod`, `otherfacilities`) VALUES
(1, 'Covers 100% of tuition and mandatory fees\r\nCovers 50% of tuition nd mandatory fees', 'GRAND PRIZE\r\n\r\nFull scholarship for a bachelor''s degree program at The New School for Public Engagement. The scholarship covers 100% of tuition and mandatory fees for all credits necessary for the student to complete his/her degree.\r\n\r\nWinner’s certificate\r\n\r\n\r\n2ND PRIZE\r\n\r\nPartial scholarship for a bachelor''s degree program at The New School for Public Engagement. The scholarship covers 50% of tuition and mandatory fees for all credits necessary for the student to complete his/her degree.\r\n\r\nWinner’s certificate', '1 Year', '-'),
(2, '€7,000 ', 'Partially Funded\r\n\r\nRecipients of the Google Scholarship for Students with Disabilities will each receive a €7,000 scholarship for the 2015-2016 academic year. Scholarships will be awarded based on the strength of the applicant''s academic background, leadership skills and demonstrated passion for Computer Science.', '2015-2016', '-');

-- --------------------------------------------------------

--
-- Table structure for table `scholarshiplist`
--

CREATE TABLE IF NOT EXISTS `scholarshiplist` (
  `no` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `scholarshipid` int(10) NOT NULL,
  `scholarshipstatus` varchar(100) NOT NULL,
  `scholarshipname` varchar(100) NOT NULL,
  `scholarshipbrief` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarshiplist`
--

INSERT INTO `scholarshiplist` (`no`, `userid`, `scholarshipid`, `scholarshipstatus`, `scholarshipname`, `scholarshipbrief`) VALUES
(1, 1, 1, 'Accepted', 'Public Engagement Competition', 'Congratulation!\r\n\r\nYour next step is:\r\n\r\nSubmit a video telling ”Your Story”  \r\nApply to The New School for Public Engagement '),
(2, 2, 2, 'Rejected', 'Google Europe Scholarship for Students with Disabilities', '-');

-- --------------------------------------------------------

--
-- Table structure for table `scholarshiprequirement`
--

CREATE TABLE IF NOT EXISTS `scholarshiprequirement` (
  `scholarshipid` int(11) NOT NULL,
  `candidatedescription` varchar(2000) NOT NULL,
  `gender` text NOT NULL,
  `age` varchar(10) NOT NULL,
  `nationality` text NOT NULL,
  `degree` varchar(100) NOT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `major` varchar(100) NOT NULL,
  `mingpa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarshiprequirement`
--

INSERT INTO `scholarshiprequirement` (`scholarshipid`, `candidatedescription`, `gender`, `age`, `nationality`, `degree`, `semester`, `major`, `mingpa`) VALUES
(1, 'Open to adult and transfer students that want to complete their bachelor''s degree at The New School for Public Engagement. To be eligible to win the scholarship prize, you need a minimum level of high school/upper secondary school education. Winners are expected to start their bachelor’s program in the fall of 2015.\r\n\r\nIn order to be selected as a finalist in the competition, the participant needs to submit a complete application to the New School for Public Engagement. To claim the scholarship prize, the winner must fulfill all enrollment requirements set by The New School for Public Engagement and be accepted by the Admissions Office.', 'Female or Male', '20-25', 'Afghanistan Albania Algeria Andorra Angola Antigua and Barbuda Argentina Armenia Australia Austria Azerbaijan Bahamas Bahrain Bangladesh Barbados Belarus Belgium Belize Benin Bermuda Bhutan Bolivia Bosnia and Herzegovina Botswana Brazil Brunei Bulgaria Burkina Faso Burundi Cambodia Cameroon Canada Cape Verde Central African Republic Chad Chile China Colombia Comoros Congo: Democratic Republic Congo: Republic Cook Islands Costa Rica Croatia Cuba Cyprus Czech Republic Denmark Djibouti Dominica Dominican Republic East Timor Ecuador Egypt El Salvador Equatorial Guinea Eritrea Estonia Ethiopia Fiji Finland France Gabon Gambia Georgia Germany Ghana Gibraltar Greece Grenada Guatemala Guinea Guinea-Bissau Guyana Haiti Honduras Hong Kong Hungary Iceland India Indonesia Iran Iraq Ireland Israel Italy Ivory Coast Jamaica Japan Jordan Kazakhstan Kenya Kiribati Korea, North Korea, South Kosovo UN1244 (*not recognized by some countries) Kuwait Kyrgyzstan Laos Latvia Lebanon Lesotho Liberia Libya Liechtenstein Lithuania Luxembourg Macau Macedonia (FYROM) Madagascar Malawi Malaysia Maldives Mali Malta Marshall Islands Mauritania Mauritius Mexico Micronesia Moldova Monaco Mongolia Montenegro Morocco Mozambique Myanmar Namibia Nauru Nepal Netherlands New Zealand Nicaragua Niger Nigeria Niue Norway Oman Pakistan Palau Palestinian Authority Panama Papua New Guinea Paraguay Peru Philippines Poland Portugal Puerto Rico Qatar Romania Russia Rwanda Saint Kitts and Nevis Saint Lucia Saint Vincent and the Grenadines Samoa San Marino Sao Tome and Principe Saudi Arabia Senegal Serbia Seychelles Sierra Leone Singapore Slovakia Slovenia Solomon Islands Somalia South Africa South Sudan Spain Sri Lanka Sudan Suriname Swaziland Sweden Switzerland Syria Taiwan Tajikistan Tanzania Thailand Togo Tonga Trinidad and Tobago Tunisia Turkey Turkmenistan Tuvalu Uganda Ukraine  United Arab Emirates United Kingdom United States of America Uruguay Uzbekistan Vanuatu Vatican City Venezuela  Vietnam  West Africa Yemen Zambia Zimbabwe\r\n', 'Undergraduate', '7', 'Administration & Government\r\nEducation\r\nInternational Affairs\r\nMedia & Marketing & PR\r\nPolitics\r\nSoc', '3,50'),
(2, 'Candidates from following field (s):\r\n\r\nComputers & IT Engineering\r\nDescription of Ideal Candidate:\r\n\r\nTo be eligible to apply, applicants must:\r\n\r\nBe currently enrolled at a university in Europe for the 2014-2015 academic year\r\nIntend to be enrolled or accepted as a full-time student in a Bachelor''s, Master''s or PhD program at a university in Europe for the 2015-2016 academic year\r\nBe studying Computer Science, Computer Engineering, Informatics, or a closely related technical ?eld\r\nMaintain a strong academic record\r\nExemplify leadership and a passion for Computer Science and technology\r\nHave a disability (de?ned as a long-term or recurring issue that impacts one or more major activities that others may consider a daily function). This de?nition also includes the perception among others that a disability exists.', 'Female or Male', '-', 'Indonesia', 'Undergraduate\r\nMaster\r\nPHD', '-', 'Computers\r\nIT Engineering', '3,33');

-- --------------------------------------------------------

--
-- Table structure for table `scholarshipstarred`
--

CREATE TABLE IF NOT EXISTS `scholarshipstarred` (
`no` int(10) NOT NULL,
  `sessionid` varchar(50) NOT NULL,
  `scholarshipid` int(10) NOT NULL,
  `scholarshipname` varchar(100) NOT NULL,
  `scholarshipeligibility` varchar(3000) NOT NULL,
  `scholarshipdeadline` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarshipstarred`
--

INSERT INTO `scholarshipstarred` (`no`, `sessionid`, `scholarshipid`, `scholarshipname`, `scholarshipeligibility`, `scholarshipdeadline`) VALUES
(1, 'vina', 3, 'French Ministry of Foreign Affairs - Eiffel excellence scholarships', '', '2015-03-31'),
(2, 'vina', 5, 'Facebook Fellowship', '', '2015-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`userid` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`) VALUES
(1, 'gusna', 'gusna'),
(2, 'vina', 'vina'),
(3, 'eric', 'eric'),
(4, 'azi', 'azi'),
(5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
`userid` int(10) NOT NULL,
  `fullname` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `userphoto` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `nationality` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`userid`, `fullname`, `firstname`, `lastname`, `userphoto`, `email`, `birthday`, `gender`, `nationality`, `address`, `phone`) VALUES
(1, 'Agustina Dwi Mastura', 'Agustina', 'Dwi', 'ÿØÿà\0JFIF\0,,\0\0ÿá>Exif\0\0MM\0*\0\0\0\0\r\0\0\0\0\0\0\0ª\0\0\0\0\0\0\0¼\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0È\0\0\0\0\0\0\0Ð(\0\0\0\0\0\0\01\0\0\0\0\0\0\0Ø2\0\0\0\0\0\0\0ö;\0\0\0\0%\0\0\n\0\0\0\0\0\0\0‚˜\0\0\0\07\0\00‡i\0\0\0\0\0\0hˆ%\0\0\0\0\0\0ø\0\0', 'valala', '0000-00-00', 'birthday', 'yohaa', 'dasas', '085640048333'),
(2, 'Vina Sectiana', 'Virana', 'Sectiana', 'ÿØÿà\0JFIF\0,,\0\0ÿá>Exif\0\0MM\0*\0\0\0\0\r\0\0\0\0\0\0\0ª\0\0\0\0\0\0\0¼\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0È\0\0\0\0\0\0\0Ð(\0\0\0\0\0\0\01\0\0\0\0\0\0\0Ø2\0\0\0\0\0\0\0ö;\0\0\0\0%\0\0\n\0\0\0\0\0\0\0‚˜\0\0\0\07\0\00‡i\0\0\0\0\0\0hˆ%\0\0\0\0\0\0ø\0\0', 'vina.sectiana@mail.ugm.ac.id', '0000-00-00', 'Female', 'Indonesia', 'Yogyakarta', '085666111333'),
(3, '', '', 'eric', '', 'eric@gmail.com', '0000-00-00', '', '', '', ''),
(4, '', '', 'azi', '', 'azi', '0000-00-00', '', '', '', ''),
(5, '', '', '', '', '', '0000-00-00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userfamily`
--

CREATE TABLE IF NOT EXISTS `userfamily` (
`userid` int(10) NOT NULL,
  `fathername` text NOT NULL,
  `fatherbirthday` date NOT NULL,
  `fatheredu` varchar(100) NOT NULL,
  `fatherjob` varchar(100) NOT NULL,
  `fatheraddress` varchar(100) NOT NULL,
  `mothername` text NOT NULL,
  `motherbirthday` date NOT NULL,
  `motheredu` varchar(100) NOT NULL,
  `motherjob` varchar(100) NOT NULL,
  `motheraddress` varchar(100) NOT NULL,
  `siblingcount` varchar(100) NOT NULL,
  `fatherincome` int(100) NOT NULL,
  `motherincome` int(100) NOT NULL,
  `familycontact` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userfamily`
--

INSERT INTO `userfamily` (`userid`, `fathername`, `fatherbirthday`, `fatheredu`, `fatherjob`, `fatheraddress`, `mothername`, `motherbirthday`, `motheredu`, `motherjob`, `motheraddress`, `siblingcount`, `fatherincome`, `motherincome`, `familycontact`) VALUES
(1, 'Kika Mafada', '1965-08-01', 'Magister', 'Dosen', 'Indonesia', 'Alika', '1965-08-01', 'Magister', 'Guru Cin', 'Yogyakarta', '10', 123123, 123123, '1000000000000'),
(2, 'Tono', '1959-03-09', 'PHD', 'Lecturer', 'Yogyakarta', 'Susi', '1960-09-03', 'Master', 'Enterpreneur', 'Yogyakarta', '1', 7000000, 10000000, '0298546839'),
(3, 'None', '0000-00-00', '', '', '', 'None', '0000-00-00', '', '', '', '', 0, 0, ''),
(4, 'None', '0000-00-00', '', '', '', 'None', '0000-00-00', '', '', '', '', 0, 0, ''),
(5, 'None', '0000-00-00', '', '', '', 'None', '0000-00-00', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `userregister`
--

CREATE TABLE IF NOT EXISTS `userregister` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `emailaddress` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userschool`
--

CREATE TABLE IF NOT EXISTS `userschool` (
`userid` int(10) NOT NULL,
  `schoolname` varchar(100) NOT NULL,
  `schoolmajor` varchar(100) NOT NULL,
  `schoolyear` int(100) NOT NULL,
  `schoolfield` text NOT NULL,
  `schoolgpa` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userschool`
--

INSERT INTO `userschool` (`userid`, `schoolname`, `schoolmajor`, `schoolyear`, `schoolfield`, `schoolgpa`) VALUES
(1, 'AMIKOM', 'Information Technology', 2011, 'Engineering', '3,0'),
(2, 'AMIKOM', 'Information Technology', 2011, 'Engineering', '3,0'),
(3, 'None', '', 0, '', ''),
(4, 'None', '', 0, '', ''),
(5, 'None', '', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
 ADD UNIQUE KEY `scholarshipid` (`scholarshipid`);

--
-- Indexes for table `scholarshipapply`
--
ALTER TABLE `scholarshipapply`
 ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `scholarshipdetail`
--
ALTER TABLE `scholarshipdetail`
 ADD UNIQUE KEY `scholarshipid` (`scholarshipid`);

--
-- Indexes for table `scholarshipfacilities`
--
ALTER TABLE `scholarshipfacilities`
 ADD UNIQUE KEY `scholarshipid` (`scholarshipid`);

--
-- Indexes for table `scholarshiplist`
--
ALTER TABLE `scholarshiplist`
 ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `scholarshiprequirement`
--
ALTER TABLE `scholarshiprequirement`
 ADD UNIQUE KEY `scholarshipid` (`scholarshipid`);

--
-- Indexes for table `scholarshipstarred`
--
ALTER TABLE `scholarshipstarred`
 ADD PRIMARY KEY (`no`), ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
 ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `userfamily`
--
ALTER TABLE `userfamily`
 ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `userschool`
--
ALTER TABLE `userschool`
 ADD UNIQUE KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scholarshipapply`
--
ALTER TABLE `scholarshipapply`
MODIFY `no` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `scholarshipstarred`
--
ALTER TABLE `scholarshipstarred`
MODIFY `no` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `userfamily`
--
ALTER TABLE `userfamily`
MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `userschool`
--
ALTER TABLE `userschool`
MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;--
-- Database: `vinnera_smartq`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `mynumber` int(10) NOT NULL,
  `remain` int(10) NOT NULL,
  `antri` tinyint(1) NOT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`mynumber`, `remain`, `antri`, `id`) VALUES
(1, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `totalque` int(10) NOT NULL,
  `currentque` int(10) NOT NULL,
  `average` int(10) NOT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`totalque`, `currentque`, `average`, `id`) VALUES
(1, 0, 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
 ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
