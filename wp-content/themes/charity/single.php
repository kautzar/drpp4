<?php
/**
 * The template for displaying all single posts.
 *
 * @package Charity
 */
get_header();

//breadcrumb
do_action("charity_breadcrumb", array("title" => get_the_title()));
?>

<div class="content-wrapper container" id="page-info">
    <div class="row">
        <div class="col-xs-12">
            <?php
            while (have_posts()) : the_post();
                $format = (get_post_format()) ? get_post_format() : "standard";
                get_template_part('content/format/' . $format);
                ?>
                <div class="row">
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
                </div>
            <?php endwhile; // end of the loop.  ?>
        </div>
    </div>
</div>
<?php
get_footer();
