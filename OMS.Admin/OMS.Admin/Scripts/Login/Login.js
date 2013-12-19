function UnlockUser() {
    var userName = $("#UserName").val();

    $.ajax({
        type: "POST",
        url: $("#urlprefix").val() + "Account/UnlockUser",
        data: { userName: userName },
        success: function (d) {
            console.log(d);
        },
        error: function (xhr) {
            console.log(xhr);
        }

    });
}