$(document).ready(function () {
    $(document).ready(function () {
        $("table#id2 tr:even").css("background-color", "#F4F4F8");
        $("table#id2 tr:odd").css("background-color", "#EFF1F1");
    });

    $("#addEditMedicine").dialog({
        autoOpen: false,
        modal: true,
        title: "Add Edit Medicine",
        resizable: false,
        width: 400,
        close: function () {
        }
    });
});
function Save() {
    var data = new Object();
    data.MedicineId = $('#hdnMedicineId').val();
    data.MedicineName = $('#txtMedicineName').val();
    data.GenericName = $('#txtGenericName').val();
    data.CompanyName = $('#txtCompanyName').val();
    data.IsPrescriptionRequired = $('#chkIsPrescriptionRequired').prop("checked");
    data.ToBeDisplayedInFrontEnd = $('#chkDisplayInFrontEnd').prop("checked");

    $.ajax({
        type: "POST",
        url: $("#urlprefix").val() + "Medical/Save",
        data: data,
        dataType: "json",
        success: function (data) {
            if (data == 1 || data == 3) {
                $('#hdnMedicineId').val(0);
                $("#addEditMedicine").dialog("close");
                MessageAnimate("Save Successfull", true);
                window.location = $("#urlprefix").val() + "Medical/medical";
            }
        },
        error: function (data) {
            MessageAnimate("Save Unsuccessfull", false);
        }
    });
    return false;
}

function moveRight(e) {
    $(e).parent().parent().remove();
}

function DeleteMedicine(id) {
    if (confirm("Are you sure you want to delete the selected Medicine?")) {
        $.ajax({
            type: "POST",
            url: $("#urlprefix").val() + "Medical/Delete",
            data: "id=" + id,
            dataType: "json",
            success: function (data) {
                window.location = $("#urlprefix").val() + "Medical/medical";
            },
            error: function (data) { }
        });    
    }
}

function AddMedicine() {
    $("#addEditMedicine").dialog("open");
}

function EditMedicine(id) {
    $("#addEditMedicine").dialog("open");
    $.ajax({
        type: "POST",
        url: $("#urlprefix").val() + "Medical/GetMedicineDetailsById",
        data: "id=" + id,
        dataType: "json",
        success: function (data) {
            $('#txtMedicineName').val(data[0].MedicineName);
            $('#txtGenericName').val(data[0].GenericName);
            $('#txtCompanyName').val(data[0].CompanyName);
            $('#chkIsPrescriptionRequired').prop("checked", data[0].IsPrescriptionRequired);
            $('#chkDisplayInFrontEnd').prop("checked", data[0].ToBeDisplayedInFrontEnd);
            $('#hdnMedicineId').val(id);
        },
        error: function (data) { }
    });
}