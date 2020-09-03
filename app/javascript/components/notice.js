import Swal from 'sweetalert2/dist/sweetalert2.js'
import 'sweetalert2/src/sweetalert2.scss'
window.Swal = Swal;

const sweetNotice = () => {
  const btns = document.querySelectorAll(".next-step")
  btns.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      Swal.fire({
  position: 'top-end',
  icon: 'success',
  title: 'Modifications sauvegardées!',
  showConfirmButton: false,
  timer: 900
})
    })
  })
}

export { sweetNotice }

