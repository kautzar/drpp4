<?php
/**
 * Charity -  Home One Become Volunteer
 *
 * @package     charity
 * @version     v.1.0
 */
$pageid = vp_metabox('charity-sub-page.charity_ask_us' );
query_posts(array("page_id"=> $pageid));
if(have_posts()) : the_post(); 
$title = vp_metabox('volunteer.volunteer-title');
$image = vp_metabox('volunteer.volunteer-image');
$content = vp_metabox('volunteer.volunteer-content');
$url = wp_get_attachment_image_src( get_post_thumbnail_id($pageid), array( 1143,479 ) );
 ?>
<!--section class="parallax-section parallax" style="background-image: url('<?php echo esc_url($image);?>')"-->
<section class="parallax-section parallax" style="background-image: url(http://localhost/drpp4/wp-content/uploads/2015/10/19169785441_93f9534163_c.jpg)">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-7 col-md-5">
				<!--h2><?php print($title); ?></h2>
				<p><?php print($content); ?></p-->
				<h2 style="color:black">Menjadi Anggota The Learning Center</h2>
				<p style="color:black">Bergabunglah dengan kami sekarang</p>
				<a href="http://localhost/drpp" style="border-color:black; color:black" class="btn btn-default btn-lg join-today">DAFTAR</a>
			</div>
		</div>
	</div>
</section>
<?php endif; 
wp_reset_query();