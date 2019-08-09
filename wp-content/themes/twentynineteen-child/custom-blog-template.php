<?php
/*
 * Template Name: Custom Blogs Template
 */
get_header();
// Numbered Pagination
//if ( !function_exists( 'wpex_pagination' ) ) {
//
//    function wpex_pagination() {
//
//        $prev_arrow = is_rtl() ? '→' : '←';
//        $next_arrow = is_rtl() ? '←' : '→';
//
//        global $posts;
//        $total = $posts->max_num_pages;
//        $big = 999999999; // need an unlikely integer
//        if( $total > 1 )  {
//            if( !$current_page = get_query_var('paged') )
//                $current_page = 1;
//            if( get_option('permalink_structure') ) {
//                $format = 'page/%#%/';
//            } else {
//                $format = '&paged=%#%';
//            }
//            echo paginate_links(array(
//                'base'			=> str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
//                'format'		=> $format,
//                'current'		=> max( 1, get_query_var('paged') ),
//                'total' 		=> $total,
//                'mid_size'		=> 3,
//                'type' 			=> 'list',
//                'prev_text'		=> $prev_arrow,
//                'next_text'		=> $next_arrow,
//            ) );
//        }
//    }
//
//}
?>

    <div class="wrap">
        <div id="primary" class="content-area">
<?php
//        $custom_terms = wp_get_post_terms('blog-type');
//$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
        $args = array(
            'post_type' => 'blog',
            'post_status' => 'publish',
            'posts_per_page' => -1,
            'order' => 'ASC',
            'order_by' => 'date',
//            'paged' => $paged
        );
        $posts = new WP_Query( $args );

        if ( have_posts() ) :
            while ( $posts -> have_posts() ) : $posts->the_post();
                $id = $post->ID;
                $blog_type = wp_get_object_terms($id, 'blog-type',true);
            ?>
            <h1><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
            <p><strong>Type : </strong><?php echo (isset($blog_type[0]->name)) ? $blog_type[0]->name : 'No Type Assigned';  ?></p>
            <p><?php the_content(); ?></p>
            <?php
            endwhile;
//            wpex_pagination();
        else :
            echo('No Post Found');
        endif;
        wp_reset_query();
?>
        </div>
    </div>
<?php
get_footer();

