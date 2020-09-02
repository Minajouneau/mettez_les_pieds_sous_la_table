import { csrfToken } from "@rails/ujs";
import { autoDeletePhoto } from "./autodelete";

const autoSubmitForm = () => {
  const forms = document.querySelectorAll(".auto-submit-form");

  forms.forEach((form) => {
    const input = form.querySelector(".photo-input")
    const restaurantId = form.dataset.restaurantId;
    input.addEventListener("click", () => {input.value = null} );
    input.addEventListener("change", (event) => {
      const category = event.target.dataset.category;
      const data = new FormData();
      data.append("photo[category]", category);
      data.append("photo[file]", input.files[0]);
      fetch(`/restaurants/${restaurantId}/photos`, {
        method: "POST",
        credentials: "same-origin",
        headers: {
          "Accept": "text/html",
          "X-CSRF-Token": csrfToken()
        },
        body: data
      }).then(response => response.text())
      .then( (data) => {
        document.querySelector(`[data-category="${category}"]`).outerHTML = data;
        autoDeletePhoto();
      })
    });
  });
};

export { autoSubmitForm };