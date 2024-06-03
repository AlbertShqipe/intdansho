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
    logoDiv.style.opacity = (-currScrollPos2 / 300 + 1);

    // get the navbar element
    const navbar = document.getElementById('navbar');
    if (currScrollPos2 == 660 || currScrollPos2 > 660 ) {
      navbar.classList = "navbar-660";
    } else  {
    // we select again the element since the class has changed to navbar-660
      navbar.classList = "navbar";
    };
  });
});
