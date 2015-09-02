<?php
/**
 * Charity - Related causes 
 * 
 * @package     charity
 * @version     v.1.0
 */
$term_list=wp_get_object_terms(get_the_ID(), 'causes-category');


if(!empty($term_list[0])):

$args=array(
		"causes-category" => $term_list[0]->slug,
		'post__not_in' => array(get_the_ID()),
		'post_type' => 'charity-causes',
		'showposts'=> 3,
);

query_posts($args);

if(have_posts()):

?>
<div class="row article-list progressbar">
	<header class="col-xs-12 block-title">
		<h3><?php echo vp_option('vpt_option.ch_related_section_title'); ?></h3>
	</header>

	<?php while (have_posts()): the_post(); ?>
	<div class="col-xs-12 col-sm-4 zoom anim-section">
                                    <?php if (has_post_thumbnail()): ?>
                                        <a href="<?php the_permalink(); ?>" class="img-thumb">
                                            <figure>
                                                <?php the_post_thumbnail("charity_causes_thumb"); ?>
                                            </figure>
                                        </a>
                                        <?php
                                    endif;
	
                                    do_action("charity_cauese_donation_details");
                                    the_content("");
                                    do_action("charity_causes_donation_button");
                                    ?>
                                    
	</div>
	<?php endwhile;  ?>

</div>

<?php 
endif;
wp_reset_query();
endif;