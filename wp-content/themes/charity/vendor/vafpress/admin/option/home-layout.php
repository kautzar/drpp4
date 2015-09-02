<?php

return array(
    array(
        'type' => 'section',
        'title' => __('CAUSES LAYOUT', 'charity'),
        'name' => 'casuses_layout_settings',
        'description' => __('Manage Causes Layout Settings Here According To Choice', 'charity'),
        'fields' => array(
            array(
                'type' => 'toggle',
                'name' => 'single_causes_mode',
                'label' => __('Single Causes Mode', 'charity'),
                'description' => __('Set single causes mode to on or off', 'charity'),
            )
        )
    ),
    array(
        'type' => 'section',
        'title' => __('MULTIPLE CAUSES HOME LAYOUT', 'charity'),
        'name' => 'home_layout_settings',
        'description' => __('Manage Home Page Layout Settings Here According To Choice', 'charity'),
        'fields' => array(
            array(
                'type' => 'select',
                'name' => 'charity_home_1_select',
                'label' => __('Select Home Page 1', 'charity'),
                'description' => __('Select page for home 1', 'charity'),
                'items' => array(
                    'data' => array(
                        array(
                            'source' => 'function',
                            'value' => 'vp_get_pages',
                        ),
                    ),
                ),
            ),
            array(
                'type' => 'select',
                'name' => 'charity_home_2_select',
                'label' => __('Select Home Page 2', 'charity'),
                'description' => __('Select page for home 2', 'charity'),
                'items' => array(
                    'data' => array(
                        array(
                            'source' => 'function',
                            'value' => 'vp_get_pages',
                        ),
                    ),
                ),
            ),
            array(
                'type' => 'select',
                'name' => 'charity_home_3_select',
                'label' => __('Select Home Page 3', 'charity'),
                'description' => __('Select page for home 3', 'charity'),
                'items' => array(
                    'data' => array(
                        array(
                            'source' => 'function',
                            'value' => 'vp_get_pages',
                        ),
                    ),
                ),
            ),
            array(
                'type' => 'select',
                'name' => 'charity_home_shoplanding',
                'label' => __('Select Home Shop Landing', 'charity'),
                'description' => __('Select page for home Shop Landing', 'charity'),
                'items' => array(
                    'data' => array(
                        array(
                            'source' => 'function',
                            'value' => 'vp_get_pages',
                        ),
                    ),
                ),
            ),
            array(
                'type' => 'radioimage',
                'name' => 'home_layout',
                'label' => __('Select Homepage Layout Here', 'charity'),
                'description' => __('Select Homepage Layout Here', 'charity'),
                'items' => array(
                    array(
                        'value' => 'default',
                        'label' => __('Blog Layout', 'charity'),
                        'img' => CHY_THEME_URL . '/assets/img/blogLayout.jpeg',
                    ),
                    array(
                        'value' => 'one',
                        'label' => __('Home 1', 'charity'),
                        'img' => CHY_THEME_URL . '/assets/img/homeOne.png',
                    ),
                    array(
                        'value' => 'two',
                        'label' => __('Home 2', 'charity'),
                        'img' => CHY_THEME_URL . '/assets/img/homeTwo.png',
                    ),
                    array(
                        'value' => 'three',
                        'label' => __('Home 3', 'charity'),
                        'img' => CHY_THEME_URL . '/assets/img/homeThree.png',
                    ),
                    array(
                        'value' => 'shoplanding',
                        'label' => __('Shop Landing', 'charity'),
                        'img' => CHY_THEME_URL . '/assets/img/shop-landing.png',
                    ),
                ),
            ),
        ),
    ),
    array(
        'type' => 'section',
        'title' => __('SINGLE CAUSES HOME LAYOUT', 'charity'),
        'name' => 'home_layout_single_settings',
        'description' => __('Manage Home Page Layout Settings Here According To Choice', 'charity'),
        'dependency' => array(
            'field' => 'single_causes_mode',
            'function' => 'vp_dep_boolean',
        ),
        'fields' => array(
            array(
                'type' => 'select',
                'name' => 'charity_single_cause_id',
                'label' => __('Single Causes Donation', 'charity'),
                'description' => __('Choose single causes for donation', 'charity'),
                'items' => array(
                    'data' => array(
                        array(
                            'source' => 'function',
                            'value' => 'vp_get_all_causes',
                        ),
                    ),
                )
            ),
            array(
                'type' => 'date',
                'name' => 'single_causes_date',
                'label' => __('Select Date', 'charity'),
                'description' => __('Choose to set target date here', 'charity'),
                'format' => 'dd-mm-yy',
            ),
            
            array(
                'type' => 'select',
                'name' => 'charity_home_4_select',
                'label' => __('Select Home Page 1', 'charity'),
                'description' => __('Select Single Causes For Home 1', 'charity'),
                'items' => array(
                    'data' => array(
                        array(
                            'source' => 'function',
                            'value' => 'vp_get_pages',
                        ),
                    ),
                ),
            ),
            array(
                'type' => 'select',
                'name' => 'charity_home_5_select',
                'label' => __('Select Home Page 2', 'charity'),
                'description' => __('Select Single Causes For Home 1', 'charity'),
                'items' => array(
                    'data' => array(
                        array(
                            'source' => 'function',
                            'value' => 'vp_get_pages',
                        ),
                    ),
                ),
            ),
            array(
                'type' => 'radioimage',
                'name' => 'causes_home_layout',
                'label' => __('Select Homepage Layout Here', 'charity'),
                'description' => __('Select Causes Homepage Layout Here', 'charity'),
                'items' => array(
                    array(
                        'value' => 'four',
                        'label' => __('Home 1', 'charity'),
                        'img' => CHY_THEME_URL . '/assets/img/homeFour.png',
                    ),
                    array(
                        'value' => 'five',
                        'label' => __('Home 2', 'charity'),
                        'img' => CHY_THEME_URL . '/assets/img/homeFive.png',
                    ),
                ),
            ),
        )
    ),
);

