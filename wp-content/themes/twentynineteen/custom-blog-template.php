<?php
/*
 * Template Name: Custom Blogs Template
 */
get_header();?>

    <div class="wrap">

        <div id="primary" class="content-area">

<?php
//        $custom_terms = get_terms('blog-type');
        $args = array(
            'post_type' => 'blog',
            'post_status' => 'publish',
            'posts_per_page' => -1,
        );
        $posts = new WP_Query( $args );

        if ( have_posts() ) :
            while ( $posts -> have_posts() ) : $posts->the_post();
                $id = $post->ID;
                $title = get_the_title();
                $content = get_the_content();
                $blog_type = wp_get_object_terms($id, 'blog-type');
            ?>
            <h1><?php echo $title; ?></h1>
            <p><strong>Type</strong><?php echo $blog_type[0]->name; ?></p>
            <p><?php echo $content; ?></p>
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


// // Get the taxonomy's terms
//        $terms = get_terms(
//            array(
//                'taxonomy'   => 'your-taxonomy',
//                'hide_empty' => false,
//            )
//        );
//
//        // Check if any term exists
//        if ( ! empty( $terms ) && is_array( $terms ) ) {
//            // Run a loop and print them all
//            foreach ( $terms as $term ) { ?>
<!--                <a href="--><?php //echo esc_url( get_term_link( $term ) ) ?><!--">-->
<!--                    --><?php //echo $term->name; ?>
<!--                </a>--><?php
//            }
//        }