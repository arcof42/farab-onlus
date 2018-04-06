(function($){
  $(function(){

    $('.sidenav').sidenav();
    $('.parallax').parallax();
    var elem = document.querySelector('.sidenav');
  var instance = M.Sidenav.init(elem, options);

  // Or with jQuery

  $(document).ready(function(){
    $('.sidenav').sidenav();
  });

  }); // end of document ready
})(jQuery); // end of jQuery name space

var instance = M.Carousel.init({
  fullWidth: true,
  indicators: true
});

// Or with jQuery

$('.carousel.carousel-slider').carousel({
  fullWidth: true,
  indicators: true
});
