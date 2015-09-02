<?php

return array(
    array(
        'type' => 'section',
        'title' => __('Logo Settings', 'charity'),
        'name' => 'logo-settings',
        'description' => __('General Logos Settings To Regulate Theme Accordingly', 'charity'),
        'fields' => array(
            array(
                'type' => 'upload',
                'name' => 'favicon',
                'label' => __('Upload Favicon', 'charity'),
                'description' => __('Upload A Favicon To Your Site', 'charity'),
                'default' => CHY_THEME_URL . '/favicon.ico',
            ),
            array(
                'type' => 'upload',
                'name' => 'site_logo',
                'label' => __('Upload Logo', 'charity'),
                'description' => __('Include a logo that suits your website', 'charity'),
                'default' => CHY_THEME_URL . '/assets/img/logo.png',
            ),
            array(
                'type' => 'upload',
                'name' => 'site_header_two_logo',
                'label' => __('Add Header Logo', 'charity'),
                'description' => __('Upload logos for 2nd and 3rd Header', 'charity'),
                'default' => CHY_THEME_URL . '/assets/img/logo-second.png',
            ),
        )
    )
);