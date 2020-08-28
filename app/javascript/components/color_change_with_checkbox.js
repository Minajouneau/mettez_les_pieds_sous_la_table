const ColorChangeWithCheckbox = () => {
  const checkbox = document.getElementById('restaurant_activated');
  const messageEnLigne = document.getElementById('enligne');
  const messageHorsLigne = document.getElementById('horsligne');


  checkbox.addEventListener( 'change', (event) => {
      if(event.currentTarget.checked) {
          messageEnLigne.style.color = "#00ccbdff";
          messageEnLigne.innerText = "En ligne" ;
          messageHorsLigne.style.color = "#00ccbdff";
          messageHorsLigne.innerText = "En ligne";
          console.log(event.currentTarget.checked);
      } else {
        messageEnLigne.style.color = "#828585";
        messageEnLigne.innerText = "Hors-ligne";
        messageHorsLigne.style.color = "#828585";
        messageHorsLigne.innerText = "Hors-ligne";
        console.log(event.currentTarget.checked);
      }
  });
};

export { ColorChangeWithCheckbox };