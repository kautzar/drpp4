<?php
/**
 * The header for our theme.
 * @package charity
 * @version     v.1.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo('charset'); ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--[if lt IE 9]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <?php wp_head(); ?>
    </head>
    <body <?php body_class(); ?>>
        <div id="wrapper" class="<?php echo esc_attr(vp_option('vpt_option.page_layout')); ?>">
            <!--Header Section Start Here -->
            <?php do_action("charity_header_layout"); ?>
            <!-- Header Section End Here -->
            <!-- Site Content -->
            <div id="main">		
