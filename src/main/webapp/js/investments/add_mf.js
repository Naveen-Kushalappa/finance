$(document).ready(function () {

    $("#btn").click(function (){
        $("#output").text("abc");
    });

    $("#form").submit(function () {
        alert("hello" + $("#name"));
        return false;
    });
});
