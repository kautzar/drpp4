<?php 
/**
 * Charity- Vender for lib evnt data import
 *  
 * @package     charity
 * @version     v.1.0
 */

charity_em_events_data();

 
 function charity_em_events_data(){
	global $wpdb;
$our="";
$events=<<<tag1
INSERT INTO `{$wpdb->prefix}em_events` (`event_id`, `post_id`, `event_slug`, `event_owner`, `event_status`, `event_name`, `event_start_time`, `event_end_time`, `event_all_day`, `event_start_date`, `event_end_date`, `post_content`, `event_rsvp`, `event_rsvp_date`, `event_rsvp_time`, `event_rsvp_spaces`, `event_spaces`, `event_private`, `location_id`, `recurrence_id`, `event_category_id`, `event_attributes`, `event_date_created`, `event_date_modified`, `recurrence`, `recurrence_interval`, `recurrence_freq`, `recurrence_byday`, `recurrence_byweekno`, `recurrence_days`, `recurrence_rsvp_days`, `blog_id`, `group_id`) VALUES
(1, 523, 'event-heading-here', 1, 1, 'Event Heading here', '00:00:00', '00:00:00', 0, '2015-06-10', '2015-06-26', 'lacinia at aliquam vel justo Phasellus felis purus placerat vel augue vitae aliquam tincidunt dolor Sed hendrerit diam in mattis mollis Donec ut tincidunt magn Nullam hendrerit pellentesque pellentesque Sed ultrices arcu non dictum porttitor Nam ac leo arcu Aliquam erat volutpat Suspendisse eget congue justo  Class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos himenaeos Aliquam erat volutpat lacinia at aliquam vel justo Phasellus felis purus placerat vel augue vitae aliquam tincidunt dolor Sed hendrer  diam in mattis mollis Donec ut tincidunt magn Nullam hendrerit pellentesque pellentesque Sed ultrices arc non dictum porttitor Nam ac leo arcu Aliquam erat volutpat Suspendisse eget congue justo  Class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos himenaeos Aliquam erat volutpat\r\n\r\nNam ac leo arcu Aliquam erat volutpat Suspendisse eget congue justo  Class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos himenaeos Aliquam erat volutpat Nam ac leo arcu Aliquam erat volutpat Suspendisse eget congue justa per inceptos himenaeos Aliquam erat volutpat purus placerat vel augue vitae aliquam tincidunt dolor Sed hendrer  diam in mattis mollis Donec ut tincidunt magn Nullam hendrerit pellentesque pellentesque.\r\n\r\n[blockquote]lacinia lectus quis nisl aliquam non accumsan dui molestie vivamus rutrum nisl vel consequat sollicitudi mau nulla luctus libero quis feugiat velit lectus nec felis aliquam suscipit quis odio a volutpat aenean sed[/blockquote]\r\n\r\n<a href="htt{$our}p://theemon.com/c/charity-wp/PlaceHolder/wp-content/uploads/2015/06/event-details-img.jpg"><img class="alignright wp-image-539 size-medium" src="htt{$our}p://theemon.com/c/charity-wp/PlaceHolder/wp-content/uploads/2015/06/event-details-img-300x248.jpg" alt="event-details-img" width="300" height="248" /></a>\r\n<h2> Highlights of the event</h2>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,\r\n\r\nhas been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived.', 0, NULL, '00:00:00', NULL, 0, 0, 1, NULL, NULL, 'a:2:{s:14:"slide_template";s:7:"default";s:13:"charity_event";s:210:"a:3:{s:17:"event_video_image";s:87:"ht{$our}tp://theemon.com/c/charity-wp/PlaceHolder/wp-content/uploads/2015/04/banner-image.png";s:18:"event_you_tube_url";s:11:"youtube.com";s:15:"event_vimeo_url";s:9:"vimeo.com";}";}', '2015-06-18 11:50:32', '2015-06-19 03:57:11', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
(2, 529, 'event-heading-here-2', 1, 1, 'Event Heading here', '00:00:00', '00:00:00', 0, '2015-06-18', '2015-06-24', 'lacinia at aliquam vel justo Phasellus felis purus placerat vel augue vitae aliquam tincidunt dolor Sed hendrerit diam in mattis mollis Donec ut tincidunt magn Nullam hendrerit pellentesque pellentesque Sed ultrices arcu non dictum porttitor Nam ac leo arcu Aliquam erat volutpat Suspendisse eget congue justo  Class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos himenaeos Aliquam erat volutpat', 0, NULL, '00:00:00', NULL, 0, 0, 1, NULL, NULL, 'a:2:{s:14:"slide_template";s:7:"default";s:13:"charity_event";s:210:"a:3:{s:17:"event_video_image";s:87:"ht{$our}tp://theemon.com/c/charity-wp/PlaceHolder/wp-content/uploads/2015/04/banner-image.png";s:18:"event_you_tube_url";s:11:"youtube.com";s:15:"event_vimeo_url";s:9:"vimeo.com";}";}', '2015-06-18 11:59:32', '2015-06-19 03:57:26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
(3, 530, 'event-heading-here-3', 1, 1, 'Event Heading here', '00:00:00', '00:00:00', 0, '2015-06-23', '2015-06-28', 'lacinia at aliquam vel justo Phasellus felis purus placerat vel augue vitae aliquam tincidunt dolor Sed hendrerit diam in mattis mollis Donec ut tincidunt magn Nullam hendrerit pellentesque pellentesque Sed ultrices arcu non dictum porttitor Nam ac leo arcu Aliquam erat volutpat Suspendisse eget congue justo  Class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos himenaeos Aliquam erat volutpat', 0, NULL, '00:00:00', NULL, 0, 0, 1, NULL, NULL, 'a:2:{s:14:"slide_template";s:7:"default";s:13:"charity_event";s:101:"a:3:{s:17:"event_video_image";s:0:"";s:18:"event_you_tube_url";s:0:"";s:15:"event_vimeo_url";s:0:"";}";}', '2015-06-18 12:00:57', '2015-06-19 03:57:40', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
(4, 531, 'event-heading-here-4', 1, 1, 'Event Heading here', '00:00:00', '00:00:00', 0, '2015-06-27', '2015-06-30', 'lacinia at aliquam vel justo Phasellus felis purus placerat vel augue vitae aliquam tincidunt dolor Sed hendrerit diam in mattis mollis Donec ut tincidunt magn Nullam hendrerit pellentesque pellentesque Sed ultrices arcu non dictum porttitor Nam ac leo arcu Aliquam erat volutpat Suspendisse eget congue justo  Class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos himenaeos Aliquam erat volutpat', 0, NULL, '00:00:00', NULL, 0, 0, 1, NULL, NULL, 'a:2:{s:14:"slide_template";s:7:"default";s:13:"charity_event";s:101:"a:3:{s:17:"event_video_image";s:0:"";s:18:"event_you_tube_url";s:0:"";s:15:"event_vimeo_url";s:0:"";}";}', '2015-06-18 12:01:52', '2015-06-19 03:57:51', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0);
tag1;


$loactions=<<<tag2
UPDATE `{$wpdb->prefix}em_locations` SET `location_address`=' A-2, Sector-63, ',`location_town`='Noida',`location_state`='Noida',`location_postcode`='201301',`location_country`='IN',`location_latitude`=28.615795,`location_longitude`=77.378944 WHERE `location_id`=1;
tag2;

$status=<<<tag3
UPDATE `{$wpdb->prefix}posts` SET `post_status`='publish' WHERE `post_type`='event';
tag3;

	 $wpdb->query($events);
	 $wpdb->query($loactions);
	 $wpdb->query($status);
	
	 for($i=314; $i<=324; $i++){
		$wpdb->query("DELETE FROM `{$wpdb->prefix}postmeta` WHERE `meta_id` = ".$i);
	}
	
	
}
    
