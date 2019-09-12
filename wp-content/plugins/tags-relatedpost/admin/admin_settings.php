<div class="wrap">
    <h2>Plugin Settings</h2>

	<?php
	$post_type = get_post_types();
	unset( $post_type['attachment'], $post_type['revision'], $post_type['nav_menu_item'], $post_type['custom_css'], $post_type['customize_changeset'], $post_type['oembed_cache'], $post_type['user_request'], $post_type['wp_block'] );
	?>

<form action="" method="post" name="post_sub_form">
    <ul>
		<?php
		foreach ($post_type as $post_name){
			?>
            <li><input type='checkbox' name='post_name[]' value="<?php echo $post_name; ?>"><?php echo $post_name ?></li>
		<?php } ?>
    </ul>
    <input type="submit" name="submit">
</form>

<?php
if( isset( $_POST['submit'] ) ) {
//    if(isset( $_POST['post_name'])) {
//	    foreach ( $_POST['post_name'] as $post_selected ) {
//		    echo $post_selected . "</br>";
//	    }
//    }
	$selected_post_name = isset($_POST['post_name'] ) ? $_POST['post_name'] : '';
    $option = 'selected_post';
    $get_opt = (get_option($option, null) !== null);
	if( (isset( $get_opt ) ) && !empty( $get_opt ) ){
		update_option($option, $selected_post_name );
	}else{
		add_option($option, $selected_post_name );
    }
}
?>
</div>