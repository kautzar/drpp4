<?php

/**
 * Charity functions 
 * @package charity
 * @version     v.1.0
 * 
 */
define('CHY_THEME_DIR', get_template_directory());
define('CHY_THEME_URL', get_template_directory_uri());


require_once CHY_THEME_DIR . "/inc/theme-setup.php";
require_once CHY_THEME_DIR . "/inc/enqueue-scripts.php";
require_once CHY_THEME_DIR . "/inc/login-form.php";
require_once CHY_THEME_DIR . "/inc/helper-functions.php";
require_once CHY_THEME_DIR . "/inc/comment-list-callback.php";
require_once CHY_THEME_DIR . "/inc/causes-helper.php";
require_once CHY_THEME_DIR . "/inc/breadcrumb-hooks.php";
require_once CHY_THEME_DIR . "/inc/causes-hooks.php";
require_once CHY_THEME_DIR . "/inc/post-format-hooks.php";
require_once CHY_THEME_DIR . "/inc/portfolio-hooks.php";
require_once CHY_THEME_DIR . "/inc/gallery-hooks.php";
require_once CHY_THEME_DIR . "/inc/page-layout.php";
require_once CHY_THEME_DIR . "/inc/event.php";

require_once CHY_THEME_DIR . "/inc/lib/pagination.php";
require_once CHY_THEME_DIR . "/inc/lib/breadcrumb.php";
require_once CHY_THEME_DIR . "/inc/lib/nav-walker.php";
require_once CHY_THEME_DIR . "/inc/lib/image-resize.php";
require_once CHY_THEME_DIR . "/inc/lib/social-links.php";
require_once CHY_THEME_DIR . "/inc/lib/donation-payment.php";

require_once CHY_THEME_DIR . "/inc/user/meta.php";

require_once CHY_THEME_DIR . "/inc/widgets/register-sidebar.php";
require_once CHY_THEME_DIR . "/inc/widgets/widgets.php";

require_once CHY_THEME_DIR . "/inc/woocommerce/woocommerce.php";


require_once CHY_THEME_DIR . '/vendor/vafpress/vafpress.php';
require_once CHY_THEME_DIR . '/vendor/import/charity-import.php';