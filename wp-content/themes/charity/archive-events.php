<?php
/*
 * Charity - post type charity event archive 
 *
 * @package     charity
 * @version     v.1.0
 * */
get_header();
//breadcrumb
do_action("charity_breadcrumb", array("title" => get_the_title()));
?>
<!-- cause page Start Here-->
<div class="cause-page content-wrapper" id="page-info">
    <div class="container">
        <!-- our causes detail-->
        <div class="anim-section">
            <div class="row">
                <div class="col-xs-12 col-sm-9 left-block event_page">
                    <?php
                    $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                    $args = array(
                        "post_type" => "event",
                        "post_status" => "publish",
                        "paged" => $paged
                    );
                    $charityEventQuery = new WP_Query($args);
                    //print_r($charityEventQuery);
                    $svgURL = get_template_directory_uri() . '/assets/svg/';
                    if ($charityEventQuery->have_posts()):
                        while ($charityEventQuery->have_posts()):
                            $charityEventQuery->the_post();
                            get_template_part("content/events");
                        endwhile;
                        chy_pagenavi($charityEventQuery);
                    endif;
                    wp_reset_postdata();

                    /* if (class_exists('EM_Events')) {
                      do_action("charity_events_listing");
                      } */
                    ?>                                            
                </div>
                <div class="col-xs-12 col-sm-3 left-block">
                    <aside class="media">
                        <?php dynamic_sidebar("event-widget-section"); ?>
                    </aside>
                </div>            
            </div>
        </div>
        <!-- our causes detail-->
    </div> 
</div>
<?php
get_footer();
