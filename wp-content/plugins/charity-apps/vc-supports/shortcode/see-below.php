<?php

function charity_vc_see_below($atts, $content = null) {
    extract(shortcode_atts(array(
        'help_one_icon' => '',
        'help_one_title' => '',
        'help_one_desc' => '',
        'help_two_icon' => '',
        'help_two_title' => '',
        'help_two_desc' => '',
        'help_three_icon' => '',
        'help_three_title' => '',
        'help_three_desc' => '',
        'video_img' => '',
                    ), $atts));
    $help_icon_one_img = wp_get_attachment_image_src($help_one_icon, "full");
    $help_icon_two_img = wp_get_attachment_image_src($help_two_icon, "full");
    $help_icon_three_img = wp_get_attachment_image_src($help_three_icon, "full");
    $help_video_img = wp_get_attachment_image_src($video_img, "full");
    ?>

    <section class="how-to-help">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 ">
                    <header class="page-header section-header">
                        <h2><?php echo vp_option('vpt_option.ch_hOne_how_help_title'); ?></h2>
                    </header>

                    <div class="row help-list">
                        <div class="col-xs-12 col-sm-6 col-lg-5">
                            <article class="media">
                                <a class="pull-left warning-icon-box" href="javascript:;"><?php if (!empty($help_icon_one_img[0])): ?><img src="<?php echo esc_attr($help_icon_one_img[0]); ?>" alt="<?php echo esc_attr($help_one_title); ?>"><?php endif; ?> </a>
                                <div class="media-body less-width">
                                    <h3 class="media-heading"><?php echo esc_html($help_one_title); ?></h3>
                                    <p><?php echo esc_html($help_one_desc); ?></p>
                                </div>
                            </article>
                            <article class="media">
                                <a class="pull-left warning-icon-box" href="javascript:;"><?php if (!empty($help_icon_two_img[0])): ?><img src="<?php echo esc_attr($help_icon_two_img[0]); ?>" alt="<?php echo esc_attr($help_two_title); ?>"><?php endif; ?> </a>
                                <div class="media-body less-width">
                                    <h3 class="media-heading"><?php echo esc_html($help_two_title); ?></h3>
                                    <p><?php echo esc_html($help_two_desc); ?></p>
                                </div>
                            </article>
                            <article class="media">
                                <a class="pull-left warning-icon-box" href="javascript:;"><?php if (!empty($help_icon_three_img[0])): ?><img src="<?php echo esc_attr($help_icon_three_img[0]); ?>" alt="<?php echo esc_attr($help_three_title); ?>"><?php endif; ?> </a>
                                <div class="media-body less-width">
                                    <h3 class="media-heading"><?php echo esc_html($help_three_title); ?></h3>
                                    <p><?php echo esc_html($help_three_desc); ?></p>
                                </div>
                            </article>
                        </div>
                        <?php if (!empty($help_video_img[0])): ?>
                            <div class="col-xs-12 col-sm-6 col-lg-6 col-lg-offset-1">
                                <div class="embed-responsive embed-responsive-16by9">
                                    <img  src="<?php echo esc_url($help_video_img[0]); ?>" alt="Click to play" <?php if (!empty($content)): ?>data-video="<?php echo esc_attr($content); ?>" <?php endif; ?>/>
                                </div>
                            </div>
                        <?php endif; ?>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <?php
}

