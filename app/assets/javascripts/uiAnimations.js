document.addEventListener("DOMContentLoaded", function() {
var speaker = document.getElementsByClassName('speaker-listing');
var bio = document.getElementsByClassName('bio');



// $('.speaker-listing').hover(function() {
//   bio = $(this).find('.bio')
//   // $(bio).toggle("blind");
//   // $('.speaker-listing').toggleClass('dimmed');
//   // $(this).toggleClass('active');
//   // $(bio).toggleClass('active');
// });


  $('.speaker-listing').hover(function() {
    bio = $(this).find('.bio')
      $(bio).toggleClass("active");
      $(bio).toggleClass("hidden");
      console.log('click');
  });
});







// FOR BOUNCING ARROW ON HOMEPAGE LOAD


// window.setInterval(function bounceArrow(){
// $( "#bounce-arrow" ).effect( "bounce", { times: 3 }, "slow" );
// }, 5000);

window.setInterval(function bounceArrow(){
$( "#bounce-arrow" ).effect( "bounce", { times: 1 }, 2500 );
}, 2500);



// FOR SCROLL LOCATION

var myViewport = document.getElementsByTagName('html');
var myViewport = myViewport[0];
var firstSection = document.getElementById('speakers');

myViewport.addEventListener(
    'scroll',
    function() {
        var location = firstSection.viewportTopLocation;
        console.log(
            'The viewport is at ' + location +
            ' relatively to the first section'
        );
    },
    false
);