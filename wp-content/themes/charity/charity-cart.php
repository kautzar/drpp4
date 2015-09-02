<?php
/**
 * Template Name: Charity Cart
 *
 * @package     charity
 * @version     v.1.0
 */
get_header();
?>


<div class="container" id="page-info">
					<div class="row">
						<div class="col-xs-12">
							<!-- AddtoCart Section Start Here-->
							<section class="anim-section AddtoCart">
								<div class="row">
									<div class="col-sm-12">
									
									<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
									<h3><?php the_title(); ?></h3>
									<?php the_content();
									
									endwhile; endif;
									?>
									
									</div>
								</div>
							</section>
							<!-- AddtoCart Section End Here-->							
						</div>
					</div>
				</div>

			
									

<?php get_footer();