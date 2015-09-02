<?php

/**
 * Charity- offline import
 *  
 * @package     charity
 * @version     v.1.0
 */

require_once CHY_THEME_DIR . "/vendor/import/options/charity-option-after-oneclick.php";
$locations = array(); //get_theme_mod('nav_menu_locations'); 
$menus = wp_get_nav_menus();
if ($menus) {
    foreach ($menus as $menu) {
        $locations[str_replace("-", "_", $menu->slug)] = $menu->term_id;
    }
}

set_theme_mod('nav_menu_locations', $locations); // set menus to locations    

if (!function_exists('wp_upgrade')) :
    require_once ABSPATH . '/wp-admin/includes/upgrade.php';
endif;
wp_upgrade();


$user = \wp_signon(array("user_login" => "admin", "user_password" => "123456"), false);
\wp_redirect(admin_url("themes.php?&offline=succes&page=vpt_option#_menu_util"));
die();
