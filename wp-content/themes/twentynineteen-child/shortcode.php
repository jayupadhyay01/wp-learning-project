<?php


function image_search_shortcode() {
	ob_start();

	?>
    <div class="wrapper">
        <form action="" method="post" name="search_form" id="search_form"><br>
            <div>
                <label for="search-box">Search:</label><br>
                <input type="text" name="search-box" id="search-box" value=""><br>
            </div>
        </form>
    </div>
<!--    <div class="search-result">-->
<!--    </div>-->
	<?php
	$html = ob_get_clean();

	return $html;


}

add_shortcode( 'image_search', 'image_search_shortcode' );


function search_data() {
    $search_key = $_REQUEST['data'];

	$args  = array(
		'post_type'      => 'attachment',
		'post_status'    => 'inherit',
		's'              => $search_key,
		'posts_per_page' => - 1,
		'order'          => 'ASC',
		'order_by'       => 'date',

	);
	$posts = new WP_Query( $args );

	if ( $posts->have_posts() ) :
		while ( $posts->have_posts() ) : $posts->the_post();
			?>
            <p><?php the_content(); ?></p>
		<?php
		endwhile;
	else :
		echo( 'No Post Found' );
	endif;
	wp_reset_query();
wp_die();
}


add_action( 'wp_ajax_nopriv_search_data', 'search_data' );
add_action( 'wp_ajax_search_data', 'search_data' );