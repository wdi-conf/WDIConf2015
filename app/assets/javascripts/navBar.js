document.addEventListener("DOMContentLoaded", function() {

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
});