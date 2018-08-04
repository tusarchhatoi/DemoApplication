$(document).ready(function () {
    $(".datepicker").datepicker({
        format: "dd/mm/yyyy"
    }).on('changeDate', function () {
        $(this).datepicker('hide');
    });

    $("#<%=FileUpload1.ClientID %>").change(function () {
        readURL(this);
    });

    $("#<%=TxtFirstName.ClientID %>").change(function () {
        bindFname(this);
    });
});


function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#image_upload_preview').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

function bindFname(input) {

    var fname = $("#<%=TxtFirstName.ClientID%>").val();
    $("#<%=LblFName.ClientID%>").html(fname);
}