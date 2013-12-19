function MessageAnimate(messageContent, successMessage) {
    $("#messageDisplayDiv").show();

    if (successMessage == true) {
        $("#messageDisplayDiv").html(messageContent);
        $("#messageDisplayDiv").css("position", "absolute");
        $("#messageDisplayDiv").css("width", "300px");
        $("#messageDisplayDiv").css("height", "300px");
        $("#messageDisplayDiv").css("margin-left", "-150px");
        $("#messageDisplayDiv").css("background", "#063");
        $("#messageDisplayDiv").css("bottom", "0px");
        $("#messageDisplayDiv").css("left", "50%");
        $("#messageDisplayDiv").hide(1000);
    }
    else {
        $("#messageDisplayDiv").html(messageContent);
        $("#messageDisplayDiv").css("position", "absolute");
        $("#messageDisplayDiv").css("width", "300px");
        $("#messageDisplayDiv").css("height", "300px");
        $("#messageDisplayDiv").css("margin-left", "-150px");
        $("#messageDisplayDiv").css("background", "#063");
        $("#messageDisplayDiv").css("bottom", "0px");
        $("#messageDisplayDiv").css("left", "50%");
        $("#messageDisplayDiv").hide(1000);
    }
}