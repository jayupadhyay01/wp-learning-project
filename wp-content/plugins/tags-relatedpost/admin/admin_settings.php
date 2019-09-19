<!--Admin Settings Page-->
<div class="wrap">
    <h2>Plugin Settings</h2>
	<?php
    //Getting all posttypes names in variable
	$post_type = get_post_types();
	//Removing unnecessary posttypes name from variable
	unset( $post_type['attachment'], $post_type['revision'], $post_type['nav_menu_item'], $post_type['custom_css'], $post_type['customize_changeset'], $post_type['oembed_cache'], $post_type['user_request'], $post_type['wp_block'] );
	$option = 'selected_post';
	?>
<!--Form for posttype selection-->
    <form action="" method="post" name="post_sub_form">
        <b>Select Post:</b>
        <ul>
			<?php
            error_reporting(0);
            if(isset( $_REQUEST['post_name'])){
                $post_nm = $_REQUEST['post_name'];
            }else{
	            $post_nm = get_option( $option );
            }
			foreach ( $post_type as $post_name ) {
			    $checked = (in_array( $post_name, $post_nm ) ) ? 'checked' : '' ;
                echo '<li><input type="checkbox" name="post_name[]" value="'.$post_name.'"  '.$checked.'>'.$post_name.'</li>';
                /*<li><input type='checkbox' name='post_name[]' value=<?php echo $post_name; */?><!-- <?php /*if(in_array( $post_name, $post_nm ) ){ echo 'checked' ; } */?>  > <?php /*echo $post_name */?></li>-->
		<?php	} ?>
        </ul>
        </br>
        <input type="submit" name="trp_post_submit" id="trp_post_submit" class="button-primary">
    </form>

	<?php
    //Code for selected posttypes saving through update option.
	if ( isset( $_POST['trp_post_submit'] ) ) {
		$selected_post_name = isset( $_POST['post_name'] ) ? $_POST['post_name'] : '';
		$get_opt = ( get_option( $option, null ) !== null );
		if ( ( isset( $get_opt ) ) && ! empty( $get_opt ) ) {
			update_option( $option, $selected_post_name );
		} else {
			add_option( $option, $selected_post_name );
		}
	}
	?>
</div>