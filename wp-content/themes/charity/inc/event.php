<?php
/**
 * Charity theme Event
 *
 * @package  charity.inc
 * @version  v.1.0
 */
add_action("charity_event_media", "charity_event_media_view");

function charity_event_media_view() {
    
    $image = vp_metabox('charity_event.event_video_image');
    $youtube = vp_metabox('charity_event.event_you_tube_url');
    $viemo = vp_metabox('charity_event.event_vimeo_url');
        $width = 600;
        $height = 400;

    if (!empty($image)):
        ?>
       <figure class="charity-event-video">
            <?php
            $videoUrl = "";
            if (!empty($youtube)) {
                $videoUrl = $youtube;
            }
            if (!empty($viemo)) {
                $videoUrl = $viemo;
            }
            ?>
            <img  src="<?php echo esc_url($image); ?>" alt="<?php the_title(); ?>" data-video='<?php echo esc_html($videoUrl); ?>'/>                        
        </figure>
    <?php
    endif;
}

add_action("charity_event_venue", "charity_event_venue_view");

function charity_event_venue_view($post_id) {
    ?>                
    <span><?php esc_html_e("Venue :", "charity"); ?></span>
    <strong><?php
    global $wpdb;
    $location_id = get_post_meta($post_id, '_location_id', true);
    $location = $wpdb->get_var($wpdb->prepare("SELECT `location_name` FROM `{$wpdb->prefix}em_locations` WHERE `location_id` =%s", $location_id));
    print_r($location);
    ?></strong>
    <?php
}

