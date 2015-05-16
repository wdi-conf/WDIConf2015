document.addEventListener("DOMContentLoaded", function() {
var speaker = document.getElementsByClassName('speaker-listing');
var bio = document.getElementsByClassName('bio');

  // FOR EXPANDING BIOS ON SPEAKERS PAGE
    //   for(i = 0; i<speaker.length; i++){
    //     speaker[i].addEventListener('mouseover', function(){
    //       console.log('hi' + i);
    //         $( ".bio" ).toggle( "blind");
    //     })

    // };

    //   for(i = 0; i<speaker.length; i++){
    //     speaker[i].addEventListener('mouseout', function(){
    //       console.log('hi' + i);
    //         $( ".bio" ).toggle( "blind");
    //     })

    // };
});




// FOR BOUNCING ARROW ON HOMEPAGE LOAD


window.setInterval(function bounceArrow(){
$( "#bounce-arrow" ).effect( "bounce", { times: 3 }, "slow" );
}, 5000);
