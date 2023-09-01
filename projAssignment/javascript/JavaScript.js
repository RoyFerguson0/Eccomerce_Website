function detectViewPort() {
    var wd = window.innerWidth
        || document.documentElement.clientWidth
        || document.body.clientWidth;

    document.getElementById("vWidth").innerHTML
        = wd + "px";
}

/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}


