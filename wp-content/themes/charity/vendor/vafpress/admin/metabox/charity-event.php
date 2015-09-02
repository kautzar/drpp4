<?php

/**
 * Charity - Product breadcrumb metabox
 *
 * @package  charity
 * @version  v.1.0
 */
return array(
    'id' => 'charity_event',
    'types' => array("event"),
    'title' => __('Charity Event', 'charity'),
    'priority' => 'high',
    'template' => array(
        array(
            'type' => 'upload',
            'name' => 'event_video_image',
            'label' => __('Video image', 'charity'),
            'description' => __('Choose the image for the video to upload', 'charity'),
        ),
        array(
            'type' => 'textbox',
            'name' => 'event_you_tube_url',
            'label' => __('YouTube URL', 'charity'),
            'description' => __('Enter the URL of the YouTube video to upload', 'charity'),
        ),
        array(
            'type' => 'textbox',
            'name' => 'event_vimeo_url',
            'label' => __('Vimeo URL', 'charity'),
            'description' => __('Enter the URL of the Vimeo video to upload', 'charity'),
        ),
    ),
);


