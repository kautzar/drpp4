<?php
/**
 * Template Name: Charity Our Story
 *
 * @package     charity
 * @version     v.1.0
 */
get_header();
//breadcrumb
do_action("charity_breadcrumb", array("title" => get_the_title()));
?>
<div class="content-wrapper" id="page-info">
    <div class="container">
        <!-- Our Story Section Start Here -->
        <section class="our-story row">
            <div class="col-xs-12">
                <header class="story-heading section-header">
                    <h2><?php echo vp_option('vpt_option.ch_our_story_title'); ?></h2>
                </header>
                <?php get_template_part("content/our", "story"); ?>
            </div>
        </section>
        <!-- Our Story Section Start Here -->
        <!-- What We Do Section Start Here-->
        <?php get_template_part("content/our", "works"); ?>
        <!-- What We Do Section Start Here-->
    </div>

<?php
get_footer();