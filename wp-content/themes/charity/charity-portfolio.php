<?php
/*
 * Template Name: Charity Portfolio
 *
 * @package     charity
 * @version     v.1.0
 */

get_header();

//breadcrumb
do_action("charity_breadcrumb", array("title" => get_the_title()));
?>
<div class="content-wrapper" id="page-info">

    <!-- Gallery sections Start Here -->
    <section class="we-help gallery-wrap">
        <div class="container">
            <div class="row">
                <div class="col-xs-9">
                    <!--Gallery Section Start Here-->
                    <div class="row gallery">
                        <?php
                        
                    $paged = 1;
                    if (get_query_var('paged')){
                        $paged = get_query_var('paged'); }
                    if (get_query_var('page')){
                        $paged = get_query_var('page'); }
                        $args = array('post_type' => 'charity-portfolio', "post_status" => "publish", "paged" =>$paged);
                        query_posts($args);
                        if (have_posts()) :
                            while (have_posts()) : the_post();
                                $metaType = vp_metabox('cahrity-meta-type-settings.choose-meta-type');
                                ?>
                                <div <?php post_class('cols-xs-12 col-sm-4'); ?>>
                                    <?php $thumbClass = ( $metaType == "video") ? "embed-vedio-block" : "embed-image"; ?>
                                    <div class="thumbnail <?php echo esc_attr($thumbClass); ?>">
                                        <?php
                                        if ($metaType == "video"):
                                            do_action("charity_portfolio_video");
                                        else:
                                            do_action("charity_portfolio_image");
                                        endif;
                                        ?>                                           
                                        <h3 class="h3"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                        <?php the_excerpt(); ?>
                                    </div>
                                </div>
                                <?php
                            endwhile;
                            chy_pagenavi();
                        else :
                            get_template_part('content/none');
                        endif;
                        wp_reset_query();
                        ?>
                    </div>
                    <!--Gallery Section End Here-->
                </div>
                <!-- sidebar start -->
                <div class="col-xs-3">
                    <!--Sub Breadcrumb Section Start Here-->
                    <h2>Pilih Topik Jurnal</h2>
                    <?php do_action("charity_portfolio_types_breadcrumb"); ?>
                    <!--Sub Breadcrumb Section Start Here-->
                </div>
                <!-- sidebar end -->
            </div>
        </div>
    </section>
    <!-- Gallery sections Start Here -->
</div>

<?php
get_footer();
