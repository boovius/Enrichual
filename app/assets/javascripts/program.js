$(function() {
	//var id = $(item).attr('id');
	$('[data-reveal-id=login-modal]').click(function(event){
			console.log('data-reveal-modal clicked');
			var href = $(this).attr('href');
			console.log(href);
	    $.ajax({
     		url : href,
     		success: function(html) {
     			$('#login-modal-content').html(html);
      	}
    	});
    	$('.reveal-modal').foundation('reveal', 'open');
      return false;
		});

	$('body').on('click', '.reveal-modal-bg, .close-reveal-modal', function(event){
		console.log(event);
		$('.reveal-modal').foundation('reveal', 'close');
	});
});