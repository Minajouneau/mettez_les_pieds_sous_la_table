import places from 'places.js';

const initAutocomplete = () => {
  const addressInputNew = document.getElementById('autocompletion-new');
  if (addressInputNew) {
    places({ container: addressInputNew });
  }
  const addressInputEdit = document.getElementById('autocompletion-edit');
  if (addressInputEdit) {
    places({ container: addressInputEdit });
  }
};

export { initAutocomplete };