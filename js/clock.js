const CLOCK = document.getElementById("clock");

function UpdateClock() {
    // fetch data
    let current_date = new Date();
    let hours = current_date.getHours();
    let minutes = current_date.getMinutes();
    let seconds = current_date.getSeconds();

    CLOCK.textContent = fix_format(hours) + ":" + fix_format(minutes) + ":" + fix_format(seconds);
}

function fix_format(str_num) {
    if (str_num <= 9) {
        return "0" + str_num;
    } else {
        return str_num;
    }
}

window.onload = setInterval(UpdateClock, 1000);