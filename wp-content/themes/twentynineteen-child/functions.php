<?php

add_action('wp_enqueue_scripts', 'my_theme_enqueue_styles');
function my_theme_enqueue_styles()
{

    $parent_style = 'parent-style'; // This is 'twentynineteen-style' for the Twenty Nineteen theme.

    wp_enqueue_style($parent_style, get_template_directory_uri() . '/style.css');
    wp_enqueue_style('child-style',
        get_stylesheet_directory_uri() . '/style.css',
        array($parent_style),
        wp_get_theme()->get('Version')
    );
}

/** My Custom Functionality Coding*/

//add_action('wp_enqueue_scripts', 'enqueue_child_theme_styles', PHP_INT_MAX);
//function enqueue_child_theme_styles()
//{
//    wp_enqueue_style('parent-style', get_template_directory_uri() . '/style.css');
//}


add_action('init', 'post_type_blog');

function post_type_blog()
{
    $labels = array(
        'name' => _x('Blogs', 'post type general name', 'your-plugin-textdomain'),
        'singular_name' => _x('Blog', 'post type singular name', 'your-plugin-textdomain'),
        'menu_name' => _x('Custom Blogs', 'admin menu', 'your-plugin-textdomain'),
        'name_admin_bar' => _x('Blogs', 'add new on admin bar', 'your-plugin-textdomain'),
        'add_new' => _x('Add New', 'blog', 'your-plugin-textdomain'),
        'add_new_item' => __('Add New Blog', 'your-plugin-textdomain'),
        'new_item' => __('New Blog', 'your-plugin-textdomain'),
        'edit_item' => __('Edit Blog', 'your-plugin-textdomain'),
        'view_item' => __('View Blog', 'your-plugin-textdomain'),
        'view_items' => __('View Blog', 'your-plugin-textdomain'),
        'all_items' => __('All Blogs', 'your-plugin-textdomain'),
        'search_items' => __('Search Blogs', 'your-plugin-textdomain'),
        'parent_item_colon' => __('Parent Blogs:', 'your-plugin-textdomain'),
        'not_found' => __('No blogs found.', 'your-plugin-textdomain'),
        'not_found_in_trash' => __('No blogs found in Trash.', 'your-plugin-textdomain')
    );

    $args = array(
        'labels' => $labels,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'hierarchical' => false,
        'menu_icon' => 'dashicons-welcome-write-blog',
        'exclude_from_search' => false,
        'public' => true,
        'supports' => array('title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments')
    );

    register_post_type('blog', $args);
}

//My Custom Taxonomy For Custom Post Type => Blogs

add_action('init', 'create_blog_taxonomies', 0);

// create two taxonomies, genres and writers for the post type "book"
function create_blog_taxonomies()
{
// Add new taxonomy, make it hierarchical (like categories)
    $labels_blog_type = array(
        'name' => _x('Blog-Types', 'taxonomy general name', 'textdomain'),
        'singular_name' => _x('Blog-Type', 'taxonomy singular name', 'textdomain'),
        'search_items' => __('Search Blog-Type', 'textdomain'),
        'all_items' => __('All Blog-Types', 'textdomain'),
        'parent_item' => __('Parent Blog-Type', 'textdomain'),
        'parent_item_colon' => __('Parent Blog-Type:', 'textdomain'),
        'edit_item' => __('Edit Blog-Type', 'textdomain'),
        'update_item' => __('Update Blog-Type', 'textdomain'),
        'add_new_item' => __('Add New Blog-Type', 'textdomain'),
        'new_item_name' => __('New Blog-Type Name', 'textdomain'),
        'menu_name' => __('Blog-Type', 'textdomain'),
    );

    $args_blog_type = array(
        'hierarchical' => true,
        'labels' => $labels_blog_type,
        'show_ui' => true,
        'show_admin_column' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'blog-type'),
    );

    register_taxonomy('blog-type', array('blog'), $args_blog_type);
}