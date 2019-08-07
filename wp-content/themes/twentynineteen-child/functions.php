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

//Register Meta Box
function display_settings_meta_box()
{
    $post_type_array = array('post', 'blog', 'page');
    add_meta_box('display-setting-box-id', esc_html__('Display Settings', 'text-domain'), 'display_settings_box_callback', $post_type_array, 'side', 'high');
}

add_action('add_meta_boxes', 'display_settings_meta_box');

//Add field
function display_settings_box_callback($meta_id)
{

    $title_field = get_post_meta($meta_id->ID, 'post_display_options', true);

    // check title_field is empty or not and set as yes
    ?>
    <label for="title_field"
           style="width:250px; display:inline-block;"><?php echo esc_html__('Do You Want To Display This Blog In Listings?', 'text-domain'); ?>
    </label>
    <select name="disp_options" id="disp_options" style="width:250px;">
        <option value="yes" <?php selected('yes', $title_field, true); ?>>Yes</option>
        <option value="no" <?php selected('no', $title_field, true); ?>>No</option>
    </select>
    <?php
}

function save_metabox_callback($post_id)
{
    $value = isset($_POST['disp_options']);

    $title_field = get_post_meta($post_id, 'post_display_options', true);

    if (isset($title_field) && !empty($title_field)) {
        add_post_meta($post_id, 'post_display_options', $value);
    } else {
        update_post_meta($post_id, 'post_display_options', $value);
    }

}

add_action('save_post', 'save_metabox_callback');

//Dashbord Widget Creation

// Function that outputs the contents of the dashboard widget
function blog_count_dashboard_widget_function()
{
    ?>
    <label for="title_field"
           style="width:250px; display:inline-block; font-weight: bolder;"><?php echo esc_html__('TOP Visited Blog Counts', 'text-domain'); ?>
    </label><br/><br/>
    <table style="width:100%; border: 2px solid;">
    <tr>
        <th style="border: 2px solid;">Blog Name</th>
        <th style="border: 2px solid;">Count</th>
    </tr>

    <?php

    $args = array(
        'post_status' => 'publish',
        'post_type' => 'blog',
        'meta_key' => 'visit_count',
        'orderby' => 'meta_value_num',
        'posts_per_page' => 3,
        'order' => 'DESC',
    );

    $blog_count = new WP_Query($args);

    if ($blog_count->have_posts()) :
        while ($blog_count->have_posts()) : $blog_count->the_post();
            $count_num = get_post_meta(get_the_ID(), 'visit_count', true);
            ?>
            <tr>
                <td style="border: 2px solid; text-align: center"><?php the_title(); ?> </td>
                <td style="border: 2px solid; text-align: center"><?php echo $count_num; ?></td>
            </tr>
        <?php

        endwhile;
        ?>
        </table>
    <?php
    else :
        echo('No Visit Count');
    endif;

}

// Function used in the action hook
function add_count_dashboard_widgets()
{
    wp_add_dashboard_widget('count_dashboard_widget', 'Blog/Post Count Dashboard Widget', 'blog_count_dashboard_widget_function');
}

// Register the new dashboard widget with the 'wp_dashboard_setup' action
add_action('wp_dashboard_setup', 'add_count_dashboard_widgets');


//Register Meta For Visit Count  Box on Page
function page_display_visit_count_meta_box()
{
    $post_type_array = array('post', 'blog', 'page');
    add_meta_box('display-blog-visit-box-id', esc_html__('Blog Visit Count', 'text-domain'), 'page_display_visit_count', $post_type_array, 'side', 'high');
}

add_action('add_meta_boxes', 'page_display_visit_count_meta_box');

//Add field for Visit Count Box on Page(above meta box)
function page_display_visit_count()
{
    // check title_field is empty or not and set as yes
    ?>
    <label for="title_field"
           style="width:250px; display:inline-block;"><b><?php echo esc_html__('Visit Count Of This Blog: ', 'text-domain'); ?></b>
    </label>
    <h2 style="text-align: justify;"><b>Count: <?php echo get_post_meta(get_the_ID(), 'visit_count', true); ?></b></h2>
    <?php
}

// register my custom widget

// Register and load the widget
function jy_load_widget()
{
    register_widget('jy_first_widget');
}

add_action('widgets_init', 'jy_load_widget');

// Creating My Custom widget
class jy_first_widget extends WP_Widget
{

