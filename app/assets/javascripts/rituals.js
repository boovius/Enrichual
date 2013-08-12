$(function() {
  var showPartial = function(href) {
    console.log('show partial called');
    $.ajax({
      method: 'GET',
      url: "/rituals/" + href,
      success: function(html) {
        console.log('success!!');
        $('.step .description').empty();
        $('#' + href.slice('/')).html(html);
      }
    });
  };
  
  $(".step a").click(function(event) {
    var href = $(this).attr("href");
    console.log(href);
    
    history.pushState({}, '', href);
    var url = "/rituals/" + href;

    console.log(url);
    showPartial(href);
    
    event.preventDefault();
  });
  
  $.history.on('change', function(event, url, type) {
      showPartial(url);
  }).listen('pathname');
});