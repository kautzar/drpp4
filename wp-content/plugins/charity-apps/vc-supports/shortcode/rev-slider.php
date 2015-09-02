<?php

function charity_vc_slider_section($atts, $content = null) {
    extract(shortcode_atts(array(
        'slider' => '',
                    ), $atts));

    switch ($slider) {
        case "home1" :
            ?>
            <section class = "rev_slider_wrapper banner-section">
                <div class = "rev_slider banner-slider">
                    <?php if (!empty($content)):
                        ?>
                        <?php echo do_shortcode($content); ?>
                    <?php endif; ?>
                </div>
            </section>
            <?php
            break;
        case "home2" :
            ?>
            <section class="rev_slider_wrapperc main-slider">
                <div class="rev_slider banner-slider">
                    <?php if (!empty($content)): ?>
                        <?php echo do_shortcode($content); ?>
                    <?php endif; ?>	
                </div>
            </section>
            <?php
            break;
        case "home3" :
            ?>
            <section class="rev_slider_wrapper slider-third">
                <div class="rev_slider banner-slider">
                    <?php
                    if (!empty($content)):
                        echo do_shortcode($content);
                    endif;
                    ?>
                </div>
            </section>
            <?php
            break;
        case "ShopLanding" :
            ?>
            <section class="rev_slider_wrapper banner-section">
                <div class="rev_slider banner-slider">
                    <?php if (!empty($content)): ?>
                        <?php echo do_shortcode($content); ?>
                    <?php endif; ?>
                </div>
            </section>
            <?php
            break;
    }
}
