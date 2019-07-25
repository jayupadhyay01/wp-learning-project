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
                'hide_empty' => true,
                'fields' => 'id=>name'
            ));


            foreach ($custom_terms as $key => $names) {
                $args = array(
                    'post_type' => 'blog',
                    'post_status' => 'publish',
                    'posts_per_page' => -1,

                    'tax_query' => array(
                        array(
                            'taxonomy' => $taxonomy_name,
                            'field' => 'id',
                            'terms' => $key,
                        )
                    )
                ); ?>
                <h1><?php echo $names; ?></h1>
                <?php $posts = new WP_Query($args);

                if ( have_posts() ) :
                    while ( $posts -> have_posts() ) : $posts->the_post();
                        ?>
                        <p><a href="<?php echo esc_url(get_permalink()); ?>"><?php the_title(); ?></a></p>
                    <?php

                    endwhile;
                else :

                    echo('No Post Found');

                endif;
            }

            ?>
    </div>
    </div>


<?php
get_footer();

