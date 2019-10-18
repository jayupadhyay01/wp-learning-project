<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Arcana
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body class="is-preload" <?php body_class(); ?>>
    <div id="page-wrapper">
        <!-- Header -->
        <div id="header">

            <!-- Logo -->
            <h1><a href="<?php echo get_home_url(); ?>" id="logo"> <em><?php bloginfo('description');   ?></em></a></h1>

            <!-- Nav -->
            <nav id="nav">
	        <?php




	        $args = array(
		        'menu'            => '',
		        'container'       => 'ul',
		        'container_class' => '',
		        'container_id'    => '',
		        'menu_class'      => '',
		        'menu_id'         => '',
		        'echo'            => true,
		        'fallback_cb'     => 'wp_page_menu',
		        'before'          => '',
		        'after'           => '',
		        'link_before'     => '',
		        'link_after'      => '',
		        'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
		        'item_spacing'    => 'preserve',
		        'depth'           => 0,
		        'walker'          => '',
		        'theme_location'  => '',
	        );

	        wp_nav_menu( $args);

            ?>
<!--            </nav>-->
<!--            <nav id="nav">-->
<!--                <ul>-->
<!--                    <li class="current"><a href="--><?php //echo get_home_url(); ?><!--">Home</a></li>-->
<!--                    <li>-->
<!--                        <a href="#">Dropdown</a>-->
<!--                        <ul>-->
<!--                            <li><a href="#">Lorem dolor</a></li>-->
<!--                            <li><a href="#">Magna phasellus</a></li>-->
<!--                            <li><a href="#">Etiam sed tempus</a></li>-->
<!--                            <li>-->
<!--                                <a href="#">Submenu</a>-->
<!--                                <ul>-->
<!--                                    <li><a href="#">Lorem dolor</a></li>-->
<!--                                    <li><a href="#">Phasellus magna</a></li>-->
<!--                                    <li><a href="#">Magna phasellus</a></li>-->
<!--                                    <li><a href="#">Etiam nisl</a></li>-->
<!--                                    <li><a href="#">Veroeros feugiat</a></li>-->
<!--                                </ul>-->
<!--                            </li>-->
<!--                            <li><a href="#">Veroeros feugiat</a></li>-->
<!--                        </ul>-->
<!--                    </li>-->
<!--                    <li><a href="left-sidebar.html">Left Sidebar</a></li>-->
<!--                    <li><a href="right-sidebar.html">Right Sidebar</a></li>-->
<!--                    <li><a href="two-sidebar.html">Two Sidebar</a></li>-->
<!--                    <li><a href="no-sidebar.html">No Sidebar</a></li>-->
<!--                </ul>-->
<!--            </nav>-->

        </div>
