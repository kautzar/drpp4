<?php

return array(
    'id' => 'helpicon',
    'types' => array('post','page'),
    'title' => __('How Can Help', 'charity'),
    'priority' => 'high',
    'template' => array(
        array(
            'type' => 'group',
            'repeating' => true,
            'name' => 'helpicon_group',
            'title' => __('Help Icon', 'charity'),
            'fields' => array(
                array(
                    'type' => 'upload',
                    'name' => 'helpicon',
                    'label' => __('Fontawesome Icon', 'charity'),
                    'description' => __('Upload Icon', 'charity'),
                ),
            		array(
            				'type' => 'textbox',
            				'name' => 'helptitle',
            				'label' => __('Help Title', 'charity'),
            				'description' => __('Add Title', 'charity'),
            		),
            		array(
            				'type' => 'textarea',
            				'name' => 'helpcontent',
            				'label' => __('Help Content', 'charity'),
            				'description' => __('Enter Description About Help', 'charity'),
            		),
            ),
        ),
    		array(
    				'type' => 'upload',
    				'name' => 'help-video-image',
    				'label' => __('Video Image', 'charity'),
    				'description' => __('Upload Video Image', 'charity'),
    		),
    		
    		array(
    				'type' => 'textarea',
    				'name' => 'help-video',
    				'label' => __('Video', 'charity'),
    				'description' => __('Add Video iFrame', 'charity'),
    		),
    		array(
    				'type' => 'textarea',
    				'name' => 'shortdescription',
    				'label' => __('Description for home 3', 'charity'),
    				'description' => __('Write Short Description About Home2', 'charity'),
    		),
    ),
);

/**
 * EOF
 */
