var $ = jQuery;

$(document).ready(function () {
    $("#search-box").keyup(function () {
        var name = jQuery("#search-box").val();

        if (name.length >= 3) {
            jQuery.ajax({
                url: admin_url.ajax_url,
                data: {action: 'search_data', data: name},
                type: 'post',

                success: function (data) {
                    $(".search-result").remove();
                    $(".wrapper").after("<div class='search-result'>"+data+"</div>");
                }
            });
        }
        else{
            $(".search-result").remove();
        }
    });

    $('#selectpost').change(function() {
        var data = "";
        $.ajax({
            type: 'post',
            url : admin_url.ajax_url,
            data : {action: 'display_api_post' , postid:$(this).val(), postname: "hcbkjdbghkjcdbgkj"},
            success : function(response) {
                console.log(response);
                $(".display-post").remove();
                $(".api").after("<div class='display-post'>"+response+"</div>");
            },
            error: function() {
                alert('Error Occured');
            }
        });

    });
});