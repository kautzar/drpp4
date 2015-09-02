<?php
/**
 * Charity -  Home Four Causes Listing
 *
 * @package     charity
 * @since       1.3.0
 */
?>
<?php
$speedoMeterCauseId = vp_option('vpt_option.charity_single_cause_id');
$easypay_options = get_option('easypay_options');
$charity_pay_currency = (isset($easypay_options['easypay_pay_currency']) ) ? stripslashes($easypay_options['easypay_pay_currency']) : 'USD';
$charityCurrency = get_charity_currency_symbol($charity_pay_currency);

$args = array('p' => $speedoMeterCauseId, 'post_type' => 'charity-causes', "post_status" => "publish", "posts_per_page" => 1);
global $more;
query_posts($args);
if (have_posts()) :
    $more=0;
    while (have_posts()) : the_post();
    
        $target = vp_metabox('doantion-settings.donation-target') ? vp_metabox('doantion-settings.donation-target') : '0';
        $achivement = vp_metabox('doantion-settings.donation-achivement') ? vp_metabox('doantion-settings.donation-achivement') : '0';

        echo '<script type="text/javascript"> var charity_speedo_percent = ' . esc_attr(intval($achivement / $target * 100)) . '; </script><script></script>';

        setlocale(LC_MONETARY, 'en_IN');
        $achivement = money_format('%!.0i', $achivement);
        $target = money_format('%!.0i', $target);
        ?>
        <div class="donation-meter">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 ">
                        <h2 class="home-four-title"><?php echo vp_option('vpt_option.ch_hfour_causes_title'); ?></h2>
                       <p> <?php  echo charity_truncate_content(get_the_content(), 120); //the_content(''); ?></p>

                        <div class="goal">
                            <span class="title"><?php echo esc_html_e('Donated', 'charity'); ?></span>
                            <span class="amount"><?php printf("%s", $charityCurrency . $achivement); ?></span>
                        </div>
                        <div class="goal raised">
                            <span class="title"><?php echo esc_html_e('Target', 'charity'); ?></span>
                            <span class="amount"><?php printf("%s", $charityCurrency . $target); ?></span>
                        </div>
                        <?php do_action("charity_speedometer_donors"); ?>         
                    </div>
                </div>
            </div><!-- .container ends here -->
            <div id="donator"  class="owl-carousel owl-theme">
                <?php do_action("charity_speedometer_donation_user"); ?>           
            </div>
        </div>
        <?php
    endwhile;
endif;
wp_reset_query();


