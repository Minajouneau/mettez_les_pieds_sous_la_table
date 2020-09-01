import flatpickr from "flatpickr";

const initClockPicker = () => {
    flatpickr(".clockpicker", {
        enableTime: true,
        noCalendar: true,
        dateFormat: "H:i",
        time_24hr: true
    });
};

export {initClockPicker};
