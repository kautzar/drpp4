<?php
/**
 * Charity - breadcrumb metabox
 *
 * @package  charity
 * @version  v.1.0
 */
return array(
    'id' => 'breadcrumb',
    'types' => array("post", "page", "charity-causes"),
    'title' => __('Breadcrumb settings', 'charity'),
    'priority' => 'high',
    'template' => array(
        array(
            'type' => 'upload',
            'name' => 'image',
            'label' => __('Breadcrumb image', 'charity'),
            'description' => __('Upload breadcrumb images(Size 1348x899)', 'charity'),
        ),
    ),
);

