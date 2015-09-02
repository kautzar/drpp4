<?php
/**
 * Search page 
 *
 * @package     charity
 * @version     v.1.0
 */
?><article <?php post_class("blog"); ?>>
    <div class="row">
        <div class="col-xs-12 col-sm-10 col-sm-offset-1 caption">
            <h2 class="h1"><a href="<?php the_permalink(); ?> "><?php the_title() ?></a></h2>
           <?php the_content(); ?>
        </div>
    </div>
</article>
<?php 