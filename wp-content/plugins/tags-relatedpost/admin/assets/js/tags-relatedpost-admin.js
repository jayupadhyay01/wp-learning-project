var $ = jQuery;

function tgp_delete_tag_row(id) {

    if (confirm('Are you sure ? ')) {

        jQuery.ajax({
            url: admin_url.ajax_url,
            data: {action: 'tgp_delete_tag_action', tgp_data_tag: id},
            type: 'post',

            success: function(tgp_data_tag) {
                alert(tgp_data_tag);
                $("#tag-row-"+id).fadeOut();
            }
        });

    } else {
        return false;
    }
}
function tgp_delete_cat_row(id) {

    if (confirm('Are you sure ? ')) {

        jQuery.ajax({
            url: admin_url.ajax_url,
            data: {action: 'tgp_delete_cat_action', tgp_data_cat: id},
            type: 'post',

            success: function(tgp_data_cat) {
                $("#cat-row-"+id).fadeOut();
            }
        });
    } else {
        return false;
    }
}