// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener("DOMContentLoaded", function() {
  // current code is used to get the current position of the scroll in the window
  window.addEventListener('scroll', function() {
    // get the current position of the window based on the scrolling
    var currScrollPos2 = window.scrollY || document.documentElement.scrollTop || document.body.scrollTop || 0;

    // select the div to reduce or augment the opacity based on the position of the scrollbar
    const logoDiv = this.document.getElementById('logo');
    if (logoDiv) {
      logoDiv.style.opacity = (-currScrollPos2 / 300 + 1);
    } else {
      ''
    }

    // get the navbar element
    const navbar = document.getElementById('navbar');
    if (currScrollPos2 == 660 || currScrollPos2 > 660 ) {
      navbar.classList = "navbar-660";

      // set the navbar to navbar-660 when the user is on the prestations page
    } else if (window.location.href == "https://www.internationaldanceshow.com/prestations" && currScrollPos2 == 250 || currScrollPos2 > 250) {

    // we select again the element since the class has changed to navbar-660
      navbar.classList = "navbar-660";

      // set the navbar to navbar-660 when the user is on the coursdedanse page
    } else if (window.location.href == "https://www.internationaldanceshow.com/coursdanse" && currScrollPos2 == 30 || currScrollPos2 > 30) {
      navbar.classList = "navbar-660";
    } else {
      // we set the navbar to the original class
      navbar.classList = "navbar";
    };

    // set the footer to fixed when the user is on the animationenfants page
    const footer = document.getElementById('footer');
    if (window.location.href == "https://www.internationaldanceshow.com/animationsenfants" || window.location.href == "https://www.internationaldanceshow.com/cadeau") {
      footer.style.position = "fixed";
      footer.style.bottom = "0";
    } else  {
      // we select again the element since the class has changed to navbar-660
        footer.style.position = "";
    };
  });
});

document.addEventListener("DOMContentLoaded", function() {
  setTimeout(function() {
      // Hide the splash screen
      document.getElementById("splash-screen").style.display = "none";
      // Show the main content
      document.getElementById("main-content").style.display = "block";
  }, 3000); // 3000 milliseconds = 3 seconds
});
