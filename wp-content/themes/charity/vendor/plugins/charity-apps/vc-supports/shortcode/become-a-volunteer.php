<?php

function charity_vc_home_become_volunteer($atts, $content = null) {
    extract(shortcode_atts(array(
        'home_page_volunteer' => '',
        'page_volunteer' => '',
                    ), $atts, 'volunteer'));

    $pageid = $page_volunteer;

    function getTitleID($str) {
        $arr = array();
        $regx1 = '/[\{\d\}]+/';
        preg_match_all($regx1, $str, $all);
        if (!empty($all[0]) && $all[0][count($all[0]) - 1]) {
            $regx2 = '/[\d]+/';
            preg_match($regx2, $all[0][count($all[0]) - 1], $ids);

            if (!empty($ids[0])) {
                $arr['title'] = str_replace($all[0][count($all[0]) - 1], "", $str);
                $arr['id'] = $ids[0];
            }
        }

        return $arr;
    }

    $selectedpage = getTitleID($pageid);
    //echo $selectedpage['id'];
    query_posts(array("page_id" => $selectedpage['id']));

    if (have_posts()) : the_post();
        $title = vp_metabox('volunteer.volunteer-title');
        $image = vp_metabox('volunteer.volunteer-image');
        $content = vp_metabox('volunteer.volunteer-content');
//$url = wp_get_attachment_image_src( get_post_thumbnail_id($pageid), array( 1143,479 ) );
        ?>
        <section class="parallax-section parallax" style="background-image: url('<?php echo esc_url($image); ?>')">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-7 col-md-5">
                        <h2><?php print($title); ?></h2>
                        <p><?php print($content); ?></p>
                    </div>
                </div>
            </div>
        </section>
        <?php
    endif;
    wp_reset_query();
}

