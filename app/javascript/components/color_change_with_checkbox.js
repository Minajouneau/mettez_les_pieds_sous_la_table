const ColorChangeWithCheckbox = () => {
  const checkbox = document.getElementById('restaurant_activated');
  const messageToColor = document.getElementById('activation');
  checkbox.addEventListener( 'change', (event) => {
      if(event.currentTarget.checked) {
          console.log(event.currentTarget.checked)
          messageToColor.style.color = "#00ccbdff"
      } else {
          console.log(event.currentTarget.checked)
          messageToColor.style.color = "#828585"
      }
  });
};

export { ColorChangeWithCheckbox };