<table class="widefat fixed" cellspacing="0">
    <thead>
    <tr>
        <th id="columnname" class="manage-column column-columnname" scope="col">Tags</th>
        <th id="columnname" class="manage-column column-columnname" scope="col">Categories</th>
        <th id="columnname" class="manage-column column-columnname" scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <?php
        global $wpdb;
        $table_name = $wpdb->prefix . "tgp_category";

        $data = $wpdb->get_results("SELECT * FROM wp_custom_table");