<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package Charity
 */
get_header();

$flagLinkPages=false;
?>

<div class="content-wrapper container" id="page-info">
    <div class="row">
        <div class="col-xs-12">
            <?php
            while (have_posts()) : the_post();
                get_template_part('content/page');
                ?>
               <!-- <div class="row">
                    <div class="col-xs-12">
                        <div class="comment-block">
                            <div class="row">
                                <div class="col-xs-12 col-sm-10 col-sm-offset-1">
                                    <article class="media comment profile-block">
                                        <?php get_template_part("content/blog", "author"); ?>
                                    </article>
                                    <section class="live-comment">
                                        <?php
                                        if (comments_open() || get_comments_number()) :
                                            comments_template();
                                        endif;
                                        ?>
                                    </section>

                                </div> 

                            </div>
                        </div> 
                    </div>
                </div> -->
            <?php
            
            if($flagLinkPages){
                wp_link_pages();
            }
            
            endwhile; // end of the loop.   ?>
        </div>
    </div>
</div>
<?php
get_footer();
