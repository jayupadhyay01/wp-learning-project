<h2>Tags Entry</h2>
<div class="wrapper">
	<form action="" method="post" name="tgp_tag_submit_form" id="tgp_tag_submit_form"><br>
		<div>
			<label for="tag_name">Tag Name:</label><br>
			<input type="text" name="tag_name" id="tag_name" ><br>
		</div>
        <div>
            <select name="cat_select" id="cat_select">
				<?php
				global $wpdb;
				$table_name = $wpdb->prefix . "tgp_category";
				$data = $wpdb->get_results("SELECT * FROM $table_name");
				foreach ($data as $result) {
				$id = $result->id;
				$category = $result->category;
				?>
                <option value="<?php echo $id ?>"><?php echo $category ?></option>
                <?php } ?>
            </select>
        </div>
		<div>
			<input type="submit" value="Add" name="tgp_tag_submit" id="tgp_tag_submit" class="button-primary">
		</div>
	</form>
</div>