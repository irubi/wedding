//= require photoswipe/klass.min
//= require photoswipe/code.photoswipe-3.0.5
//= require photoswipe/jquery.transit
//= require photoswipe/hammer
//= require photoswipe/jquery.hammer
(function(window, PhotoSwipe){
  document.addEventListener('DOMContentLoaded', function(){
    var options = {captionAndToolbarOpacity:0.3}, instance = PhotoSwipe.attach( window.document.querySelectorAll('#gallery a'), options );
  }, false);
}(window, window.Code.PhotoSwipe));