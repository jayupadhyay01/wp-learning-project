var $ = jQuery;

// $(document).ready(function () {
//     $('#trp_tag_list_table').DataTable({
//         "bJQueryUI": true,
//         "sPaginationType": "full_numbers",
//         "bPaginate": true,
//         "bFilter": true,
//         "bSort": true,
//         "aaSorting": [
//             [1, "asc"]
//         ],
//         "aoColumnDefs": [{
//             "bSortable": true,
//             "aTargets": [0]
//         }, {
//             "bSortable": true,
//             "aTargets": [1]
//         }, {
//             "bSortable": true,
//             "aTargets": [2]
//         }],
//     });
// });


function trp_delete_tag_row(id) {
    if (confirm('Are you sure ? ')) {
        jQuery.ajax({
            url: admin_url.ajax_url,
            data: {action: 'trp_delete_tag_action', trp_data_tag: id},
            type: 'post',

            success: function (trp_data_tag) {
                $("#tag-row-" + id).fadeOut();
                $(".error").show();
                $(".error").html("<p>Sucessfully Deleted</p>");
                $(".error").delay(1000).fadeOut();
            }
        });

    } else {
        return false;
    }
}

function trp_delete_cat_row(id) {

    if (confirm('Are you sure ? ')) {

        jQuery.ajax({
            url: admin_url.ajax_url,
            data: {action: 'trp_delete_cat_action', trp_data_cat: id},
            type: 'post',

            success: function (trp_data_cat) {
                $("#cat-row-" + id).fadeOut();
                $(".error").show();
                $(".error").html("<p>Sucessfully Deleted</p>");
                $(".error").delay(1000).fadeOut();
            }
        });
    } else {
        return false;
    }
}


$(document).ready(function () {

    $('form[id="trp_cat_submit_form"]').validate({
        rules: {
            cat_name: 'required',
        },
        messages: {
            cat_name: 'This field is required',
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
    $('form[id="trp_tag_submit_form"]').validate({
        rules: {
            tag_name: {
                required: true,
                minlength: 3,
            },
            cat_select: {
                required: true
            }
        },
        messages: {
            tag_name: {
                required: 'This field is required',
                minlength: 'Please Enter Minimum 3 letter',
            },
            cat_select: {
                required: 'Please Select any category'
            }
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
    $(".notice").delay(1000).fadeOut();
});
