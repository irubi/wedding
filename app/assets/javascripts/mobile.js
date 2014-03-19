//= require jquery

//= require jquery.mobile

//= require photoswipe/photoswipe
$(document).bind('mobileinit', function(){
    $.mobile.orientationChangeEnabled = false; // 默认禁止触发 orientationChangeEnabled
    $.mobile.buttonMarkup.hoverDelay = "false";
});

var already_active_gallery = false;

function prefetch(){
  var prefetch_page_links = $("a")
  $.each(prefetch_page_links, function( index, dom ) {
    $.mobile.loadPage ($(dom).attr("href"));
    if($("#gallery a").length > 0 && !already_active_gallery){
      $("#gallery a").photoSwipe()
      already_active_gallery = true;
    };
  });
}

$("#index").bind("pageload", function(){
  $("#index").show();
});

$("#index").bind ("pagecreate", function (){
  prefetch();
});

$(document).bind('pagechange', function() {
  prefetch();      
});


