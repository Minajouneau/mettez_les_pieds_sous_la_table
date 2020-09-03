import Stepper from 'bs-stepper'

const initBStepper = () => {
  const element = document.querySelector('.bs-stepper');
  if (element) {
    const stepper = new Stepper(element, {linear: false, animation: true});
    element.addEventListener('show.bs-stepper', function (event) {
      // You can call preventDefault to stop the rendering of your step
      // event.preventDefault()

      console.warn(event.detail.indexStep)
    })
    const buttons = document.querySelectorAll('.next-step');
    buttons.forEach(button => {
      button.addEventListener("click", () => {
        stepper.next();
      })
    });
    const buttonsPrevious = document.querySelectorAll('.previous-step');
    buttonsPrevious.forEach(buttonsPrevious => {
      buttonsPrevious.addEventListener("click", () => {
        stepper.previous();
      })
    });
  };
}

export {initBStepper};
