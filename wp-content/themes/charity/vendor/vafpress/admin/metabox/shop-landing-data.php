<?php

return array(
    'id' => 'shoplanding',
    'types' => array('post','page'),
    'title' => __('Shop Landing', 'charity'),
    'priority' => 'high',
    'template' => array(
    		array(
    				'type' => 'textarea',
    				'name' => 'slidershortcode',
    				'label' => __('Short Code', 'charity'),
    				'description' => __('Enter short code for revolution slider here', 'charity'),
    		),
    		array(
    				'type' => 'upload',
    				'name' => 'imgOne',
    				'label' => __('Left Image', 'charity'),
    				'description' => __('Uplode Image For Left Side', 'charity'),
    		),
    		array(
    				'type' => 'textarea',
    				'name' => 'imgOneText',
    				'label' => __('Left Image text', 'charity'),
    				'description' => __('Enter text for Left Image here', 'charity'),
    		),
    		array(
    				'type' => 'textarea',
    				'name' => 'imgOneTextsecond',
    				'label' => __('Left Image Text 2', 'charity'),
    				'description' => __('Enter second text for Left Image here', 'charity'),
    		),
    		
    		
    		array(
    				'type' => 'upload',
    				'name' => 'imgtwo',
    				'label' => __('Right Image', 'charity'),
    				'description' => __('Uplode Image For Right Side', 'charity'),
    		),
    		array(
    				'type' => 'Textarea',
    				'name' => 'imgtwoText',
    				'label' => __('Right Image text', 'charity'),
    				'description' => __('Enter text for Right Image here', 'charity'),
    		),
    		array(
    				'type' => 'upload',
    				'name' => 'imgtwo2',
    				'label' => __('Right Image Second', 'charity'),
    				'description' => __('Uplode Image For Right Side In text ', 'charity'),
    		), 
    		
    		
    		array(
    				'type' => 'textbox',
    				'name' => 'productTitle',
    				'label' => __('Upcomming Product Title', 'charity'),
    				'description' => __('Enter text for upcoming product title', 'charity'),
    		),
    		array(
    				'type' => 'upload',
    				'name' => 'product-image',
    				'label' => __('Upcomming Product Image', 'charity'),
    				'description' => __('Upload image for right side for upcoming product', 'charity'),
    		),
    		array(
    				'type' => 'textarea',
    				'name' => 'product-content',
    				'label' => __('Upcomming Product Text', 'charity'),
    				'description' => __('Enter text for upcoming product', 'charity'),
    		),
    ),
);

/**
 * EOF
 */
