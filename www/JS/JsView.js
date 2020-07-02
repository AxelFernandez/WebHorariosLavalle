
$( document ).ready(function () {

  //  setInterval(callTaxi,60000);
    setInterval(callhour,60000);
  //  var allBoxes = $("div.boxes").children("div");
  //  transitionBox(null, allBoxes.first());
    });

    //function transitionBox(from, to) {
    //    function next() {
    //        var nextTo;
    //        if (to.is(":last-child")) {
    //            nextTo = to.closest(".boxes").children("div").first();
    //        } else {
    //            nextTo = to.next();
    //        }
    //        to.fadeIn(500, function () {
    //            setTimeout(function () {
    //                transitionBox(to, nextTo);
    //            }, 20000);
    //        });
    //    }

    //    if (from) {
    //        from.fadeOut(500, next);
    //    } else {
    //        next();
    //    }
    //}


function callhour() {
    var request = $.ajax({
        url: "http://localhost/index.php/welcome/getajax",
        method: "GET",
        dataType: "html"
    });

    request.done(function( msg ) {
        document.getElementById("hours").innerHTML = (msg);
    });

    request.fail(function( jqXHR, textStatus ) {
        alert( "Request failed: " + textStatus );
    });

}
function callTaxi() {
    var request = $.ajax({
        url: "http://localhost/index.php/welcome/getajaxTaxi",
        method: "GET",
        dataType: "html"
    });

    request.done(function( msg ) {
        document.getElementById("taxi").innerHTML = (msg);
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

// sleep time expects milliseconds
function sleep (time) {
    return new Promise((resolve) => setTimeout(resolve, time));
}
