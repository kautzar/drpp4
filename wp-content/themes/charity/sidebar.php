<?php
/**
 * Charity - sidebar
 * @package charity
 * @version     v.1.0
 * 
 */
if (hasCharityDefault_Widgets()):
    ?>
<!-- hide this start  <div class="container charity-default-widgets col-sm-4 col-md-3 left-block"> -->
  <div class="charity-default-widgets left-block"> 
        <div class="row">
            <?php dynamic_sidebar("default-charity-section"); ?>
        </div> 
 </div> 
<!--    </div> -->
<?php else: ?>
 
<!--   <div class="col-sm-4 col-md-3 left-block"> --?

        <?php dynamic_sidebar("causes-wisget-section"); ?>

<!--    </div> -->

<?php 
endif;