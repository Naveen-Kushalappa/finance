$(document).ready(function () {
    var debug = true;

    function processSideMenuItemClick(id) {
        var innerHtml = "<object type='text/html' data=" + id +".html ></object>";
        if (debug) {
            $("#status").append("<br> loaded "+id);
        }
        document.getElementById("container").innerHTML=innerHtml;
    }

    $("#slidebar").on("click", "a", function(e) {
        e.preventDefault();
        var child = $(this);
        var $this = $(this).parent();
        $this.addClass("active").siblings().removeClass("active");
        var sideMenuItemId = child[0].id;
        if (debug) {
            $("#status").append("<br> clicked side menu id "+sideMenuItemId);
        }
        processSideMenuItemClick(sideMenuItemId);
    });
});
