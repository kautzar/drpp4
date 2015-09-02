<?php

$pages = get_posts(array('posts_per_page' => -1, 'post_type' => 'page'));
$allPages = array();
foreach ($pages as $page) {
    $allPages[] = $page->post_title . ' {' . $page->ID . '}';
}
return array(
    "name" => __("Home Become Volunteer", "charity"),
    "base" => "home_become_volunteer",
    "class" => "",
    "icon" => "icon-charity",
    "description" => "Place become volunteer",
    "category" => __('Charity Shortcodes', "charity"),
    "params" => array(
        array(
            "type" => "dropdown",
            "class" => "",
            "heading" => __("Select Here Sub Page", "charity"),
            "param_name" => "page_volunteer",
            "value" => $allPages,
            "description" => __("Select From Here Become a Volunteer.", "charity")
        ),
    )
);
