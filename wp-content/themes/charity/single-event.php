<?php
/**
 * The Template for displaying causes detail page
 * 
 * @package     charity
 * @version     v.1.0
 */
get_header();
// breadcrumb
do_action("charity_breadcrumb", array(
    "title" => get_the_title()
));
?>
<div class="cause-page content-wrapper" id="page-info">
    <div class="container">
        <!-- our causes detail-->
        <div class="anim-section">
            <div class="row">
                <div class="col-xs-12 col-sm-8 left-block">
                    <?php
                    global $charity_single_event;
                    $svgURL = get_template_directory_uri() . '/assets/svg/';
                    while (have_posts()) : the_post();
                        $charity_single_event = "single_event";
                        get_template_part("content/events");

                    endwhile;
                    ?>



                    <?php
                    the_post_navigation(array(
                        'next_text' => '<span class="next btn btn-default" aria-hidden="true">' . __('Next', 'charity') . '</span> ',
                        'prev_text' => '<span class="previous btn btn-default" aria-hidden="true">' . __('Previous', 'charity') . '</span> ',
                    ));
                    ?>
                </div>								
                <div class="col-xs-12 col-sm-4 left-block">
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
