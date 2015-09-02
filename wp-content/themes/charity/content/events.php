<?php
/**
 * Charity -  Events
 *
 * @package     charity
 * @version     v.1.0
 */
global $post, $charity_single_event;
$svgURL = get_template_directory_uri() . '/assets/svg/';
?>
<div class="event-listing">
    <div class="event_detail">
        <?php ?>
        <?php if (has_post_thumbnail()): ?>
            <figure>
                <?php the_post_thumbnail() ?>
            </figure>
        <?php else: do_action("charity_event_media");
        endif;
        ?>
        <div class="event_date">
            <strong><?php echo date("d", strtotime(get_post_meta(get_the_ID(), '_event_start_date', true))); ?></strong> 
            <span><?php echo date("M", strtotime(get_post_meta(get_the_ID(), '_event_start_date', true))); ?></span>
        </div>
    </div>
    <div class="event_heading clearfix">
        <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
        <div class="event_time clearfix">
            <div class="venue_block">
                <div class="location-svg">
                    <img src="<?php echo esc_url($svgURL . "location.svg"); ?>" alt="" class="svg"/>
                </div>
<?php do_action("charity_event_venue", get_the_ID()); ?>
            </div>
            <div class="date_block">
                <div class="date-svg">
                    <img src="<?php echo esc_url($svgURL . "calendar.svg"); ?>" alt="" class="svg"/>
                </div>
                <span><?php esc_html_e("Date :", "charity"); ?></span>
                <strong><?php echo date("d-m-Y", strtotime(get_post_meta(get_the_ID(), '_event_start_date', true))); ?></strong>
            </div>
            <div class="time_block">
                <div class="time-svg">
                    <img src="<?php echo esc_url($svgURL . "timer.svg"); ?>" alt="" class="svg" />
                </div>
                <span><?php esc_html_e("Time :", "charity"); ?></span>
                <strong><?php echo date("h:i A", strtotime(get_post_meta(get_the_ID(), '_event_start_time', true))); ?></strong>
            </div>
        </div>
        <div class="event_descriptions">
            <?php
            if ($charity_single_event == "single_event"):
                echo get_the_content();

            else:
                ?>
                <p><?php echo $post->post_excerpt; //the_excerpt();    ?></p>
                <p><a href="<?php the_permalink(); ?>" class="btn btn-default"><?php esc_html_e("Read More", "charity"); ?></a></p>

            <?php
            endif;
            ?>
        </div>
    </div>
</div>
<?php
