
$( document ).ready(function() {

    setInterval('callhour()',60000);


});

function callhour() {
    var request = $.ajax({
    url: "http://localhost/index.php/welcome/getajax",
    method: "GET",
    dataType: "html"
    });

    request.done(function( msg ) {
        //alert("hola")
        document.getElementById("hours").innerHTML = (msg );
    });

    request.fail(function( jqXHR, textStatus ) {
        alert( "Request failed: " + textStatus );
    });

}
function startTime() {
    var today = new Date();
    var hr = today.getHours();
    var min = today.getMinutes();
    var sec = today.getSeconds();
    //Add a zero in front of numbers<10
    min = checkTime(min);
    sec = checkTime(sec);
    document.getElementById("clock").innerHTML = hr + " : " + min + " : " + sec;
    var time = setTimeout(function(){ startTime() }, 500);
}
function checkTime(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}
