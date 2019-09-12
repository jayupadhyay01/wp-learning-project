<?php

class tags_relatedpost_admin_main_class {

	public function __construct() {
		add_action( 'admin_menu', array( $this, "trp_menu_pages" ) );
		add_action( 'admin_init', array( $this, "trp_init_fun" ) );
		add_action( 'admin_enqueue_scripts', array( $this, "trp_admin_enqueue_scripts" ) );
		add_action( 'wp_ajax_trp_delete_tag_action', 'trp_delete_tag_action' );
		add_action( 'wp_ajax_nopriv_trp_delete_tag_action', 'trp_delete_tag_action' );
		add_action( 'wp_ajax_trp_delete_cat_action', 'trp_delete_cat_action' );
		add_action( 'wp_ajax_nopriv_trp_delete_cat_action', 'trp_delete_cat_action' );
	}

	public function trp_admin_enqueue_scripts() {
		wp_register_script( 'validate-script', plugins_url( '/assets/js/jquery.validate.min.js', __FILE__ ), false );
		wp_enqueue_script( 'validate-script' );
		wp_register_script( 'custom-script', plugins_url( '/assets/js/tags-relatedpost-admin.js', __FILE__ ), false );
		wp_enqueue_script( 'custom-script' );
		wp_register_script( 'datatable-script', plugins_url( '/assets/js/jquery.dataTables.min.js', __FILE__ ), false );
		wp_enqueue_script( 'datatable-script' );
		wp_localize_script( 'custom-script', 'admin_url', array( 'ajax_url' => admin_url( 'admin-ajax.php' ) ) );
		wp_enqueue_style( 'style-plugin', plugins_url( '/assets/css/jquery.dataTables.min.css', __FILE__ ), false );
		wp_enqueue_style( 'style-plugin', plugins_url( '/assets/css/tags-relatedpost-admin.css', __FILE__ ), false );
	}

	public function trp_menu_pages() {
		add_menu_page( 'TRP Settings', 'TRP Plugin Settings', 'manage_options', 'trp-settings', 'trp_settings_menu' );
		add_submenu_page( 'trp-settings', 'Categories', 'Categories',
			'manage_options', 'cateogry', 'trp_category_list_menu' );
		add_submenu_page( 'trp-settings', 'Tags', 'Tags',
			'manage_options', 'tags', 'trp_tags_list_menu' );
		add_submenu_page( 'trp-settings', 'Categories Entry', 'Categories Entry',
			'manage_options', 'category-entry', 'trp_cat_entry_menu' );
		add_submenu_page( 'trp-settings', 'Tags Entry', 'Tags Entry',
			'manage_options', 'tag-entry', 'trp_tag_entry_menu' );
	}

