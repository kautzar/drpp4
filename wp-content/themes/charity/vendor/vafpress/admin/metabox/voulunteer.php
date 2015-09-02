<?php

return array(
    'id' => 'volunteer',
    'types' => array('post', 'page'),
    'title' => __('Volunteer For Home One', 'charity'),
    'priority' => 'high',
    'template' => array(
        array(
            'type' => 'textbox',
            'name' => 'volunteer-title',
            'label' => __('Volunteer Title', 'charity'),
            'description' => __('Enter Title For Volunteer', 'charity'),
        ),
        array(
            'type' => 'upload',
            'name' => 'volunteer-image',
            'label' => __('Volunteer Image', 'charity'),
            'description' => __('Upload Volunteer Image', 'charity'),
        ),
        array(
            'type' => 'textarea',
            'name' => 'volunteer-content',
            'label' => __('Volunteer Content', 'charity'),
            'description' => __('Enter Volunteer Description', 'charity'),
        ),
    ),
);

/**
 * EOF
 */
