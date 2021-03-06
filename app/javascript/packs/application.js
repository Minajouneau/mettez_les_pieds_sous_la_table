// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { OpacityWithScroll } from '../components/opacity_with_scroll';
import { ColorChangeWithCheckbox } from '../components/color_change_with_checkbox';
import { loadDynamicBannerText } from '../components/typed_text';
import { initClockPicker } from '../plugins/init_clock_picker';
import { initBStepper } from '../plugins/init_stepper';
import { previewImageOnFileSelect } from '../components/photo_preview';
import { autoSubmitForm } from '../components/autosubmit';
import { autoDeletePhoto } from '../components/autodelete';
// import { slideSidenav} from '../components/sidebar';
import { sweetNotice } from '../components/notice';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initAutocomplete();
  OpacityWithScroll();
  ColorChangeWithCheckbox();
  initBStepper();
  initClockPicker();
  previewImageOnFileSelect();
  autoSubmitForm();
  loadDynamicBannerText();
  autoDeletePhoto();
  // slideSidenav();
  sweetNotice();


})
