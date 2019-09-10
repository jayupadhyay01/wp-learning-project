<h2>Tags Entry</h2>
<?php
global $wpdb;
$table_name_tag = $wpdb->prefix . "tgp_tag";
$tag_get_id = filter_input(INPUT_GET, 'tag_id', FILTER_SANITIZE_STRING);
if(isset($tag_get_id) && !empty($tag_get_id)){
	$get_tag_data = $wpdb->get_row($wpdb->prepare("SELECT * FROM $table_name_tag WHERE id = '%s'", $tag_get_id));
}?>
<div class="wrapper">
	<form action="" method="post" name="tgp_tag_submit_form" id="tgp_tag_submit_form"><br>
		<div>
			<label for="tag_name">Tag Name:</label><br>
			<input type="text" value="<?php echo isset($get_tag_data->tag_name) ? ($get_tag_data->tag_name) : '' ; ?>" name="tag_name" id="tag_name" ><br>
		</div>
        <div>
            <select name="cat_select" id="cat_select">
                <option value="">Select Category</option>
				<?php
				$table_name_cat = $wpdb->prefix . "tgp_category";
				$cat_data = $wpdb->get_results("SELECT * FROM $table_name_cat");
				foreach ($cat_data as $result) {
				$id = $result->id;
				$category = $result->category;
				?>
                <option <?php echo (isset($get_tag_data)&&$get_tag_data->cat_id == $id) ? 'selected' : '' ?> value="<?php echo $id ?>"><?php echo $category ?></option>
                <?php } ?>
            </select>
        </div>
		<div>

			<input type="submit" value="<?php echo isset($tag_get_id) ? 'Update' : 'Add' ; ?>" name="tgp_tag_submit" id="tgp_tag_submit" class="button-primary">
		</div>
	</form>
</div>

<?php
