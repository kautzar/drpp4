<?php

return array(
    array(
        'type' => 'section',
        'title' => __('BreadCrumb Default Image', 'charity'),
        'name' => 'ch_404page_settings',
        'description' => __('Upload BreadCrumb Default Image Here', 'charity'),
        'fields' => array(
            array(
                'type' => 'upload',
                'name' => 'img_404',
                'label' => __('Insert BreadCrumb Default Image Here', 'charity'),
                'description' => __('Uplaod Here BreadCrumb Default Image', 'charity'),
                'default' => 'http://lorempixel.com/500/400/animals/',
            ),
        )
    ),
    array(
        'type' => 'section',
        'title' => __('Custom CSS', 'charity'),
        'name' => 'ch_custom_code_css_js_settings',
        'description' => __('Add Custom CSS and JS in this section to make a few changes & see it live in the site', 'charity'),
        'fields' => array(
            array(
                'type' => 'textarea',
                'name' => 'ch_css',
                'label' => __('Custom CSS', 'charity'),
                'description' => __('Write Custom CSS In This Section', 'charity'),
                'theme' => 'charity',
                'mode' => 'css',
            ),
            array(
                'type' => 'textarea',
                'name' => 'ch_js',
                'label' => __('Custom JS', 'charity'),
                'description' => __('Write Custom JS Here', 'charity'),
                'theme' => 'twilight',
                'mode' => 'javascript',
            ),
        )
    )
);