$(document).ready(function () {
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = false;
      $window = $(window);

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
    if ($window.width() > 576) {
      $('#addLocationButton').removeClass('small-button').addClass('medium-button');
    } else if ($window.width() <= 575) {
      $('#addLocationButton').removeClass('medium-button').addClass('small-button');
    };
  }

  checkWidth();
  $(window).resize(checkWidth);

  $('[data-toggle="offcanvas"]').click(function () {
      $('#wrapper').toggleClass('toggled');
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
        addLocation.style.display = '';
      } else {
        addLocation.style.display = 'none';
      }
  });
});