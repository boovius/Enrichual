$(function() {
  var showPartial = function(href) {
    $.ajax({
      method: 'GET',
      url: "/rituals/" + href,
      success: function(html) {
        $('.description').empty();
        $('#' + href.split('/')[1]).append(html);
      }
    });
  };
  
  var rit_id;

  $(".step a").click(function(event) {
    var href = $(this).attr("href");

    var step = href.split('/')[1];
    rit_id = href.split('/')[0];
    console.log(rit_id);

    history.pushState({}, "", "/rituals/" + href);

    showPartial(href);
    
    event.preventDefault();
  });

  $(".description a").click(function(event) {
    console.log(rit_id);
    var href = $(this).attr("href");

    console.log(href);

    console.log(rit_id);

    history.pushState({}, "", "/rituals/" + rit_id);

    $('.description').empty();
    
    event.preventDefault();
  });
  
  $.History.on('change', function(event, url, type) {
      showPartial(url);
  }).listen('pathname');
});