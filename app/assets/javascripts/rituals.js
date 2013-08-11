$(function() {
  var showPartial = function(href) {
    $.ajax({
      method: 'GET',
      url: "/rituals/" + href,
      success: function(html) {
        console.log('hello!');
        $('.description').empty();
        $('#' + href.slice('/')).html(html);
      }
    });
  };
  
  $("a").click(function(event) {
    var href = $(this).attr("href");
    
    history.pushState({}, '', href);
    
    showPartial(href);
    
    event.preventDefault();
  });
  
  $.history.on('change', function(event, url, type) {
      showPartial(url);
  }).listen('pathname');
});