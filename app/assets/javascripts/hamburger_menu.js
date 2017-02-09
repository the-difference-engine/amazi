$(document).ready(function () {
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = false;

    // trigger.click(function () {
    //   hamburger_cross();      
    // });

    // function hamburger_cross() {

    //   if (isClosed == true) {          
    //     overlay.hide();
    //     trigger.removeClass('is-open');
    //     trigger.addClass('is-closed');
    //     isClosed = false;
    //   } else {   
    //     overlay.show();
    //     trigger.removeClass('is-closed');
    //     trigger.addClass('is-open');
    //     isClosed = true;
    //   }
    // }

    // trigger.click(function () {
    //   hamburger_cross();
    // });
  
  $('[data-toggle="offcanvas"]').click(function () {
      $('#wrapper').toggleClass('toggled');
      var button = document.getElementsByClassName("hamburger");
      for (var i = 0; i < button.length; i++) {
        if (button[i].style.display === 'none') {
          button[i].style.display = '';
        } else {
          button[i].style.display = 'none';
        }
      }
  });  
});