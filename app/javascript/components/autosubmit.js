const autoSubmit = () => {
  const fileButton = document.getElementById("photo-input");
  const formToSubmit = document.getElementById("submit");
  fileButton.onchange = function () {
    formToSubmit.submit();
  };
};

export { ColorChangeWithCheckbox };
