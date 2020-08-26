const OpacityWithScroll = () => {
    const opacityScroll = document.querySelector('.chief-presentation');
    if (opacityScroll) {
      let opacityNumber = 1; 
      window.addEventListener('scroll', () => {
        opacityScroll.style.opacity = opacityNumber;
        console.log('event');
        opacityNumber -= 0.01;
      });
    }
  }
  
  export { OpacityWithScroll };
              // if (window.scrollY >= (window.innerHeight) / 4) {
              //   opacity.classList.add('chief-presentation-2');
              // } else if (window.scrollY >= (window.innerHeight) / 2) {
              //     opacity.classList.add('chief-presentation-3');
              // } else {
              //   opacity.classList.remove('chief-presentation-2');
              // }
  

  // const OpacityWithScroll = () => {
  //   const opacityScroll = document.querySelector('.chief-presentation');
  //   if (opacityScroll) {
  //     let opacityNumber = 1; 
  //     let lastScrollTop = 0;
  //     window.addEventListener('scroll', () => {
  //       const st = window.pageYOffset || document.documentElement.scrollTop;
  //       if (st > lastScrollTop) {
  //         opacityScroll.style.opacity = opacityNumber;
  //         console.log('event');
  //         opacityNumber -= 0.01;
  //       } else {
  //         opacityScroll.style.opacity = opacityNumber;
  //         console.log('event');
  //         opacityNumber += 0.01; 
  //       // if (window.scrollY >= (window.innerHeight) / 4) {
  //       //   opacity.classList.add('chief-presentation-2');
  //       // } else if (window.scrollY >= (window.innerHeight) / 2) {
  //       //     opacity.classList.add('chief-presentation-3');
  //       // } else {
  //       //   opacity.classList.remove('chief-presentation-2');
  //       // }
  //       }
  //     });
  //   }
  // }
  
  // export { OpacityWithScroll };