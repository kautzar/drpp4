<?php
/*
 *  Template Name: Charity Causes
 *
 * @package     charity
 * @version     v.1.0
 * */

get_header();

//breadcrumb
do_action("charity_breadcrumb", array("title" => get_the_title()));
?>
<!-- cause page Start Here-->
<div class="content-wrapper cause-page-section" id="page-info">
    <div class="container">
        <section class="our-story row ">
            <div class="col-xs-12">
                <?php get_template_part('content/causes', 'header'); ?>
            </div>
        </section>

        <!-- Our Causes Section-->
        <section class="our-causes">
            <!-- div class="anim-section" -->
            <div class="row">													
                <!-- Article Section Srart Here -->
                <div class="article-list progressbar">						
                    <?php
                    $paged = 1;
                    if (get_query_var('paged')){
                        $paged = get_query_var('paged'); }
                    if (get_query_var('page')){
                        $paged = get_query_var('page'); }
                    $args = array('post_type' => 'charity-causes', "post_status" => "publish", "paged" =>$paged);
                    global $more;
                    query_posts($args);
                    if (have_posts()) :
                        while (have_posts()) : the_post();
                            ?>
                            <div <?php post_class("cols-xs-12 col-sm-4 "); ?> >
                                <div class="spacer-bottom zoom equal-box">
                                    <h3 class="h5"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                            <?php if (has_post_thumbnail()): ?>
                                        <a href="<?php the_permalink(); ?>" class="img-thumb">
                                            <figure>
                                        <?php the_post_thumbnail("charity_causes_thumb"); ?>
                                            </figure>
                                        </a><p align="center">
                                        <?php
                                    endif;
                                    do_action("charity_causes_donation_details");
                                    the_content("1");
                                    do_action("charity_causes_donation_button");
                                    ?></p>

                                </div>
                            </div>
                            <?php
                        endwhile;
                        //do_action("charity_causes_donation_form");
                        chy_pagenavi();
                    else :
                        get_template_part('content/none');
                    endif;
                    wp_reset_query();
                    ?>
                </div>
                <!-- Article Section Srart Here -->

            </div>
            <!--/div-->
        </section>
        <!-- Our Causes Section End-->

    </div>

</div>
<!-- cause page Start End-->
<?php
get_footer();
