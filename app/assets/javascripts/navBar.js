document.addEventListener("DOMContentLoaded", function() {
var speaker = document.getElementById('speaker')

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

    // document.getElementsByClassName('speaker-listing').addEventListener('mouseover', function(){

    // });


});