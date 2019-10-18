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
    <head>
        <title>Your Website Title</title>
        <meta property="og:url"           content="jayupadhyay.ml" />
        <meta property="og:type"          content="website" />
        <meta property="og:title"         content="My Custom Titile" />
        <meta property="og:description"   content="This is Test Description for OG tags" />
        <meta property="og:image"         content="<?php echo get_the_post_thumbnail(7,'post-thumbnail'); ?>" />
    </head>
<body>
<?php //get_the_post_thumbnail(); ?>
    <img src="<?php echo get_the_post_thumbnail(7,'post-thumbnail'); ?>"/>
<div class="wrap">
<table style="width:50%">
    <tr>
        <th style="width:25%">Image</th>
        <th style="width:25%">Button</th>
    </tr>
    <tr>
        <td style="width:25%"><img src="/wp-content/uploads/2019/08/Jay.jpeg"> </td>
        <td style="width:25%"><a class="button" href="" onclick="">Share</a></td>
    </tr>
    <tr>
        <td style="width:25%"><img src="/wp-content/uploads/2019/08/jay-monark.jpeg"> </td>
        <td><iframe src="https://www.facebook.com/plugins/share_button.php?href=http%3A%2F%2Fjayupadhyay.ml%2F&layout=button_count&size=small&appId=405767526980060&width=69&height=20" width="69" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe></td>
<    </tr>
</table>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    <div class="fb-share-button"
         data-href="<?php home_url(); ?>>"
         data-layout="button_count">
    </div>
</div>


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

