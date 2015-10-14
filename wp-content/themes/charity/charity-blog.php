<?php
/**
 * Template Name: Charity Blog
 *
 * @package     charity
 * @since       1.4.1
 */
get_header();

//breadcrumb (hide)
//do_action("charity_breadcrumb", array("title" => get_the_title()));
?>
<div class="content-wrapper container" id="page-info">
    <div class="row">
        <div class="col-xs-9">
            <?php
            $paged = ( get_query_var('paged') ) ? intval(get_query_var('paged')) : 1;    
            $blogQuery=new WP_Query(array("post_type" => "post", "post_status" => "publish", "paged" => $paged));
            if ($blogQuery->have_posts()) :
                while ($blogQuery->have_posts()) : $blogQuery->the_post();
                    $format = (get_post_format()) ? get_post_format() : "standard";
                    get_template_part('content/format/' . $format);
                endwhile;
                chy_pagenavi($blogQuery);
            else :
                get_template_part('content/none');
            endif;
            wp_reset_query();
            ?>
        </div>
	<!-- Get sidebar -->
	<div class="col-xs-3">
	<?php get_sidebar(); ?>
	</div>
	<!-- End sidebar -->
    </div>
</div>
<?php
get_footer();