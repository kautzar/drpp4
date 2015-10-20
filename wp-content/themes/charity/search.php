<?php
/**
 * The template for displaying search results pages.
 *
 * @package Charity
 */
get_header();
?>
<div class="content-wrapper container" id="page-info">
    <div class="row">
        <!--
        <div class="col-sm-8 col-md-9"> -->
        <div class="col-xs-9">
            <header class="page-header">
                <h1 class="page-title"><?php printf(__('Search Results for: %s', 'charity'), '<span>' . get_search_query() . '</span>'); ?></h1>
            </header>
            <?php
            if (have_posts()) :
                while (have_posts()) : the_post();
                    get_template_part('content/search');
                endwhile;
                chy_pagenavi();
            else :
                get_template_part('content/none');
            endif;
            ?>
        </div>

        <div class="col-xs-3">
        <?php get_sidebar(); ?>
    </div>

    </div>
</div>
<?php
get_footer();
