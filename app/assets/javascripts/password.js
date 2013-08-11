// Only run this code after everything has loaded (jQuery.ready)
// and namespace it so we keep things out of the global namespace
$(function() {
  // Set the minimum strength once and use it multiple times
  var MIN_STRENGTH = 3;

  // Set a "keyup" event handler on the password field
  // Each time a key is pressed in that field, we'll calculate
  // the password strength and change the meter, time-to-crack, etc.
  $('#user_password').on('keyup', function(evt) {
    console.log(evt);
    // Get the new password and check its strength
    var s = zxcvbn($(this).val());
    console.log(s);
    // Change the strength meter as necessary to match the new
    // password's strength
    $('#strength-meter')
      .removeClass('w-0')
      .removeClass('w-1')
      .removeClass('w-2')
      .removeClass('w-3')
      .removeClass('w-4')
      .addClass('w-' + s.score);

    // Update the time-to-crack display
    $('#time-to-crack').html(s.crack_time_display);

    // Update the hidden field that send the strength score
    // to the server when the form is submitted
    $('#hidden-strength').val(s.score);

    // Enable/disable the submit button depending on
    // password strength
    if (s.score >= MIN_STRENGTH) {
      $('#save-password').removeClass('disabled');
    } else {
      $('#save-password').addClass('disabled');
    }
  });

  // Prevent the form from being submitted when the submit
  // button is disabled (strength < MIN_STRENGTH)
  $('.edit_user').on('submit', function() {
    if ($('#hidden-strength').val() < MIN_STRENGTH) {
      return false;
    }
  });
});