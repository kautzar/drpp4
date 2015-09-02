<?php

return array(
    'id' => 'our_story_text',
    'types' => array("post", "page", 'charity_our_story'),
    'title' => __('Our story Summary Text', 'charity'),
    'priority' => 'high',
    'template' => array(
        array(
            'type' => 'textarea',
            'name' => 'our_story_text_sammury',
            'label' => __('Our Story Summary Text', 'charity'),
            'description' => __('Enter text for our story summary here', 'charity'),
        ),
        array(
            'type' => 'textarea',
            'name' => 'our_story_text',
            'label' => __('Our Story Text', 'charity'),
            'description' => __('Enter text for Our Story', 'charity'),
        ),
    ),
);

/**
 * EOF
 */
