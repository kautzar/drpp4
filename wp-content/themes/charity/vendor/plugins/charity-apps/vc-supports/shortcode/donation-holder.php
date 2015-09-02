<?php

function charity_vc_donation_holder_say($atts, $content = null) {
    extract(shortcode_atts(array(
        'testimonial' => '',
        'testimonial_bg' => ''
                    ), $atts));
    $args = array('post_type' => 'testimonial', 'post_status' => 'publish');
    query_posts($args);
    if (have_posts()) :
        //$testimonial_bg = vp_metabox('charity_testimonial_one.testimonial_bg');
        $testimonial_bg = wp_get_attachment_image_src($testimonial_bg, "large");
        //print_r($testimonial_bg);
        switch ($testimonial) {
            case "home1" :
                ?>
                <section class = "testimonial parallax" style = "background-image: url('<?php echo $testimonial_bg[0] ?>')">
                    <div class = "overlay"></div>
                    <div class = "container">
                        <div class = "row">
                            <div class = "col-xs-12">
                                <div class = "testimonial-slider flexslider">
                                    <ul class = "slides">
                                        <?php
                                        while (have_posts()) : the_post();
                                            $company = vp_metabox('testimonial.companey_name');
                                            ?>									
                                            <li>
                                                <div class="slide">
                                                    <h2><?php echo vp_option('vpt_option.ch_hOne_testimonial_title'); ?></h2>
                                                    <blockquote>
                                                        <?php the_content(); ?>
                                                        <footer>
                                                            <span><?php the_title(); ?></span>
                                                            <?php if (!empty($company)): ?><cite>(<?php echo esc_html($company); ?>)</cite><?php endif; ?>
                                                        </footer>
                                                    </blockquote>
                                                </div>
                                            </li>
                                        <?php endwhile; ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <?php
                break;
            case "home2" :
                ?>
                <section class="donation-holder">

                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <h2><?php echo vp_option('vpt_option.ch_hTwo_testimonial_title'); ?></h2>
                                <div class="row">
                                    <?php
                                    while (have_posts()) : the_post();
                                        $companyUrlLink = vp_metabox('testimonial.urllink');
                                        ?>	
                                        <div class="col-xs-12 col-sm-4 col-md-4 quote-block equal-box">
                                            <blockquote class="equal-box">
                                                <i class="fa fa-quote-left quote-mark"></i>
                                                <?php the_content(); ?>
                                                <footer>
                                                    <?php the_title(); ?>
                                                    <?php if (!empty($companyUrlLink)): ?><cite title="<?php echo esc_html($companyUrlLink); ?>"><?php echo esc_html($companyUrlLink); ?></cite><?php endif; ?>
                                                </footer>
                                            </blockquote>
                                        </div>
                                    <?php endwhile; ?>	


                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <?php
                break;
            case "home3" :
                ?>
                <section class="donation-holder holders">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <h2><?php echo vp_option('vpt_option.ch_hThree_testimonial_title'); ?> </h2>
                                <div class="col-xs-12 col-md-12">
                                    <div class="flexslider">
                                        <ul class="slides">
                                            <?php
                                            while (have_posts()) :
                                                the_post();
                                                $company = vp_metabox('testimonial.companey_name');
                                                ?>	
                                                <li>
                                                    <div class="testimonial-content">
                                                        <?php
                                                        $url = array();
                                                        if (has_post_thumbnail()) :
                                                            $url = wp_get_attachment_image_src(get_post_thumbnail_id(), array(108, 129));
                                                            ?>
                                                            <div class="img-circle photo-frame">
                                                                <img src="<?php echo esc_url($url[0]); ?>" alt="circle" class="img-circle">
                                                            </div>
                                                        <?php endif; ?>
                                                        <blockquote>

                                                            <i class="fa fa-quote-left quote-mark"></i>
                                                            <?php the_content(); ?>

                                                            <footer>
                                                                <span><?php the_title(); ?></span>
                                                                <?php if (!empty($company)): ?><cite>(<?php echo esc_html($company); ?>)</cite><?php endif; ?>
                                                            </footer>
                                                        </blockquote>
                                                    </div>
                                                </li>
                                            <?php endwhile; ?>		    					    
                                        </ul>
                                    </div>
                                    <!-- End Flex -->
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <?php
                break;
            case "ShopLanding" :
                ?>
                <section class="testimonial parallax" style="background-image: url('<?php echo $testimonial_bg[0] ?>')">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="testimonial-slider flexslider">
                                    <ul class="slides">
                                        <?php
                                        while (have_posts()) : the_post();
                                            $company = vp_metabox('testimonial.companey_name');
                                            ?>									
                                            <li>
                                                <div class="slide">
                                                    <h2><?php echo vp_option('vpt_option.ch_hfour_testimonial_title'); ?></h2>
                                                    <blockquote>
                                                        <?php the_content(); ?>
                                                        <footer>
                                                            <span><?php the_title(); ?></span>
                                                            <?php if (!empty($company)): ?><cite>(<?php echo esc_html($company); ?>)</cite><?php endif; ?>
                                                        </footer>
                                                    </blockquote>
                                                </div>
                                            </li>
                                        <?php endwhile; ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <?php
                break;
        }

    endif;
    wp_reset_query();
}
