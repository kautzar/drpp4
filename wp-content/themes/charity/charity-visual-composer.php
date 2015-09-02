<?php
/**
 * Template Name: Charity Visual Composer Template
 *
 * @package     charity
 * @version     v.1.0
 */
get_header();
?>

<div class="content-wrapper visual-composer-page">
    <!--    <div class="row">-->
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

            <?php the_content(); ?>

            <?php
        endwhile;
    endif;
    ?>
    <!--    </div>-->
</div>

<?php
get_footer();
