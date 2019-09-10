<h2>Category Entry</h2>
<?php
global $wpdb;
$table_name = $wpdb->prefix . "tgp_category";
$cat_get_id = filter_input(INPUT_GET, 'cat_id', FILTER_SANITIZE_STRING);
if(isset($cat_get_id) && !empty($cat_get_id)){
	$get_data = $wpdb->get_row($wpdb->prepare("SELECT * FROM $table_name WHERE id = '%s'", $cat_get_id));
}
?>
<div class="wrapper">
    <form action="" method="post" name="tgp_cat_submit_form" id="tgp_cat_submit_form"><br>
        <div>
            <label for="cat_name">Category Name:</label><br>
            <input type="text" name="cat_name" id="cat_name" value="<?php echo isset($get_data->category) ? ($get_data->category) : '' ; ?>"><br>
        </div>
        <div>
            <input type="submit" value="<?php echo isset($cat_get_id) ? 'Update' : 'Add' ; ?>" name="tgp_cat_submit" id="tgp_cat_submit" class="button-primary">
        </div>
    </form>
</div>