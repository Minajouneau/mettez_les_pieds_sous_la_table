import { csrfToken } from "@rails/ujs";

const autoSubmitForm = () => {
  const forms = document.querySelectorAll(".auto-submit-form");
  forms.forEach((form) => {
    const input = form.querySelector(".photo-input")
    const restaurantId = form.dataset.restaurantId;
    const category = form.querySelector(".hidden-category").value;
    input.addEventListener("click", () => {input.value = null} );
    input.addEventListener("change", () => {
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
      })
    });
  });
};

export { autoSubmitForm };