<?php
/**
 * Charity helper function
 *
 * @package  charity
 * @version  v.1.0
 */
add_filter('the_content_more_link', 'charityModifyReadMoreLink');

function charityModifyReadMoreLink() {
    return '<a class="more-link btn btn-default" role="button" href="' . get_permalink() . '">' . esc_html__('READ MORE', 'charity') . '</a>';
}

if (!function_exists('the_posts_navigation')) :

    /**
     * Posts Naviagtions
     * @return type
     */
    function the_posts_navigation() {
        // Don't print empty markup if there's only one page.
        if ($GLOBALS['wp_query']->max_num_pages < 2) {
            return;
        }
        ?>
        <nav class="navigation posts-navigation" role="navigation">
            <h2 class="screen-reader-text"><?php _e('Posts navigation', 'airdev'); ?></h2>
            <div class="nav-links">

                <?php if (get_next_posts_link()) : ?>
                    <div class="nav-previous"><?php next_posts_link(__('Older posts', 'airdev')); ?></div>
                <?php endif; ?>

                <?php if (get_previous_posts_link()) : ?>
                    <div class="nav-next"><?php previous_posts_link(__('Newer posts', 'airdev')); ?></div>
                <?php endif; ?>

            </div><!-- .nav-links -->
        </nav><!-- .navigation -->
        <?php
    }

endif;

/**
 * Post navigation
 * @return type
 */
if (!function_exists('the_post_navigation')) :

    function the_post_navigation() {
        // Don't print empty markup if there's nowhere to navigate.
        $previous = ( is_attachment() ) ? get_post(get_post()->post_parent) : get_adjacent_post(false, '', true);
        $next = get_adjacent_post(false, '', false);

        if (!$next && !$previous) {
            return;
        }
        ?>
        <nav class="navigation post-navigation" role="navigation">
            <h2 class="screen-reader-text"><?php _e('Post navigation', 'airdev'); ?></h2>
            <div class="nav-links">
                <?php
                previous_post_link('<div class="nav-previous">%link</div>', '%title');
                next_post_link('<div class="nav-next">%link</div>', '%title');
                ?>
            </div><!-- .nav-links -->
        </nav><!-- .navigation -->
        <?php
    }

endif;

/**
 * Charity - get_page_template
 * @param type $file_name
 * @param type $by parameter
 * @return type post_object, parameter, void
 * 
 */
function charity_get_page_template($file_name, $by = "") {
    $args = array(
        'post_type' => 'page',
        'posts_per_page' => 1,
        'meta_key' => '_wp_page_template',
        'meta_value' => $file_name,
    );

    $charity_pages = get_posts($args);

    if (!empty($charity_pages[0])) {
        return (!empty($charity_pages[0]->$by)) ? $charity_pages[0]->$by : $charity_pages[0];
    }
}

function charity_author_social_link($user_id = false) {

    $socials = array("facebook", "twitter", "pinterest", "google", "dribbble");

    if (!empty($user_id)):
        ?>
        <ul class="social-icons">
            <?php
            foreach ($socials as $social):
                $link = get_the_author_meta($social, $user_id)
                ?>
                <li class="social-<?php echo esc_attr($social); ?>"><a href="<?php echo esc_url($link); ?>" target="blank"><i class="fa fa-<?php echo esc_attr($social); ?>"></i></a></li>
            <?php endforeach; ?>
        </ul>
        <?php
    endif;
}

add_action("charity-site-social-link", "charity_site_social_link");

function charity_site_social_link($class = "") {
    $socials = array("facebook", "google-plus", "twitter", "linkedin", "vimeo-square");
    ?>
    <ul class="social-icons <?php echo esc_attr($class); ?>">
        <?php
        foreach ($socials as $social):
            $link = vp_option("vpt_option.charity-" . $social);
            if (empty($link)) {
                continue;
            }
            ?>
            <li class="social-<?php echo esc_attr($social); ?>"><a href="<?php echo esc_url($link); ?>" target="blank"><i class="fa fa-<?php echo esc_attr($social); ?>"></i></a></li>
                <?php endforeach; ?>
    </ul>
    <?php
}

add_filter("post_class", 'charityPostClass');

function charityPostClass($class) {
    global $charityPostFlag;
    if (is_single()) {
        $class[] = 'blog-details anim-section animate';
    } else {
        $charityPostFlag++;
        if ($charityPostFlag > 1) {
            $class[] = "anim-section animate";
        }
    }
    return $class;
}

add_action("wp_head", "charityCustomCss", 99999);

