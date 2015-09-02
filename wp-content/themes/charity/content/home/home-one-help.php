<?php 
/**
 * Charity -  Home One Help Section
 *
 * @package     charity
 * @version     v.1.0
 */
  if ( have_posts() ) : while ( have_posts() ) : the_post(); 
     $help = vp_metabox('helpicon.helpicon_group');
     $helpVideoImage = vp_metabox('helpicon.help-video-image');
     $helpVideo = vp_metabox('helpicon.help-video');
?>
<section class="how-to-help header-one-help">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 ">
				<header class="page-header section-header">
					<h2><?php echo vp_option('vpt_option.ch_hOne_how_help_title');?></h2>
				</header>
				<div class="row help-list">
					<div class="col-xs-12 col-sm-6 col-lg-5">
					<?php if(!empty($help[0])): ?>
					<?php foreach ($help as $helpkey => $helpval): ?>
						<article class="media">
							<a class="pull-left warning-icon-box" href="javascript:;"><?php if (!empty($helpval['helpicon'])): ?><img style="margin-top: -16px; background: white;" src="<?php echo esc_attr($helpval['helpicon']);?>" alt="<?php echo esc_attr($helpval['helptitle']);?>"><?php endif;?> </a>
							<div class="media-body less-width">
								<h3 class="media-heading"><?php echo esc_html($helpval['helptitle']);?></h3>
								<p><?php echo esc_html($helpval['helpcontent']);?></p>
							</div>
						</article>
						<?php endforeach; endif;?>						
					</div>
					<?php if (!empty($helpVideoImage)): ?>
					<div class="col-xs-12 col-sm-6 col-lg-6 col-lg-offset-1">
						<div class="embed-responsive embed-responsive-16by9">
							<img  src="<?php echo esc_url($helpVideoImage);  ?>" alt="Click to play" <?php if (!empty($helpVideo)):?>data-video="<?php echo esc_attr($helpVideo);?>" <?php endif;?>/>
							</div>
					</div>
					<?php endif; ?>
				</div>

			</div>
		</div>
	</div>
</section>
<?php endwhile; 
endif;

