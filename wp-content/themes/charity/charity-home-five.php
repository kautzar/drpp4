<?php
/**
 * Template Name: Charity Home Five
 *
 * @package     charity
 * @version     v.1.0
 */
get_header();
?>
<!-- banner slider Start Here -->
<?php get_template_part("content/home/home", "five-slider"); ?>
<!-- banner slider End Here -->
<!-- causes section start here -->
<?php get_template_part("content/home/home", "five-causes"); ?>
<!-- causes section end here -->

<!-- How To Help Section Start Here -->
<?php get_template_part("content/home/home", "five-help"); ?>
<!-- How To Help Section End Here-->

<!-- Become Volunteer Section Start Here -->
<?php get_template_part("content/home/home", "five-volunteer"); ?>
<!-- Become Volunteer Section End Here -->

<!-- Latest News Section Start Here -->
<?php get_template_part("content/home/home", "five-news"); ?>
<!-- Latest News Section End Here -->

<!--Testimonial Section Start Here -->	
<?php get_template_part("content/home/home", "five-testimonial"); ?>
<!--Testimonial Section End Here -->
<?php
get_footer();
