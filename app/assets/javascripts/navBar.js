document.addEventListener("DOMContentLoaded", function() {
var speaker = document.getElementsByClassName('speaker-listing');
var bio = document.getElementsByClassName('bio');

  document.getElementById('navbar').addEventListener('mouseover', function(){
      if (this.classList.contains('default')){
        this.classList.remove('default');
        this.classList.add('nav-expand');
      }
    });

  document.getElementById('navbar').addEventListener('mouseout', function(){
      if (this.classList.contains('nav-expand')){
        this.classList.remove('nav-expand');
        this.classList.add('default');
      }
    });

    // document.getElementsByClassName('speaker-listing').addEventListener('click', function(){
      // $(newBox).effect('slide', { direction: 'right', mode: 'hide' }, 500);
      for(i = 0; i<speaker.length; i++){
        speaker[i].addEventListener('click', function(){
          console.log('hi' + i);
          // .show("fold", 1000 )
        })
    };


});