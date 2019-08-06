<?php
/*
 * Template Name: Custom Taxonomy Based Listing Template
 */
get_header(); ?>


    <div class="wrap">

        <div id="primary" class="content-area">

            <?php

            $taxonomy_name = 'blog-type';
            $custom_terms = get_terms(array(
                'taxonomy' => $taxonomy_name,
                'fields' => 'id=>name'
            ));

            foreach ($custom_terms as $key => $names) {
                $args = array(
                    'post_type' => 'blog',
                    'post_status' => 'publish',
                    'posts_per_page' => -1,
                    'meta_query'  => array(
                        array(                              // restrict posts based on meta values
                            'key'     => 'post_display_options',  // which meta to query
                            'value'   => 'yes',  // value for comparison
                            'compare' => '=',    // method of comparison
                             ),
                    ),
                    'tax_query' => array(
                        array(
                            'taxonomy' => $taxonomy_name,
                            'field' => 'id',
                            'terms' => $key,
                        )
                    ),
                );

                $posts = new WP_Query($args);

                if ( $posts->have_posts() ) :
                    ?>
                    <h1><?php echo $names; ?></h1>
                    <?php
                    while ( $posts -> have_posts() ) : $posts->the_post();
//                        $check = get_post_meta(get_the_ID(), 'post_display_options', true);
//                    if($check == "yes"){
                        ?>
                        <p><a href="<?php echo esc_url(get_permalink()); ?>"><?php the_title(); ?></a></p>
<!--                    --><?php //}

                    endwhile;
                endif;
            }
wp_reset_postdata();
            ?>
    </div>
    </div>


<?php
get_footer();

