<?php

return array(
    'id' => 'testimonial',
    'types' => array("testimonial"),
    'title' => __('Testimonial', 'charity'),
    'priority' => 'high',
    'template' => array(
        array(
            'type' => 'textbox',
            'name' => 'companey_name',
            'label' => __('Company name', 'charity'),
            'description' => __('Enter the name of the new company and designation', 'charity'),
        ),
        array(
            'type' => 'textbox',
            'name' => 'urllink',
            'label' => __('Site Url', 'charity'),
            'description' => __('Enter the site URL here', 'charity'),
        ),
    )
);

/**
 * EOF
 */
