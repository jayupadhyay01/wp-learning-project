<?php
/**
 * Arcana functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Arcana
 */

if ( ! function_exists( 'arcana_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function arcana_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on Arcana, use a find and replace
		 * to change 'arcana' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'arcana', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'arcana' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'arcana_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'arcana_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function arcana_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'arcana_content_width', 640 );
}
add_action( 'after_setup_theme', 'arcana_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function arcana_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'arcana' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'arcana' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'arcana_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function arcana_scripts() {
	//enqueues our locally supplied font awesome stylesheet
	wp_enqueue_style('fontawesome-all', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css?ver=5.2.3', array('arcana-style'));

	wp_enqueue_style( 'arcana-style', get_stylesheet_uri());

	wp_enqueue_script( 'arcana-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'arcana-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'arcana_scripts' );


function arcana_custom_new_menu() {
	register_nav_menu('arcana-custom-menu',__( 'Arcana Custom Header Menu' ));
}
add_action( 'init', 'arcana_custom_new_menu' );

add_filter('nav_menu_css_class' , 'special_nav_class' , 10 , 2);
function special_nav_class($classes, $item){
	if( in_array('current-menu-item', $classes) ){
		$classes[] = 'current ';
	}
	return $classes;
}


/** My Custom Functionality Coding*/

add_action( 'init', 'post_type_things' );

function post_type_things() {
	$labels = array(
		'name'               => _x( 'Things', 'post type general name', 'your-plugin-textdomain' ),
		'singular_name'      => _x( 'Thing', 'post type singular name', 'your-plugin-textdomain' ),
		'menu_name'          => _x( 'Things', 'admin menu', 'your-plugin-textdomain' ),
		'name_admin_bar'     => _x( 'Things', 'add new on admin bar', 'your-plugin-textdomain' ),
		'add_new'            => _x( 'Add New', 'blog', 'your-plugin-textdomain' ),
		'add_new_item'       => __( 'Add New Thing', 'your-plugin-textdomain' ),
		'new_item'           => __( 'New Things', 'your-plugin-textdomain' ),
		'edit_item'          => __( 'Edit Things', 'your-plugin-textdomain' ),
		'view_item'          => __( 'View Things', 'your-plugin-textdomain' ),
		'view_items'         => __( 'View Things', 'your-plugin-textdomain' ),
		'all_items'          => __( 'All Things', 'your-plugin-textdomain' ),
		'search_items'       => __( 'Search Things', 'your-plugin-textdomain' ),
		'parent_item_colon'  => __( 'Parent Things:', 'your-plugin-textdomain' ),
		'not_found'          => __( 'No Things found.', 'your-plugin-textdomain' ),
		'not_found_in_trash' => __( 'No Things found in Trash.', 'your-plugin-textdomain' )
	);

	$args = array(
		'labels'              => $labels,
		'show_ui'             => true,
		'show_in_rest'             => true,
		'show_in_menu'        => true,
		'query_var'           => true,
		'hierarchical'        => false,
		'menu_icon'           => 'dashicons-smiley',
		'exclude_from_search' => false,
		'public'              => true,
		'supports'            => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments' )
	);
	register_post_type( 'things', $args );
}


/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

