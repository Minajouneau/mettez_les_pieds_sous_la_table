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
    const buttonsPrevious = document.querySelectorAll('.previous-step');
    buttonsPrevious.forEach(buttonsPrevious => {
      buttonsPrevious.addEventListener("click", () => {
        stepper.previous();
      } )
    });
  };
}

export {initBStepper};