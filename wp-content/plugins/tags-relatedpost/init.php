<?php
/**
 * Plugin Name: Related Posts By Tags
 * Plugin URI:
 * Description: This is for Related Post plugin,.to get Related Posts list through tags you have selected in posttypes.
 * Version: 1.0
 * Author: Jay Upadhyay
 * Author URI:
 **/

//Adding main admin function file.
require_once( dirname( __FILE__ ) . '/admin/tags-relatedpost-admin.php' );

//Main class for plugin admin functionality at activation time.
new tags_relatedpost_admin_main_class();
// Function for create custom table at plugin activation time.
function tags_relatedpost_install() {

	global $wpdb;

	$table_name_1 = $wpdb->prefix . "trp_category";
	$table_name_2 = $wpdb->prefix . "trp_tag";

	$charset_collate = $wpdb->get_charset_collate();

	$sql_1 = "CREATE TABLE $table_name_1 (
    id int NOT NULL AUTO_INCREMENT,
    category VARCHAR(255),
	PRIMARY KEY (id)
) $charset_collate;";

	$sql_2 = "CREATE TABLE $table_name_2 (
    id int NOT NULL AUTO_INCREMENT,
    tag_name VARCHAR(255),
    cat_id int,
	PRIMARY KEY (id)
) $charset_collate;";
	require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
	dbDelta( $sql_1 );
	dbDelta( $sql_2 );
}
// Activation hook for call functionality when plugin activated.
register_activation_hook( __FILE__, 'tags_relatedpost_install' );