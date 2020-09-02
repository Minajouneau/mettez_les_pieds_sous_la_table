import { csrfToken } from "@rails/ujs";

const autoDeletePhoto = () => {
  const trashes = document.querySelectorAll(".remove-photo");
  trashes.forEach((trash) => {
    trash.addEventListener("click", (event) => {
      event.preventDefault();
      const photoId = event.currentTarget.dataset.photoId
      fetch(`/photos/${photoId}`, {
        method: "DELETE",
        credentials: "same-origin",
        headers: {
          "X-CSRF-Token": csrfToken(),
        },
      });
      document.querySelector(`[data-photo-preview-id="${photoId}"]`).remove();
    });
  });
} 

export { autoDeletePhoto };
