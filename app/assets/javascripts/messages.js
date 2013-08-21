
$(document).ready(function() {
  $(".message").click(message_fadeOnClick);
});


function message_fadeOnClick() { 
  console.log('here');
  $('.message').fadeOut(750); 
    return false 
}