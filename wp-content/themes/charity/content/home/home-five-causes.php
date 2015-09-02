<?php
/**
 * Charity -  Home Four Causes Listing
 *
 * @package     charity
 * @since       1.3.0
 */
$easypay_options = get_option('easypay_options');
$speedoMeterCauseId = vp_option('vpt_option.charity_single_cause_id');

$args = array('p' => $speedoMeterCauseId,'post_type' => 'charity-causes', "post_status" => "publish", "posts_per_page" => "1");
query_posts($args);
if (have_posts()) :
    while (have_posts()) : the_post();
        $target = vp_metabox('doantion-settings.donation-target');
        $achivement = vp_metabox('doantion-settings.donation-achivement');
        // for get curreny easy pay
        $charity_pay_currency = (isset($easypay_options['easypay_pay_currency']) ) ? stripslashes($easypay_options['easypay_pay_currency']) : 'USD';
        $charityCurrency = get_charity_currency_symbol($charity_pay_currency);

        $percent = 0;
        $percent_friendly = "0 %";
        if ($target != '' && $achivement != '' && $target > 0):
            $percent = $achivement / $target;
            $percent_friendly = sprintf("%d", $percent * 100) . '%';
        endif;

        setlocale(LC_MONETARY, 'en_IN');
        $achivement = money_format('%!.0i', $achivement);
        $target = money_format('%!.0i', $target);
        ?>

        <div class="donation-section">

            <div class="progress ">
                <div style="width: <?php printf($achivement/$target); echo '%'; ?>" data-aria-valuemax="100" data-aria-valuemin="0" data-aria-valuenow="<?php printf($achivement/$target); ?>" role="progressbar" class="progress-bar">
                    <span class="progress-value"><?php printf($achivement/$target); echo '%'; ?> </span>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-xs-12 ">
                        <div class="donation-section-header">
                            <h2 class="left-days"><?php
                            
                            if(!empty($achivement) && !empty($target)):
                                printf(__("Raised - %s <span>/ %s </span>", "charity"), $charityCurrency . $achivement, $charityCurrency . $target);
                            endif;
                            /*
                            echo esc_html_e("Raised", "charity"); ?> - <?php
                                if (!empty($achivement)) {
                                    echo esc_html($charityCurrency . $achivement);
                                }
                                ?> <span>/ <?php
                                    if (!empty($target)) {
                                        echo esc_html($charityCurrency . $target);
                                    }
                                    ?></span>
                                
                                <?php */
                                
                                $single_causes_date = vp_option('vpt_option.single_causes_date');
                                $date1 = new DateTime("now");
                                $date2 = new DateTime($single_causes_date);
                                
                                if($date2> $date1){
                                    $interval = date_diff( $date2, $date1);
                                    $intday=$interval->days;
                                    $dayleft=($interval->days > 1) ? __("Days Left", "charity") : __("Day Left", "charity");
                                    
                                    printf("%s - %s", $intday, $dayleft);
                                }
                                
                                ?>
                                
                                
                                </h2>
                            <a data-toggle="modal" href="javascript:;" data-id="<?php echo esc_attr($post->ID); ?>" data-target=".donate-form" class="btn btn-default charity-donation-button"><?php esc_html_e("DONATE NOW", "charity") ?></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="donator-details">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 ">
                            <h2 class="home-four-five"><?php echo vp_option('vpt_option.ch_hfive_causes_title'); ?></h2>
                            <?php do_action("charity_donation_user_list"); ?>
                            <!-- .donor-list ends here -->
                            <div class="join-now-section">  
                                <p><?php echo vp_option('vpt_option.ch_hfive_volunteer'); ?></p><?php echo do_shortcode('[charity_join_today_button][/charity_join_today_button]'); ?>
                            </div>
                        </div>
                    </div>
                </div><!-- .container ends here -->
            </div><!-- .donator-details ends here -->
        </div>
        <?php
    endwhile;
endif;
wp_reset_query();


