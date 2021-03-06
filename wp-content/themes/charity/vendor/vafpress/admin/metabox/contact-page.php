<?php

return array(
    'id' => 'contact_page',
    'types' => array("page"),
    'title' => __('Contact Form', 'charity'),
    'priority' => 'high',
    'template' => array(
    	array(
            'type' => 'textbox',
            'name' => 'contact_page_form_title',
            'label' => __('Contact Form Title', 'charity'),
            'description' => __('Add Title', 'charity'),
        ),
        array(
            'type' => 'textbox',
            'name' => 'contact-page-form',
            'label' => __('Contact Form', 'charity'),
            'description' => __('Send Your Query', 'charity'),
        ),
    ),
);

/**
 * EOF
 */
