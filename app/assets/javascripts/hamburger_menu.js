$(document).ready(function () {
  // var trigger = $('.hamburger'),
  //     overlay = $('.overlay'),
  //     isClosed = false;
    var $window = $(window);

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

  function checkWidth() {
    if ($window.width() > 560) {
      $('#addLocationButton').removeClass('mobile-button');
      $('#addLocationButton').css("width", "");
      $('#buttonDiv').addClass('small-div');
    } else if ($window.width() <= 560) {
      $('#addLocationButton').addClass('mobile-button');
      $(".mobile-button").css("width", "100%");
      $('#buttonDiv').removeClass('small-div');
    };
  }

  checkWidth();
  $window.resize(checkWidth);

  $('[data-toggle="offcanvas"]').click(function () {
      $('#wrapper').toggleClass('toggled');
      $('.mobile-button').animate({
        width: "100%"
      }, 430);
      var button = document.getElementsByClassName("hamburger");
      var addLocation = document.getElementById("addLocationButton");
      for (var i = 0; i < button.length; i++) {
        if (button[i].style.display === 'none') {
          button[i].style.display = '';
        } else {
          button[i].style.display = 'none';
        }
      }
      if (addLocation.style.display === 'none') {
        // setTimeout(function() {
          addLocation.style.display = '';
        // , 500);
      } else {
        addLocation.style.display = 'none';
      }
  });
});