function charityCustomCss() {
    $ch_css = vp_option("vpt_option.ch_css");

    if (!empty($ch_css)) {
        ?><style type="text/css"> <?php print($ch_css); ?></style><?php
    }
}

add_action("wp_footer", "charityCustomJS", 99999);

function charityCustomJS() {
    $ch_js = vp_option("vpt_option.ch_js");

    if (!empty($ch_js)) {
        ?><script type="text/javascript">
            /* <![CDATA[ */
        <?php print($ch_js); ?>
            /* ]]> */
        </script><?php
    }
}

add_action('wp_footer', 'charityCustomGoogalAnalytics', 99999);

function charityCustomGoogalAnalytics() {
    $ch_goo = vp_option("vpt_option.google_analytics");

    if (!empty($ch_goo)) {
        ?><script type="text/javascript">
            /* <![CDATA[ */
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', '<?php print($ch_goo); ?> ']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();
            /* ]]> */
        </script><?php
    }
}

/**
 * Get Currency symbol.
 * @param string $currency (default: '')
 * @return string
 */
function get_charity_currency_symbol($currency = '') {

    switch ($currency) {
        /* 	case 'AED' :
          $currency_s ymbol = ' د .إ';
          break; */
        case 'AUD' :
        case 'CAD' :
        case 'CLP' :
        case 'COP' :
        case 'HKD' :
        case 'MXN' :
        case 'NZD' :
        case 'SGD' :
        case 'USD' :
            $currency_symbol = '&#36;';
            break;
        case 'BDT':
            $currency_symbol = '&#2547;&nbsp;';
            break;
        case 'BGN' :
            $currency_symbol = '&#1083;&#1074;.';
            break;
        case 'BRL' :
            $currency_symbol = '&#82;&#36;';
            break;
        case 'CHF' :
            $currency_symbol = '&#67;&#72;&#70;';
            break;
        case 'CNY' :
        case 'JPY' :
        case 'RMB' :
            $currency_symbol = '&yen;';
            break;
        case 'CZK' :
            $currency_symbol = '&#75;&#269;';
            break;
        case 'DKK' :
            $currency_symbol = 'kr.';
            break;
        case 'DOP' :
            $currency_symbol = 'RD&#36;';
            break;
        case 'EGP' :
            $currency_symbol = 'EGP';
            break;
        case 'EUR' :
            $currency_symbol = '&euro;';
            break;
        case 'GBP' :
            $currency_symbol = '&pound;';
            break;
        case 'HRK' :
            $currency_symbol = 'Kn';
            break;
        case 'HUF' :
            $currency_symbol = '&#70;&#116;';
            break;
        case 'IDR' :
            $currency_symbol = 'Rp';
            break;
        case 'ILS' :
            $currency_symbol = '&#8362;';
            break;
        case 'INR' :
            $currency_symbol = 'Rs.';
            break;
        case 'ISK' :
            $currency_symbol = 'Kr.';
            break;
        case 'KIP' :
            $currency_symbol = '&#8365;';
            break;
        case 'KRW' :
            $currency_symbol = '&#8361;';
            break;
        case 'MYR' :
            $currency_symbol = '&#82;&#77;';
            break;
        case 'NGN' :
            $currency_symbol = '&#8358;';
            break;
        case 'NOK' :
            $currency_symbol = '&#107;&#114;';
            break;
        case 'NPR' :
            $currency_symbol = 'Rs.';
            break;
        case 'PHP' :
            $currency_symbol = '&#8369;';
            break;
        case 'PLN' :
            $currency_symbol = '&#122;&#322;';
            break;
        case 'PYG' :
            $currency_symbol = '&#8370;';
            break;
        case 'RON' :
            $currency_symbol = 'lei';
            break;
        case 'RUB' :
            $currency_symbol = '&#1088;&#1091;&#1073;.';
            break;
        case 'SEK' :
            $currency_symbol = '&#107;&#114;';
            break;
        case 'THB' :
            $currency_symbol = '&#3647;';
            break;
        case 'TRY' :
            $currency_symbol = '&#8378;';
            break;
        case 'TWD' :
            $currency_symbol = '&#78;&#84;&#36;';
            break;
        case 'UAH' :
            $currency_symbol = '&#8372;';
            break;
        case 'VND' :
            $currency_symbol = '&#8363;';
            break;
        case 'ZAR' :
            $currency_symbol = '&#82;';
            break;
        default :
            $currency_symbol = '';
            break;
    }

    return $currency_symbol;
}