	public function trp_init_fun() {
		global $wpdb;
		$table_name_cat = $wpdb->prefix . 'trp_category';
		$submit_cat     = filter_input( INPUT_POST, 'trp_cat_submit', FILTER_SANITIZE_STRING );
		$cat_get_id     = filter_input( INPUT_GET, 'cat_id', FILTER_SANITIZE_STRING );
		if ( isset( $submit_cat ) ) {
			$cat_name = sanitize_text_field( $_POST['cat_name'] );
			if ( $submit_cat == 'Add' ) {
				$trp_cat_check = $wpdb->get_results( "SELECT category FROM $table_name_cat WHERE category= '$cat_name' " );
				if ( isset( $trp_cat_check ) && ! empty( $trp_cat_check ) ) {
					$msg_cat = "Already Exist";
				} else {
					$success = $wpdb->query( $wpdb->prepare( "INSERT INTO $table_name_cat ( category ) VALUES ( %s )", $cat_name ) );
					$msg_cat = 'Inserted Successfully';
				}
			} else {
				$trp_cat_check = $wpdb->get_results( "SELECT category FROM $table_name_cat WHERE category= '$cat_name' " );
				if ( isset( $trp_cat_check ) && ! empty( $trp_cat_check ) ) {
					$msg_cat = "Already Exist";
				} else {
					$success = $wpdb->query( $wpdb->prepare( "UPDATE {$table_name_cat} SET category = %s WHERE id = %s ", $cat_name, $cat_get_id ) ); //Update
					$msg_cat = 'Updated Successfully';
				}
			}
			if ( $success ) {
				wp_redirect( "admin.php?page=cateogry&msg='$msg_cat'" );
				exit;
			} else {
				wp_redirect( "admin.php?page=cateogry&msg='$msg_cat'" );
			}
		}

		$table_name_tag = $wpdb->prefix . 'trp_tag';
		$submit_tag     = filter_input( INPUT_POST, 'trp_tag_submit', FILTER_SANITIZE_STRING );
		$tag_get_id     = filter_input( INPUT_GET, 'tag_id', FILTER_SANITIZE_STRING );
		if ( isset( $submit_tag ) ) {
			$tag_name      = sanitize_text_field( $_POST['tag_name'] );
			$select_cat_id = filter_input( INPUT_POST, 'cat_select', FILTER_SANITIZE_STRING );
			if ( $submit_tag == 'Add' ) {
				$trp_tag_check = $wpdb->get_results( "SELECT tag_name FROM $table_name_tag WHERE tag_name ='$tag_name' " );
				if ( isset( $trp_tag_check ) && ! empty( $trp_tag_check ) ) {
					$msg_tag = 'TagName Already Exists';
				} else {
					$success = $wpdb->query( $wpdb->prepare( "INSERT INTO $table_name_tag ( tag_name , cat_id ) VALUES ( %s , %s)", $tag_name, $select_cat_id ) );
					$msg_tag = 'Inserted Successfully';
				}
			} else {
				$trp_tag_check = $wpdb->get_results( "SELECT tag_name FROM $table_name_tag WHERE tag_name ='$tag_name' " );
				if ( isset( $trp_tag_check ) && ! empty( $trp_tag_check ) ) {
					$msg_tag = 'TagName Already Exists';
				} else {
					$success = $wpdb->query( $wpdb->prepare( "UPDATE `$table_name_tag` SET `tag_name`= %s,`cat_id`=%d WHERE id = %d", $tag_name, $select_cat_id, $tag_get_id ) ); //Update
					$msg_tag = 'Updated Successfully';
				}
			}
			if ( $success ) {
				wp_redirect( "admin.php?page=tags&msg='$msg_tag'" );
				exit;
			} else {
				wp_redirect( "admin.php?page=tags&msg='$msg_tag'" );
			}
		}

	}
}

function trp_settings_menu() {
	echo "This is Plugin Settings";
	require_once( dirname( __FILE__ ) . '/admin_settings.php' );
}

function trp_category_list_menu() {
	require_once( dirname( __FILE__ ) . '/admin_cat_list.php' );
}

function trp_cat_entry_menu() {
	require_once( dirname( __FILE__ ) . '/admin_cat_form.php' );
}

function trp_tags_list_menu() {
	require_once( dirname( __FILE__ ) . '/admin_tag_list.php' );
}

function trp_tag_entry_menu() {
	require_once( dirname( __FILE__ ) . '/admin_tag_form.php' );
}

/**
 *
 */
function trp_delete_tag_action() {
	$trp_data_tag = filter_input( INPUT_POST, 'trp_data_tag', FILTER_SANITIZE_STRING );
	if ( isset( $trp_data_tag ) ) {
		global $wpdb;
		$wpdb->query( $wpdb->prepare( 'DELETE  FROM wp_trp_tag WHERE id = "%s" ', $trp_data_tag ) );
	}
	wp_die();
}

function trp_delete_cat_action() {
	$trp_data_cat = filter_input( INPUT_POST, 'trp_data_cat', FILTER_SANITIZE_STRING );
	if ( isset( $trp_data_cat ) ) {
		global $wpdb;
		$wpdb->query( $wpdb->prepare( "DELETE FROM wp_trp_category WHERE id = %d", array( $trp_data_cat ) ) );
		$wpdb->query( $wpdb->prepare( "DELETE FROM wp_trp_tag WHERE cat_id = %d", array( $trp_data_cat ) ) );
		wp_die();
	}
	wp_die();
}