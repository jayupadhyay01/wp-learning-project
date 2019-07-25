<?php
/*
 * Template Name: Custom Blogs Template
 */
get_header();?>

    <div class="wrap">

        <a id="primary" class="content-area">

<?php
//        $custom_terms = wp_get_post_terms('blog-type');
        $args = array(
            'post_type' => 'blog',
            'post_status' => 'publish',
            'posts_per_page' => -1,
            'order' => 'ASC',
            'order_by' => 'date',
        );
        $posts = new WP_Query( $args );

        if ( have_posts() ) :
            while ( $posts -> have_posts() ) : $posts->the_post();
                $id = $post->ID;
                $blog_type = wp_get_object_terms($id, 'blog-type');

            ?>
            <h1><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
            <p><strong>Type</strong><?php echo $blog_type[0]->name; ?></p>
            <p><?php the_content(); ?></p>
            <?php

            endwhile;
        else :

            echo('No Post Found');

        endif;
        wp_reset_query();
?>
        </div>
    </div>



<?php
get_footer();

