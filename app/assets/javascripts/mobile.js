//= require jquery

//= require jquery.mobile


$(document).bind('mobileinit', function(){
    $.mobile.orientationChangeEnabled = false; // 默认禁止触发 orientationChangeEnabled
    $.mobile.buttonMarkup.hoverDelay = "false";
});



function prefetch(){
  var prefetch_page_links = $("a")
  $.each(prefetch_page_links, function( index, dom ) {
    $.mobile.loadPage ($(dom).attr("href"));
  });
}

$("#index").bind ("pagecreate", function (){
  prefetch();
});

$(document).bind('pagechange', function() {
      if($.mobile.activePage.attr('id') != 'index'){
        prefetch();
      }
});