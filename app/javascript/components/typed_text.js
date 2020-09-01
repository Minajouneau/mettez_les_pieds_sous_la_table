import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typed = document.querySelector('#typed-text');
  console.log(typed);
  if (typed) {
    const parcours = typed.dataset.userParcours;
    new Typed('#typed-text', {
      strings: [parcours],
      typeSpeed: 30,
      loop: true
    });
  }
}

export { loadDynamicBannerText };