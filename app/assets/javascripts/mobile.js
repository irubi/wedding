//= require jquery

//= require jquery.mobile


$(document).bind('mobileinit', function(){
    $.mobile.orientationChangeEnabled = false; // 默认禁止触发 orientationChangeEnabled
});

$(document).ready(function() {
    $.mobile.buttonMarkup.hoverDelay = "false";
});