function charity_truncate_content($string, $chars = 50) {

    // ----- remove HTML TAGs -----
    $string = preg_replace('/<[^>]*>/', ' ', $string);
    $string = preg_replace('/\[.*?\]/', ' ', $string); //-- remove shortcode
    // ----- remove control characters -----
    $string = str_replace("\r", '', $string);    // --- replace with empty space
    $string = str_replace("\n", ' ', $string);   // --- replace with space
    $string = str_replace("\t", ' ', $string);   // --- replace with space
    // ----- remove multiple spaces -----
    $string = trim(preg_replace('/ {2,}/', ' ', $string));

    $len = strlen($string);

    if ($len > $chars) {
        $string = substr($string, 0, $chars);
        //$string = substr($string,0,strrpos($string,' '));
        //$string = $string."...";
    }

    return $string;
}

/* add_filter("em_locate_template", "charity_locate");

  function charity_locate($locate){
  $locate = CHY_THEME_DIR."/content/eventtags.php";
  return  $locate;
  }
 */

/*
 * Event action start here
 */
add_action("charity_events_listing", "charityEventsListing");

function charityEventsListing() {
    //#_EVENTTAGS
    $svgURL = get_template_directory_uri() . '/assets/svg/';
    $eventStr = '<div class="event-listing"><div class="event_detail">
	<figure>#_EVENTIMAGE</figure>
		<div class="event_date">
			<strong>#_{d}</strong> <span>#_{M}</span>
		</div>
	</div>
		 <div class="event_heading clearfix">
			<h2><a href="#_EVENTURL">#_EVENTNAME</a></h2>
			<div class="event_time clearfix">
			  <div class="venue_block">
				<div class="location-svg">
					<img src="' . $svgURL . 'location.svg" alt="" class="svg"/>
				</div>
			<span>venue :</span>
				<strong>#_LOCATIONNAME</strong>
			</div>
		<div class="date_block">
			<div class="date-svg">
			 <img src="' . $svgURL . 'calendar.svg" alt="" class="svg"/>
			</div>
			<span>date :</span>
			 <strong>#_{d-m-Y}</strong>
			</div>
		<div class="time_block">
			<div class="time-svg">
				<img src="' . $svgURL . 'timer.svg" alt="" class="svg" />
			</div>
			 <span>Time :</span>
				<strong>#_12HENDTIME</strong>
					</div>
				</div>
		<div class="event_descriptions">
			<p>#_EVENTEXCERPT</p>
	   <a href="#_EVENTURL" class="btn btn-default">Read More</a>
	</div>
 </div></div>';

    echo EM_Events::output(array('limit' => 3, 'orderby' => 'name', 'format' => $eventStr, 'pagination' => 1));
}

add_action("charity_event_location", "charityEventLocation");

function charityEventLocation($locationID) {
    global $wpdb;
    $locations_table = EM_LOCATIONS_TABLE;
    $term = (isset($locationID)) ? '%' . $locationID . '%' : '%' . $locationID . '%';
    $sql = $wpdb->prepare("
			SELECT
			location_id AS `id`,
			Concat( location_name, ', ', location_address, ', ', location_town)  AS `label`,
			location_name AS `value`,
			location_address AS `address`,
			location_town AS `town`,
			location_state AS `state`,
			location_region AS `region`,
			location_postcode AS `postcode`,
			location_country AS `country`
			FROM $locations_table
			WHERE ( `location_id` LIKE %s )", $term);

    $locations_array = $wpdb->get_results($sql);
    echo $locations_array[0]->value;
}

/**
 * Money Format Fallback
 * @charity 1.3.1
 */
if (!function_exists('money_format')) {

    function money_format($format, $money) {

        $str = $money;
        $point = '';
        if ($strpos = strrpos($money, '.')) {
            $str = substr($money, 0, $strpos);
            $point = substr($money, $strpos, strlen($money));
        }

        //echo $str;
        if (strlen($str) > 3) {
            $oth[] = array();
            $p1 = 1;
            for ($k = strlen($str) - 1; $k >= 0; $k--) {
                $oth[] = $str[$k];
                switch ($p1) {
                    case 3: $oth[] = ",";
                        break;
                    case 5: $oth[] = ",";
                        break;
                    case 7: $oth[] = ",";
                        break;
                    case 9: $oth[] = ",";
                        break;
                    case 11: $oth[] = ",";
                        break;
                }
                $p1++;
            }
            return strrev(@implode("", $oth)) . $point;
        } else {
            return $money;
        }
    }

}

charity_off_https();

function charity_off_https() {
    if (isset($_SERVER['HTTP_HTTPS'])) {
        unset($_SERVER['HTTP_HTTPS']);
        $_SERVER['HTTPS'] = 'off';
    }
}

