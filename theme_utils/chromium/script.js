const months = [
    "January", "February",
    "March", "April", "May",
    "June", "July", "August",
    "September", "October", "November",
    "December"
];

function setTime() {
    const time_span = document.getElementById("time");
    const date = new Date();
    const year = date.getFullYear();
    const month = months[date.getMonth()];
    const day_num = date.getDate();
    time_span.innerHTML = `${month} ${day_num}`;
}

setTime()
