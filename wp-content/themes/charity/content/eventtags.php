<?php global $EM_Event;
//print_r($EM_Event); 
echo 	$videoImg=vp_metabox('charity_event.event_video_image', $EM_Event->post_id);
echo	$youtubeURL=vp_metabox('charity_event.event_you_tube_url', $EM_Event->post_id);
echo	$vimeoURL=vp_metabox('charity_event.event_vimeo_url', $EM_Event->post_id);
?>
<figure>
	<img alt="" src="<?php echo wp_get_attachment_url( get_post_thumbnail_id($EM_Event->post_id) ); ?>">
</figure>
<?php
