<?php
/*
 * Charity - post type charity portfolio archive 
 *
 * @package     charity
 * @version     v.1.0
 * */

get_header();
//breadcrumb
do_action("charity_breadcrumb", array("title" => esc_html__("Jurnal", "charity"), "template_file" => "charity-portfolio.php"));
?>
<div class="content-wrapper" id="page-info">

    <!-- Gallery sections Start Here -->
    <section class="we-help gallery-wrap">
        <div class="container">
            <div class="row">
                <div class="col-xs-9">
                    <!--Sub Breadcrumb Section Start Here-->
                    <?php do_action("charity_portfolio_types_breadcrumb"); ?>
                    <!--Sub Breadcrumb Section Start Here-->
                    <!--Gallery Section Start Here-->
                    <div class="row gallery">
                        <?php
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
                                        <?php the_excerpt(); ?><p>

                                            <p class="ecae-button ecae-buttonskin-black" style="text-align:left;">  <a class="ecae-link" href="<?php the_permalink(); ?>"><span>Read more</span></a></p>

                                    </p>
                                    </div>
                                </div>
                                <?php
                            endwhile;
                            chy_pagenavi();
                        else :
                            get_template_part('content/none');
                        endif;
                        ?>
                    </div>
                    <!--Gallery Section End Here-->
                </div>

                 <!-- sidebar start -->
                <div class="col-xs-3">
                    <!--Sub Breadcrumb Section Start Here-->
                    <h3>Pilih Topik Jurnal</h3><p>
                    Kumpulan jurnal-jurnal yang terkait dengan masalah learning disabilities seperti dyslexia, autism, neuro-development, pediatrics, dan behavior.</p><p>Klik topik-topik di bawah ini untuk menyaring jurnal</p>
                    <p>&nbsp;</p><?php do_action("charity_portfolio_types_breadcrumb"); ?>
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
