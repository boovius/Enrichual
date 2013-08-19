$(function(){
	$('#toggle-password-field').on('click', function(evt){
		
		if ($(this).hasClass('alert')) {
		  $(this).html('Hide Password');
		  
		  $(this).removeClass('alert');
		  $(this).addClass('success');

		  $('#password').attr('type','text');
		}
		else {
      $(this).html('Show Password');
      
      $(this).removeClass('success');
      $(this).addClass('alert');
      
      $('#password').attr('type','password');

		}
		return false;
	});
});