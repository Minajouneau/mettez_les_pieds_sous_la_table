import $ from "jquery";

const autoSubmitForm = () => {
  const forms = $("auto-submit-form");
  forms.find(".photo-input").change((event) => {
    console.log(event);
  });
};

export { autoSubmitForm };
