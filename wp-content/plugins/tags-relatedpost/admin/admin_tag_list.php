<div class="wrap">
    <h2>Tags
        <a class="add-new-h2" href="http://wp-learning.local.in/wp-admin/admin.php?page=tag-entry">Add New</a>
    </h2>
    <div class="error notice is-dismissible" style="display:none;">

    </div>
	<?php
	$tag_msg_get = filter_input(INPUT_GET, 'msg', FILTER_SANITIZE_STRING);
	if(isset($tag_msg_get)){
        ?><div class="notice notice-<?php if( $tag_msg_get=="InsertedSuccessfully" ) { echo "success"; } elseif ( $tag_msg_get=="UpdatedSuccessfully" ){ echo "info"; } elseif ( $tag_msg_get=="TagNameAlreadyExists" ) { echo "error"; } ?> is-dismissible"><p><?php echo $tag_msg_get ?></p></div><?php
	}
	?>
    <p></p>
    <form method="post" action="/wp-admin/admin.php?page=tag_list">
        <table class="tagtable wp-list-table widefat fixed striped" width="100%">
            <thead>
            <tr>
                <th width="43%"><a href="#">Tags</a></th>
                <th width="43%"><a href="#">Category</a></th>
                <th colspan="2" align="center"><a href="#">Actions</a></th>
            </tr>
            </thead>
            <tbody>
<?php

global $wpdb;
$table_name_tag = $wpdb->prefix . "tgp_tag";
$table_name_cat = $wpdb->prefix . "tgp_category";
$data           = $wpdb->get_results( "SELECT * FROM $table_name_cat JOIN $table_name_tag ON $table_name_cat.id = $table_name_tag.cat_id" );

foreach ($data as $result) {
$id = $result->id;
$tag = $result->tag_name;
$category = $result->category;
?>
<tr id="tag-row-<?php echo $id ?>">
    <td><?php echo $tag ?></td>
    <td><?php echo $category ?></td>
    <td colspan="2"><a href="<?php echo admin_url('admin.php?page=tag-entry&tag_id='.$id); ?>">Edit</a> | <a id="" class="delete_cat" href="#" onclick="tgp_delete_tag_row(<?php echo $id; ?>)">Delete</a></td>
</tr>
<?php
}

