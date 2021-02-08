// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


import 'bootstrap';

import { initUpdateNavbarOnScroll } from '../components/navbar';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
});

import { loadDynamicBannerText } from '../components/banner';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  // [...]
  loadDynamicBannerText();
});


import { initSweetalert } from '../plugins/init_sweetalert.js';

initSweetalert('#sweet-alert-demo', {
  title: "A nice alert",
  text: "This is a great alert, isn't it?",
  icon: "success"
}, (value) => {
  console.log(value);
});
import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
