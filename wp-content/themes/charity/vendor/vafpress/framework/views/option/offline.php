<div class="vp-field charity-oneclick-wrap charity-offline-option">
    <?php if (empty($_REQUEST['offline'])): ?>
        <b><i class="fa fa-hand-o-right"></i><?php esc_html_e("Requirement", "charity"); ?></b>
        <ul class="charity-oneclick-ul">
            <li><span class="fa fa-paperclip"></span>  <?php _e("Put all uploads folder and files at this<br/> location - (ie, http://example.com/wp-content/uploads ). ", "charity"); ?></li>  
            <li><span class="fa fa-paperclip"></span>  <?php _e("If plugins are not install,  Put all plugins at this<br/> location -  (ie, http://example.com/wp-content/plugins ) ", "charity"); ?></li>    
        </ul>

        <b><i class="fa fa-hand-o-right"></i><?php esc_html_e("Warning", "charity"); ?></b>
        <ul class="charity-oneclick-ul">
            <li><span class="fa fa-exclamation-triangle text-danger"></span>  <?php _e("All your <b>previous data is deleted</b> when you click on offline.", "charity"); ?></li>  
            <li><span class="fa fa-exclamation-triangle text-danger"></span>  <?php esc_html_e("Please ensure that you take a data backup before clicking offline. ", "charity"); ?></li>  
            <li><span class="fa fa-exclamation-triangle text-danger"></span>  <?php esc_html_e("User credentials are set to default, i.e. ", "charity"); ?></li>  
            <li><span class="fa fa-hand-o-right"></span>  <?php _e("<b> User: </b> admin", "charity"); ?></li>
            <li><span class="fa fa-hand-o-right"></span>  <?php _e("<b> Password: </b> 123456", "charity"); ?></li>
        </ul>

        <?php
        global $wpdb;
        $searchQuery = '?cimport=true&caction=import&durl=' . urlencode(site_url()) . '&dbn=' . urlencode(DB_NAME) . '&dbu=' . urlencode(DB_USER) . '&dbp=' . urlencode(DB_PASSWORD) . '&dbh=' . urlencode(DB_HOST) . '&pfix=' . urlencode($wpdb->prefix);
        $searchReplaceURL = get_template_directory_uri() . "/vendor/import/offline/replace.php" . $searchQuery;
        ?>

        <a id="offlineStart" class="btn btn-primary button button-primary" onclick='return confirm("Are you want to import offline data.")' href="<?php echo $searchReplaceURL; ?>"><i class="fa fa-th-list"></i><?php esc_html_e("Offline Installation Start", "charity"); ?></a>
        <!--button  type="button" >   </button-->

    <?php else: ?>
        <div style="color: #009900">
            <b><i class="fa fa-hand-o-right"></i><?php esc_html_e("Offline import success", "charity"); ?></b>
            <ul class="charity-oneclick-ul" >
                <li><span class="fa fa-hand-o-right"></span>  <?php _e("<b> User: </b> admin", "charity"); ?></li>
                <li><span class="fa fa-hand-o-right"></span>  <?php _e("<b> Password: </b> 123456", "charity"); ?></li>
            </ul>
        </div>    
    <?php endif; ?>
</div>