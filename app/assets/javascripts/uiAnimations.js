document.addEventListener("DOMContentLoaded", function() {
var speaker = document.getElementsByClassName('speaker-listing');
var bio = document.getElementsByClassName('bio');


  $('.speaker-listing').hover(function() {
    bio = $(this).find('.bio')
      $(bio).toggleClass("active");
      $(bio).toggleClass("hidden");
  });
});

// FOR BOUNCING ARROW ON HOMEPAGE LOAD


window.setInterval(function bounceArrow(){
$( "#bounce-arrow" ).effect( "bounce", { times: 3 }, "slow" );
}, 5000);
