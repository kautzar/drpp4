<?php

/**
 * Charity hooks function
 *
 * @package  charity
 * @version  v.1.0
 */
class CharityCausesHooks {

    public function __construct() {
        $this->action();
        $this->easypay_options = get_option('easypay_options');
    }

    public function action() {
        add_action("wp_footer", array(&$this, 'modalWindow'));
        add_action("charity_cauese_donation_details", array(&$this, 'donationDetails'));
        add_action("charity_cauese_donation_details_single", array(&$this, 'donationDetailsSingle'));
        add_action("charity_cauese_donation_details_single_page", array(&$this, 'donationDetailsSinglePage'));

        add_action("charity_cauese_donation_details_sidebar", array(&$this, 'donationDetailsSidebar'));

        add_action("charity_causes_donation_button", array(&$this, 'donationButton'));

        add_action("wp_ajax_donation_window", array(&$this, "donationWindow"));
        add_action("wp_ajax_nopriv_donation_window", array(&$this, "donationWindow"));

        add_action("charity_causes_category_menu", array(&$this, "categoryMenu"));

        add_action("charity_causes_details_attribute", array(&$this, "detailsAttribute"));

        add_action("charity_causes_single_layout", array(&$this, "singleLayout"));

        add_action("charity_speedometer_donation_user", array(&$this, "charitySpeedoMeterDonationUser"));
        add_action("charity_speedometer_donors", array(&$this, "charitySpeedoMeterDonor"));
        add_action("charity_donation_user_list", array(&$this, "charityDonationUserList"));
    }

    function singleLayout() {
        $layoutOption = vp_option("vpt_option.charity-causes-single-layout");

        if ($layoutOption == "sidebar") {
            get_template_part("content/single/causes", "sidebar");
        } else {
            get_template_part("content/single/causes", "fullwidth");
        }
    }

    function detailsAttribute() {
        ?>
        <span class="date-desc"><?php echo get_the_time('d F, Y'); ?></span>
        <span class="palce-name"><?php $this->singlePageAttributeTaxonomy(); ?></span>
        <?php
    }

    function singlePageAttributeTaxonomy() {
        global $post;

        $output = array();

        $causesLocations = get_the_terms($post->ID, 'causes-location');
        if (!empty($causesLocations)):
            foreach ($causesLocations as $causesTerm):
                $output[$causesTerm->term_id] = '<a class="causes-location-single" href="' . esc_url(get_term_link($causesTerm)) . '">' . esc_html($causesTerm->name) . '</a>';
            endforeach;
        endif;


        $causesCategories = get_the_terms($post->ID, 'causes-category');
        if (!empty($causesCategories)):
            foreach ($causesCategories as $causesTerm):
                $output[$causesTerm->term_id] = '<a class="causes-category-single" href="' . esc_url(get_term_link($causesTerm)) . '">' . esc_html($causesTerm->name) . '</a>';
            endforeach;
        endif;

        print(implode(", ", $output));

        //return trim($output, $separator);
    }

    function categoryMenu() {
        $causesCategories = get_terms('causes-category', 'orderby=id&order=ASC');

        if (count($causesCategories) > 0):
            ?>
            <!-- breadcrumb section -->
            <div class="sec-breadcrumb text-center causes-category">
                <ol class="breadcrumb">
                    <?php
                    //current term
                    $currentTermId = (is_tax('causes-category')) ? get_queried_object()->term_id : "";

                    //causes category
                    foreach ($causesCategories as $causesTerm):
                        // current active term 
                        $activeClass = ($currentTermId == $causesTerm->term_id) ? " active " : "";
                        ?>
                        <li class="causes-category term-<?php
                        echo esc_attr($causesTerm->slug);
                        echo esc_attr($activeClass);
                        ?> term-id-<?php echo esc_attr($causesTerm->term_id); ?>">
                            <a href="<?php echo esc_url(get_term_link($causesTerm)); ?>"><?php echo esc_html($causesTerm->name); ?></a>
                        </li>
                    <?php endforeach; ?>
                </ol>
            </div>
            <!-- breadcrumb section -->
            <?php
        endif;
    }

    function donationWindow() {
        ?>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <header class="page-header">
                <h2><?php echo vp_option('vpt_option.ch_donation_form_title'); ?> <strong id="causesnamne"><?php esc_html_e(get_the_title($_REQUEST['itemID']), "charity") ?></strong></h2>
            </header>
        </div>
        <?php
        /**
         * Easy Pay Plugin Form 
         * [EASYPAY_FORM]
         */
        echo do_shortcode('[EASYPAY_FORM]');
        die();
    }

    function modalWindow() {
        ?>
        <div class="modal donate-form">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body charity-donation-window">
                        <!-- EASY PAY PLUGIN FORM -->
                    </div>
                </div>
            </div>
        </div>

        <?php
    }

    /**
     * Doantion Details - Progress Bar with Target & Achivement
     */
    function donationDetails() {
        global $post;
        $target = vp_metabox('doantion-settings.donation-target');
        $achivement = vp_metabox('doantion-settings.donation-achivement');
        $status = vp_metabox('doantion-settings.doantion-status');
// for get curreny easy pay 
        $charity_pay_currency = (isset($this->easypay_options['easypay_pay_currency']) ) ? stripslashes($this->easypay_options['easypay_pay_currency']) : 'USD';
        $charityCurrency = get_charity_currency_symbol($charity_pay_currency);

        $percent = 0;
        $percent_friendly = "0 %";
        if ($target != '' && $achivement != '' && $target > 0):
            $percent = $achivement / $target;
            $percent_friendly = sprintf("%.2f", $percent * 100) . '%';
        endif;

        setlocale(LC_MONETARY, 'en_IN');
        $achivement = money_format('%!i', $achivement);
        $target = money_format('%!i', $target);
        ?>
        <?php if ($status == 1 && $percent <= 1): ?>
            <div class="progress ">
                <div class="progress-bar" role="progressbar" data-aria-valuenow="<?php echo esc_attr($percent_friendly); ?>" data-aria-valuemin="0" data-aria-valuemax="100" style="width: <?php echo esc_attr(intval($percent * 100)); ?>&#37;">
                    <span class="progress-value"><?php echo esc_html($percent_friendly); ?> </span>
                </div>
            </div>

            <span class="donation"><?php esc_html_e("Donation :", "charity") ?> 
                <span class="value">
                    <?php
                    if (!empty($achivement)) {
                        print($charityCurrency . $achivement);
                    }
                    ?><small>/
                        <?php
                        if (!empty($target)) {
                            echo esc_html($charityCurrency . $target);
                        }
                        ?></small>
                </span>
            </span>
            <?php
        endif;
    }

    function donationButton($class = "") {
        global $post;

        $target = vp_metabox('doantion-settings.donation-target');
        $achivement = vp_metabox('doantion-settings.donation-achivement');
        $status = vp_metabox('doantion-settings.doantion-status');

        $percent = 0;

        if ($target != '' && $target > 0 && $achivement != ''):
            $percent = $achivement / $target;
        endif;

        if ($status == 1 && $percent <= 1):
            ?>		
            <a data-toggle="modal" href="javascript:;" data-id="<?php echo esc_attr($post->ID); ?>" data-target=".donate-form" class="btn btn-default <?php echo esc_attr($class); ?> charity-donation-button"><?php esc_html_e("DONATE NOW", "charity") ?></a>
            <?php
        endif;
    }

    function donationDetailsSidebar() {
        global $post;
        $target = vp_metabox('doantion-settings.donation-target');
        $achivement = vp_metabox('doantion-settings.donation-achivement');
        $status = vp_metabox('doantion-settings.doantion-status');
        // for get curreny easy pay
        $charity_pay_currency = (isset($this->easypay_options['easypay_pay_currency']) ) ? stripslashes($this->easypay_options['easypay_pay_currency']) : 'USD';
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
        <span class="donation"><?php esc_html_e("Donation :", "charity") ?> 
            <span class="value">
                <?php
                if (!empty($achivement)) {
                    echo esc_html($charityCurrency . $achivement);
                }
                ?><small>/
                    <?php
                    if (!empty($target)) {
                        echo esc_html($charityCurrency . $target);
                    }
                    ?></small>
            </span>
        </span>
        <?php
    }

    /**
     * Doantion Details - Progress Bar
     */
    function donationDetailsSingle() {
        global $post;
        $target = vp_metabox('doantion-settings.donation-target');
        $achivement = vp_metabox('doantion-settings.donation-achivement');
        $status = vp_metabox('doantion-settings.doantion-status');
        // for get curreny easy pay
        $charity_pay_currency = (isset($this->easypay_options['easypay_pay_currency']) ) ? stripslashes($this->easypay_options['easypay_pay_currency']) : 'USD';
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
        <?php if ($status == 1 && $percent <= 1): ?>               
            <div class="progress-bar-section">
                <div class="progress">
                    <div class="progress-bar" role="progressbar"
                         data-aria-valuenow="<?php echo esc_attr($percent_friendly); ?>" data-aria-valuemin="0" data-aria-valuemax="100"
                         style="width: <?php echo esc_attr(intval($percent * 100)); ?>&#37;">
                    </div>
                </div>

                <span class="progress-value-number"><?php echo esc_html($percent_friendly); ?></span>
            </div>
            <?php
        endif;
    }

