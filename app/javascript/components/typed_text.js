import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typed = document.querySelector('#typed-text');
  if (typed) {
    new Typed('#typed-text', {
      strings: ["« Mon engagement envers la pomme de terre »", "« Vive les lardons »"],
      typeSpeed: 40,
      loop: true
    });
  }
}

export { loadDynamicBannerText };