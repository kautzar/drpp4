<?php

/**
 * Plugin Name: Charity Apps 
 * Plugin URI: http://theemon.com/ 
 * Description: Charity Theme apps having CPT, Shortcode 
 * Author: Theemon WordPress Team 
 * 
 * @package     charity-apps
 * @version     v.1.0
 * 
 */
include_once 'cpt/cpt.php';
include_once 'shortcode/shortcode.php';
//if (defined('WPB_VC_VERSION')) {
include_once 'vc-supports/vc-supports.php';
//}