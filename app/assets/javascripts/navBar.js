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

document.getElementById('nav-toggle').addEventListener('click', function mobileNav(){

  nav = document.getElementById('navbar');
  navToggler = document.getElementById('nav-toggle');
  if(nav.classList.contains('default')){
    nav.classList.remove('default');
    nav.classList.add('nav-expand');
    navToggler.classList.add('nav-toggle-slide');

  } else if(nav.classList.contains('nav-expand')){
    nav.classList.remove('nav-expand');
    nav.classList.add('default');
    navToggler.classList.remove('nav-toggle-slide');
  }
});
});

