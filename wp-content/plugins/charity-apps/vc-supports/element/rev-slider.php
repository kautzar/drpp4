<?php

return array(
    "name" => __("Slider Section", "charity"),
    "base" => "slider_section",
    "class" => "",
    "icon" => "icon-charity",
    "description" => "Use Here Slider Content",
    "category" => __('Charity Shortcodes', "charity"),
    "params" => array(
        array(
            "type" => "dropdown",
            "class" => "",
            "heading" => __("Select Slider Style", "charity"),
            "param_name" => "slider",
            "value" => array("home1", "home2", "home3", "ShopLanding"),
            "description" => __("Select Here Style for Slider section.", "charity")
        ),
        array(
            "type" => "textarea_html",
            "class" => "",
            "heading" => __("Slider Shortcode", "charity"),
            "param_name" => "content",
            "description" => __("Enter here slider shortcode.", "charity")
        ),
    )
);
