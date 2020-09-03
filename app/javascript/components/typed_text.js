import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typed = document.querySelector('#typed-text');
  // console.log(typed);
  if (typed) {
    const parcours = typed.dataset.userParcours.split('/');
    new Typed('#typed-text', {
      strings: parcours,
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };