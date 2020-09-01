import Stepper from 'bs-stepper'

const initBStepper = () => {
  const element = document.querySelector('.bs-stepper');
  if (element) {
    const stepper = new Stepper(element, {linear: false, animation: true});
    const buttons = document.querySelectorAll('.next-step');
    buttons.forEach(button => {
      button.addEventListener("click", () => {
        stepper.next();
      } )
    });
  };
}

export {initBStepper};