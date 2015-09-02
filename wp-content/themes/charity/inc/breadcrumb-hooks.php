<?php

/**
 * Charity - breadcrumb hooks 
 * @package charity
 * @version     v.1.0
 * 
 */
class CharityBreadcrumbHooks {

    /**
     * class init
     */
    public function __construct() {
        $this->action();
    }

    /**
     * action init
     * 
     * array("title"=> "", "template_file" => "")
     * 
     */
    function action() {
        add_action("charity_breadcrumb", array(&$this, "layout"));
    }

    function layout($args) {
         if(!empty($args['title'])){
        ?>   
        <!--Breadcrumb Section Start Here-->
        <div class="breadcrumb-section" <?php $this->bgImage($args); ?>>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1><?php echo esc_html($args['title']); ?></h1>
                        <?php charity_breadcrumb(); ?>
                    </div>
                </div>
            </div>
        </div>
        <!--Breadcrumb Section End Here-->
        <?php
         }
    }
    
    function bgImage($args){
        
        if(!empty($args['template_file'])){
            $id=charity_get_page_template($args['template_file'], $by="ID");
        }
        else{
            global $post;
            $id=$post->ID;
        }
        
         $bgImage = vp_metabox('breadcrumb.image', '', $id);
		 $bgDefaultImage=vp_option('vpt_option.img_404');
         if(!empty($bgImage)){
            printf('style="background-image:url(%s)"',$bgImage);
        }
		 else{
		 	printf('style="background-image:url(%s)"',$bgDefaultImage); //default image
		 }
    }

}

new CharityBreadcrumbHooks();




