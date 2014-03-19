var fastButtons = {
  replace: function() {
    var clickEvents = jQuery.hasData( document ) && jQuery._data( document ).events.click;
    clickEvents = jQuery.extend(true, {}, clickEvents);
    $(document).off('click');
    for (var i in clickEvents) {
      $(document).on('vclick', clickEvents[i].handler);
    }
  }
};
$(document).ready(function() {
    fastButtons.replace();
});