//= require 'slider'

$(function() {
  $('.rotating-images').lightSlider({
    auto: true,
    loop: true,
    pauseOnHover: true,
    autoWidth: true,
    item: 1,
    slideMargin: 0,
    adaptiveHeight: true,
    speed: 1000
  });
});
