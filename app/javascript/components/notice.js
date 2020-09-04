import Swal from 'sweetalert2/dist/sweetalert2.js'
import 'sweetalert2/src/sweetalert2.scss'
window.Swal = Swal;

const sweetNotice = () => {
  const btns = document.querySelectorAll(".next-step")
  btns.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      Swal.fire({
        position: 'bottom-end',
        html: '<p> <strong> Modifications sauvegardées! </strong> </p>',
        width:370,
        padding: '1em',
        showConfirmButton: false,
        timer: 900
});
    });
  });


const prevBtns = document.querySelectorAll(".previous-step")
  prevBtns.forEach((prevBtn) => {
  prevBtn.addEventListener('click', (event) => {
      Swal.fire({
        position: 'bottom-end',
        html: '<p> <strong> Modifications sauvegardées! </strong> </p>',
        width:370,
        padding: '1em',
        showConfirmButton: false,
        timer: 900
});
    });
  });

const saveBtns = document.querySelectorAll(".save-button")
  saveBtns.forEach((saveBtn) => {
  saveBtn.addEventListener('click', (event) => {
      Swal.fire({
        position: 'bottom-end',
        html: '<p> <strong> Modifications sauvegardées! </strong> </p>',
        width:370,
        padding: '1em',
        showConfirmButton: false,
        timer: 900
});
    });
  });

}


export { sweetNotice }

