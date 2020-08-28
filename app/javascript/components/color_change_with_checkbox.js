const ColorChangeWithCheckbox = () => {
  const checkbox = document.getElementById('restaurant_activated');
  // const messageToColor = document.getElementById('');
  if (checkbox) {
      checkbox.addEventListener( 'change', (event) => {
          if(event.currentTarget.checked) {
              console.log(event.currentTarget.checked)
          } else {
              console.log(event.currentTarget.checked)
          }
      });
  }
};

export { ColorChangeWithCheckbox };