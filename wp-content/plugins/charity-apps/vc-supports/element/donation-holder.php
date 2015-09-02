<?php

return array(
    "name" => __("Donation Holder Say", "charity"),
    "base" => "donation_holder_say",
    "class" => "",
    "icon" => "icon-charity",
    "description" => "Place donation holder say crausel",
    "category" => __('Charity Shortcodes', "charity"),
    "params" => array(
        array(
            "type" => "dropdown",
            "class" => "",
            "heading" => __("Select style", "charity"),
            "param_name" => "testimonial",
            "value" => array("home1", "home2", "home3", "ShopLanding"),
            "description" => __("Select style of the testimonial.", "charity")
        ),
        array(
            "type" => "attach_image",
            "class" => "",
            "heading" => __("Upload Image", "charity"),
            "param_name" => "testimonial_bg",
            "description" => __("Upload Testimonial Background Image Only For Home 1 and Shop Landing", "charity")
        ),
    )
);
