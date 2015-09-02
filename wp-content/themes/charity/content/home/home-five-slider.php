<?php
/**
 * Charity -  Home five Slider
 *
 * @package     charity
 * @since       1.3.0
 */
if (have_posts()) : while (have_posts()) : the_post();
        $slidershortcode = vp_metabox('homeslider.slidershortcode');
        ?>
        <section class="rev_slider_wrapperc main-slider">
            <div class="rev_slider banner-slider">
                <?php if (!empty($slidershortcode)): ?>
                    <?php echo do_shortcode($slidershortcode); ?>
                <?php endif; ?>	
            </div>
        </section>
        <?php
    endwhile;
endif;
