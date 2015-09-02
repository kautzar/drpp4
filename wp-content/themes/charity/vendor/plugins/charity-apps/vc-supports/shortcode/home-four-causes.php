<?php

function charity_vc_causes_donors_list($atts, $content = null) {
    ob_start();
    get_template_part("content/home/home", "four-causes");
    $contents = ob_get_contents();
    ob_end_clean();
    return $contents;
}