    /**
     * Doantion Details - Progress Bar single details 
     */
    function donationDetailsSinglePage() {
        global $post;
        $target = vp_metabox('doantion-settings.donation-target');
        $achivement = vp_metabox('doantion-settings.donation-achivement');
        $status = vp_metabox('doantion-settings.doantion-status');
        // for get curreny easy pay
        $charity_pay_currency = (isset($this->easypay_options['easypay_pay_currency']) ) ? stripslashes($this->easypay_options['easypay_pay_currency']) : 'USD';
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
        <?php if ($status == 1 && $percent <= 1): ?>               
            <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="<?php echo esc_html($percent_friendly); ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo esc_html($percent_friendly); ?>;">
                    <span class="progress-value"><?php echo esc_html($percent_friendly); ?> </span>
                </div>
            </div>																
            <?php
        endif;
    }

    /**
     * Latest causes speedometer details
     */
    function charitySpeedoMeterDonationUser() {
        global $wpdb, $post;
        $speedoMeterCauseId = vp_option('vpt_option.charity_single_cause_id');
        $query = "SELECT * FROM " . $wpdb->prefix . "easypay_payment_log";
        $query .= " where itemname = %s && payment_status = 'Completed'";
        $records = $wpdb->get_results($wpdb->prepare($query, "$speedoMeterCauseId"));
        foreach ($records as $rec):
            $custom = stripslashes($rec->custom);
            $custom_data_args = unserialize($custom);
            //print_r($custom_data_args);
            ?>
            <div class="item">
                <img src="<?php echo get_avatar_url($rec->email, $size = '96', $default = '<path_to_url>'); ?>" height="128" width="120" alt="" title="" />
                <div class="donator-info">
                    <h3 class="name"><?php echo esc_html_e($custom_data_args['name']); ?></h3>
                    <span class="donated"><?php echo esc_html_e("Donated", "charity"); ?><b><?php echo esc_html_e($rec->payment_actual_amount); ?></b>
                    </span>
                </div>
            </div>
            <?php
        endforeach;
    }

    /**
     * Latest causes speedometer Donor list
     */
    function charitySpeedoMeterDonor() {
        global $wpdb, $post;
        $speedoMeterCauseId = vp_option('vpt_option.charity_single_cause_id');
        $query = "SELECT * FROM " . $wpdb->prefix . "easypay_payment_log";
        $query .= " where itemname = %s && payment_status = 'Completed'";
        $records = $wpdb->get_results($wpdb->prepare($query, "$speedoMeterCauseId"));
        ?>
        <div class="speedometer">
            <div class="outer-arc">
                <div class="inner-arc">
                    <span class="percent" id="preview-container"><b id="preview"></b><span><?php echo esc_html_e("Reached", "charity"); ?></span></span>
                    <canvas id="mycanvas" width="300" height="270"></canvas>
                    <div class="info">
                        <span><?php echo count($records); ?></span>
                        <span><b><?php echo esc_html_e("Donors", "charity"); ?></b></span>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }

    /**
     * Latest causes User Donor list
     */
    function charityDonationUserList() {
        global $wpdb, $post;
        $query = "SELECT * FROM " . $wpdb->prefix . "easypay_payment_log";
        $query .= " where itemname = %s && payment_status = 'Completed'";
        $records = $wpdb->get_results($wpdb->prepare($query, get_the_ID()));

        $charity_pay_currency = (isset($this->easypay_options['easypay_pay_currency']) ) ? stripslashes($this->easypay_options['easypay_pay_currency']) : 'USD';
        $charityCurrency = get_charity_currency_symbol($charity_pay_currency);
        ?>
        <ul class="donator-list">
            <?php
            foreach ($records as $rec):
                $custom = stripslashes($rec->custom);
                $custom_data_args = unserialize($custom);
                ?>
                <li class="item">
                    <img src="<?php echo get_avatar_url($rec->email, $size = '96', $default = '<path_to_url>'); ?>" alt="" title="" />
                    <div class="donator-info">
                        <h3 class="name"><?php echo esc_html_e($custom_data_args['name']); ?></h3>
                        <span class="donated"><?php echo esc_html_e("Donated", "charity"); ?><b><?php echo esc_html_e($charityCurrency . $rec->payment_actual_amount); ?></b></span>
                    </div>
                </li>
            <?php endforeach; ?>
        </ul>
        <?php
    }

}

new CharityCausesHooks();
