import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-text', {
    strings: ["« Mon engagement envers la pomme de terre »", "« Vive les lardons »"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };