<?php
/**
 * Plugin Name: Related Posts By Tag
 * Plugin URI:
 * Description: This is for Related Post plugin.
 * Version: 1.0
 * Author: Jay Upadhyay
 * Author URI:
 **/

require_once( dirname( __FILE__ ) . '/admin/tags-relatedpost-admin.php' );

new tags_relatedpost_admin_main_class();

function tags_relatedpost_install() {

	global $wpdb;

	$table_name_1 = $wpdb->prefix . "tgp_category";
	$table_name_2 = $wpdb->prefix . "tgp_tag";

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

register_activation_hook( __FILE__, 'tags_relatedpost_install' );