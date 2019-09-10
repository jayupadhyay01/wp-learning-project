<div class="wrap">
    <h2>Tags
        <a class="add-new-h2" href="http://wp-learning.local.in/wp-admin/admin.php?page=category-entry">Add New</a>
    </h2>
    <div class="error notice is-dismissible" style="display:none;">
    </div><?php
	$cat_msg_get = filter_input( INPUT_GET, 'msg', FILTER_SANITIZE_STRING );
	if ( isset( $cat_msg_get ) ) {
		?>
        <div class="notice notice-<?php if ( $cat_msg_get == "InsertedSuccessfully" ) {
			echo "success";
		} elseif ( $cat_msg_get == "UpdatedSuccessfully" ) {
			echo "info";
		} elseif ( $cat_msg_get == "AlreadyExist" ) {
			echo "error";
		} ?> is-dismissible"><p><?php echo $cat_msg_get ?></p></div>
		<?php
	}
	?>
    <form method="post" action="">
        <table class="tagtable wp-list-table widefat fixed striped" width="100%">
            <thead>
            <tr>
                <th width="80%"><a href="#">Categories</a></th>
                <th colspan="2" align="center"><a href="#">Actions</a></th>
            </tr>
            </thead>
            <tbody>
			<?php
			global $wpdb;
			$table_name = $wpdb->prefix . "tgp_category";
			$data       = $wpdb->get_results( "SELECT * FROM $table_name" );

			foreach ( $data as $result ) {
				$id       = $result->id;
				$category = $result->category;
				?>
                <tr id="cat-row-<?php echo $id ?>">
                    <td><?php echo $category ?></td>
                    <td colspan="2"><a href="<?php echo admin_url( 'admin.php?page=category-entry&cat_id=' . $id ); ?>">Edit</a>
                        | <a id="" class="delete_cat" href="#"
                             onclick="tgp_delete_cat_row(<?php echo $id; ?>)">Delete</a></td>
                </tr>
				<?php
			}
			?>
            <tfoot>
            <tr>
                <th width="80%"><a href="#">Categories</a>
                </th>
                <th colspan="2" align="center"><a href="#">Actions</a>
                </th>
            </tr>
            </tfoot>
        </table>
    </form>
</div>
