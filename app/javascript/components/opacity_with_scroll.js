const OpacityWithScroll = () => {
    const opacityScroll = document.querySelector('.chief-presentation');
    if (opacityScroll) {
      let opacityNumber = 1; 
      window.addEventListener('scroll', () => {
        opacityNumber = 1 - (window.scrollY/600);
        if (window.scrollY <= 600) {
          opacityScroll.style.opacity = opacityNumber;
        };
      });
    };
  }
  
  export { OpacityWithScroll };

        // if (currentScrollY < window.scrollY) {
        //   // console.log('down');
        //   // if (opacityNumber > 0) {
        //   //   opacityNumber -= 0.01; 
        //   // };
        // } else {
        //   // console.log("up");
        //   opacityScroll.style.opacity = opacityNumber;
        //   // if (opacityNumber != 1) {
        //   //   opacityNumber += 0.01; 
        //   // };
        // };
        // currentScrollY = window.scrollY;
        // console.log(currentScrollY);