    function __construct()
    {
        parent::__construct(

// Base ID of your widget
            'jy_first_widget',

// Widget name will appear in UI
            __('First Widget', 'jy_first_widget_domain'),

// Widget description
            array('description' => __('My First Widget Creation', 'jy_first_widget_domain'),)
        );
    }

// Creating widget front-end

    public function widget($args, $instance)
    {
        ?>
        <div class="custom-widget-one">
            <h2><?php echo $instance['title'] ?></h2>
            <h4><?php echo $instance['tag_line'] ?></h4>
            <?php
            $post_type = $instance['post_type'];
            $limit =  (!empty($instance['limit']) ? $instance['limit'] : 5);
            echo $limit;
            $args = array(
                'post_type' => $post_type,
                'post_status' => 'publish',
                'posts_per_page' => $limit,
                'order' => 'ASC',
                'order_by' => 'date',
            );
            $posts = new WP_Query($args);
            if ($posts->have_posts()) :
                while ($posts->have_posts()) : $posts->the_post();
                    ?>
                    <h5><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
                <?php
                endwhile;
            else :
                echo('No Post Found');
            endif;
            ?>
            <h4><?php echo $instance['tag_line'] ?></h4>
        </div>
        <?php
    }

// Widget Backend
    public function form($instance)
    {
        if (isset($instance['title']) && isset($instance['tag_line']) && isset($instance['post_type']) && isset($instance['limit'])) {
            $title = $instance['title'];
            $tag_line = $instance['tag_line'];
            $post_type = $instance['post_type'];
            $limit = (!empty($instance['limit']) ? $instance['limit'] : 5);
        } else {
            $title = __('New title', 'jy_first_widget_domain');
            $tag_line = __('New Tag Line', 'jy_first_widget_domain');
            $post_type = __('post', 'jy_first_widget_domain');
            $limit = __(5, 'jy_first_widget_domain');
        }
// Widget admin form
        ?>
        <p>
            <label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:'); ?></label>
            <input class="widefat" id="<?php echo $this->get_field_id('title'); ?>"
                   name="<?php echo $this->get_field_name('title'); ?>" type="text"
                   value="<?php echo esc_attr($title); ?>"/>
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('tag_line'); ?>"><?php _e('TagLine:'); ?></label>
            <input class="widefat" id="<?php echo $this->get_field_id('tag_line'); ?>"
                   name="<?php echo $this->get_field_name('tag_line'); ?>" type="text"
                   value="<?php echo esc_attr($tag_line); ?>"/>
        </p>
        <p><?php
            $post_types = get_post_types();
            unset($post_types['attachment'], $post_types['revision'], $post_types['nav_menu_item'], $post_types['custom_css'], $post_types['customize_changeset'], $post_types['oembed_cache'], $post_types['user_request'], $post_types['wp_block']);
            ?>
            <label for="<?php echo $this->get_field_id('post_type'); ?>"><?php _e('Select Post Type:'); ?></label>
            <select name="<?php echo $this->get_field_name('post_type'); ?>"
                    class="widefat" <?php echo $this->get_field_id('post_type'); ?>>
                <option value=''>Select Post Type</option>
                <?php
                foreach ($post_types as $each_post) {
                    ?>
                    <option value='<?php echo $each_post; ?>' <?php selected($each_post, $post_type, true); ?>><?php echo $each_post; ?></option>
                <?php }
                ?>
            </select>
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('limit'); ?>"><?php _e('Post Limit:'); ?></label>
            <input class="tiny-text" id="<?php echo $this->get_field_id('limit'); ?>"
                   name="<?php echo $this->get_field_name('limit'); ?>" type="number"
                   value="<?php echo esc_attr( $limit ); ?>"/>
        </p>
        <?php
    }

// Updating widget replacing old instances with new
    public function update($new_instance, $old_instance)
    {
        $instance = array();
        $instance['title'] = (!empty($new_instance['title'])) ? strip_tags($new_instance['title']) : '';
        $instance['tag_line'] = (!empty($new_instance['tag_line'])) ? strip_tags($new_instance['tag_line']) : '';
        $instance['post_type'] = (!empty($new_instance['post_type'])) ? strip_tags($new_instance['post_type']) : '';
        $instance['limit'] = (!empty($new_instance['limit'])) ? strip_tags($new_instance['limit']) : '';
        return $instance;
    }
} // Class wpb_widget ends here