<?php
/**
 * Template Name: Charity Home Four
 *
 * @package     charity
 * @since       1.3.0
 */
get_header();
?>
<!-- banner slider Start Here -->
<?php get_template_part("content/home/home", "four-slider"); ?>
<!-- banner slider End Here -->
<!-- ================================================================= -->
<?php get_template_part("content/home/home", "four-causes"); ?>
<!-- ================================================================= -->

<!-- How To Help Section Start Here -->
<?php get_template_part("content/home/home", "four-help"); ?>
<!-- How To Help Section End Here-->

<!-- Become Volunteer Section Start Here -->
<?php get_template_part("content/home/home", "four-volunteer"); ?>
<!-- Become Volunteer Section End Here -->

<!-- Latest News Section Start Here -->
<?php get_template_part("content/home/home", "four-news"); ?>
<!-- Latest News Section End Here -->

<!--Testimonial Section Start Here -->	
<?php get_template_part("content/home/home", "four-testimonial"); ?>
<!--Testimonial Section End Here -->
<?php
get_footer();
