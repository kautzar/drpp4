<?php

/**
 * Charity- import system
 *  
 * @package     charity
 * @version     v.1.0
 */
require_once CHY_THEME_DIR . "/vendor/import/charity-tgm-settings.php";

if (isset($_GET['oneclk']) && $_GET['oneclk'] == "signon") {

    require_once CHY_THEME_DIR . "/vendor/import/offline/offline.php";
} else {

    require_once CHY_THEME_DIR . "/vendor/import/options/easypay-form-import.php";
    require_once CHY_THEME_DIR . "/vendor/import/options/easypay-option-import.php";
    require_once CHY_THEME_DIR . "/vendor/import/options/easypay-builder-import.php";
    require_once CHY_THEME_DIR . "/vendor/import/options/easypay-stripe-import.php";
    require_once CHY_THEME_DIR . "/vendor/import/options/visual-option-import.php";

    require_once CHY_THEME_DIR . "/vendor/import/options/charity-option-after-theme-active.php";


    require_once CHY_THEME_DIR . '/vendor/import/oneclick/oneclick.php';
}
