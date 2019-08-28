<?php
/**
 * Plugin Name: Related Posts By Tag
 * Plugin URI:
 * Description: This is for Related Post plugin.
 * Version: 1.0
 * Author: Jay Upadhyay
 * Author URI:
 **/

function tags_relatedpost_install () {
	global $wpdb;

	$table_name = $wpdb->prefix . "tag";

	$charset_collate = $wpdb->get_charset_collate();

	$sql = "CREATE TABLE $table_name (
    id int NOT NULL,
    tag_name varchar(255),
    category varchar(255),
    cat_id int(15),PRIMARY KEY (id) 
) $charset_collate;";
	require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
	dbDelta( $sql );
}
register_activation_hook( __FILE__, 'tags_relatedpost_install' );