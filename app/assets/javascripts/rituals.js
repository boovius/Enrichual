$(function() {
  var showPartial = function(href) {
    $.ajax({
      method: 'GET',
      url: "/rituals/" + href,
      success: function(html) {
        $('.step .description').empty();
        console.log($('#' + href.slice('/')).html(html));
      }
    });
  };
  
  $(".step a").click(function(event) {
    var href = $(this).attr("href");

    console.log(href.slice('/step'));
    
    history.pushState({}, '', href);

    showPartial(href);
    
    event.preventDefault();
  });
  
  $.history.on('change', function(event, url, type) {
      showPartial(url);
  }).listen('pathname');
});