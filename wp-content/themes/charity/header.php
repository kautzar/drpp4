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
        <style type="text/css">.slide-heading,
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: 'Montserrat', sans-serif;
}
/*
    Style for Switcher
*/
div.style-switcher h4 {
  background: #ecc731;
}
div.style-switcher h4 a {
  background: #ecc731;
}
.tp-caption .anim-icon:hover,
.tp-caption .anim-icon:focus {
  color: #ecc731;
}
.anim-icon.fill:hover,
.jump:hover,
.pagination-wrap [class^="page-"]:hover,
.accordion-sec .panel-title > a:hover,
.panel-list .list-group-item > a:hover,
.anim-icon.fill:focus,
.jump:focus,
.pagination-wrap [class^="page-"]:focus,
.accordion-sec .panel-title > a:focus,
.panel-list .list-group-item > a:focus {
  color: #ecc731;
}
/*
  Style For Golbar Buttons
---------------------------------*/
.navbar-nav > li > a:after {
  color: #ecc731;
}
.navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover,
.navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
  color: #ecc731;
}
.navbar-nav > li > .dropdown-menu {
  border-bottom-color: #ecc731;
}
.navbar-nav > li > .dropdown-menu:after {
  border-bottom-color: #ecc731;
}
.navbar-inverse .navbar-nav .dropdown-menu > li > a:hover:after {
  color: #ecc731;
}
/*theme color*/
#theme_panel .page-group .active-page,
#theme_panel .page-group a:hover,
.contact-form .label-text.focussed,
.pagination-wrap [class^="page-"]:after,
#partners-carousel .owl-page.active,
.theme-text,
.title-line,
.sign-up .btn-theme,
#footer .charity,
.list-unstyled li:before,
.video-section h2,
.video-section .play-btn,
.header-second .btn-default,
.quote-mark,
.footer-logo a,
.main-slider .banner-slider h2 strong,
.main-slider .btn,
.btn-wrapper .btn-default,
.slider-wrapper3 .btn-default,
.touch-by-mail:hover,
.header-third .primary-header .btn-default:hover,
.helping-child .btn-theme,
.contact-address a[href^="mailto:"],
.banner-section .btn-link:hover,
.banner-section .btn-link,
.slider-third .tp-caption .btn.btn-default {
  color: #ecc731;
}
#theme_panel .theme-setting,
#theme_panel .note,
#theme_panel .layout-column.radio-active .column-text:before,
#theme_panel .select-box,
#theme_panel .theme-pager li.current a,
#theme_panel .theme-pager li:hover a,
.navbar-default,
.panel-default > .panel-heading,
.sign-up .btn-theme:hover,
.sign-up .btn-theme:focus,
.nav-tabs > li > a,
.progress,
.progress-value,
.navbar-nav > li > .dropdown-menu,
.btn-bg,
.tp-bullets.simplebullets.round .bullet.selected,
.testimonial-slider .flex-control-paging a.flex-active,
.article-list .progress-bar,
.article-list-large .progress-bar,
.warning-icon-box,
.btn-default:hover,
.btn-default:focus,
.bg-theme,
.modal-content button.close,
.header-third .brand,
.header-third .nav-content:before,
.news-section3 .volunteer-reward,
.header-second .form-group,
.faq .collape-plus,
.choose-pricing .btn-default.active,
.checkout ul.nav-tabs li.active a,
input:focus,
textarea:focus,
.btn-width:focus,
.choose-pricing .btn-default:hover,
.choose-pricing .btn-default.active,
.helping-child .btn-theme:hover,
.fancybox-close,
.fancybox-nav {
  background: #ecc731;
}
.svg-shape path {
  fill: #ecc731;
}
.navbar-nav > li > .dropdown-menu,
.navbar-nav .open .dropdown-menu {
  background: #05562f;
}
.navbar-default,
.navbar-default .navbar-collapse,
.navbar-default .navbar-form,
.sign-up .btn-theme,
.header-second .bottom-line:before {
  border-color: #043e22;
}
#theme_panel .yellow-brder,
blockquote,
.sign-up .btn-theme,
.btn-default:hover,
.btn-default:focus,
.header-second .btn-default,
.main-slider .btn,
.btn-wrapper .btn-default,
.slider-wrapper3 .btn-default,
.header-third .primary-header .btn-default:hover,
.callout,
.helping-child .btn-theme,
.content-wrapper .faq-header h2 strong,
.choose-pricing .btn-default.active,
.choose-pricing .btn-default:hover,
.choose-pricing .btn-default.active,
.slider-third .tp-caption .btn.btn-default,
.shop-today a.btn:hover,
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus,
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus,
.page-numbers.active {
  border-color: #ecc731;
}
.navbar-nav > li > .dropdown-menu > ul > li > a,
.navbar-nav > li > .dropdown-menu > ul > li > ul.menu-depth-2 > li > a {
  border-bottom: 1px solid #ecc731;
}
.progress-value:before {
  border-top: 4px solid #ecc731;
}
h1 strong,
.h1 strong,
h2 strong,
.h2 strong,
h3 strong,
.h3 strong,
h2 strong,
.h2 strong,
h4 strong,
.h4 strong {
  border-bottom-color: #ecc731;
}
.checkout ul.nav-tabs li.active:after {
  border-top: 8px solid #ecc731;
}
.progress-value:after {
  border-top: 4px solid #ecc731;
}
.tp-bullets.simplebullets.round .bullet,
.testimonial-slider .flex-control-paging a {
  border: 2px solid #ecc731;
}
.blockquote-reverse {
  border-right: 5px solid #ecc731;
}
.comment-wrapper h4 a:hover,
.post-date-section:hover,
.comment-content .edit-link a,
.logged-in-as a,
#cancel-comment-reply-link {
  color: #ecc731;
}
#submit-comment:hover {
  background: #ecc731;
  border-color: #ecc731;
}
.charity-default-widgets a:hover,
.charity-default-widgets aside.media li p a:hover {
  color: #ecc731;
}
.blog h2 a:hover,
.blog ul li a:hover,
.spacer-bottom h3 a:hover,
.palce-name a:hover {
  color: #ecc731;
}
.newsletter-social-icon form input[type="submit"] {
  color: #ecc731;
  border: 2px solid #ecc731;
}
.newsletter-social-icon form input[type="submit"]:hover {
  color: #fff;
  background: #ecc731;
}
.shoping .button.add_to_cart_button:hover,
.buttons .button.wc-forward:hover,
.shoping-filter .price_slider_amount .button:hover,
.product-detail-inner .single_add_to_cart_button.button:hover,
.woocommerce #reviews .form-submit input[type="submit"]:hover,
.shoping-row .added_to_cart.wc-forward:hover,
#main-table .btn.btn-default:hover,
.woocommerce-cart .wc-proceed-to-checkout a.checkout-button:hover,
.return-to-shop .button.wc-backward:hover,
.woocommerce-message.alert-success .button.wc-forward:hover,
.woocommerce form input[type="submit"]:hover,
.order-actions .button.view:hover,
.woocommerce #summary-table .shipping-calculator-form button:hover,
.cart-collaterals .cross-sells .thumbnail .caption a.product_type_simple:hover {
  background: #ecc731 !important;
  border-color: #ecc731 !important;
  color: #fff !important;
}
.woocommerce-review-link,
.woocommerce-review-link:hover,
.product_meta a:hover {
  color: #ecc731;
}
.woocommerce input[type="text"]:focus,
.woocommerce input[type="password"]:focus {
  background: #ecc731;
}
.order_details .product-name a,
.woocommerce .charity-my-account a {
  color: #ecc731;
}
.join-now-section {
  background: #ecc731;
}
.event_date {
  background: #ecc731;
}
.event_descript p {
  border-left: 4px solid #ecc731;
}
.forward_content a {
  border: 2px solid #ecc731;
}
.tag_element li {
  border: 1px solid #ecc731;
}
.event_descriptions .btn.btn-default:hover {
  color: #fff;
  border-color: #ecc731;
}
</style>
    </head>
    <body <?php body_class(); ?>>
        <div id="wrapper" class="<?php echo esc_attr(vp_option('vpt_option.page_layout')); ?>">
            <!--Header Section Start Here -->
            <?php do_action("charity_header_layout"); ?>
            <!-- Header Section End Here -->
            <!-- Site Content -->
            <div id="main">		
