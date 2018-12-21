function getClockById (identifier) {
    return document.getElementById(identifier);
}


function getHours (clock) {
    return clock.getHours();
}


function getMinutes (clock) {
    return clock.getMinutes();
}


function getSeconds (clock) {
    return clock.getSeconds();
}


function showTime (hrs, mins, secs) {
    getClockById('clock_timingId').innerHTML = hrs + ':' + mins + ':' + secs; 
}

setInterval(function () {
    let clock = new Date()
    let hrs = getHours(clock);
    let mins = getMinutes(clock);
    let secs = getSeconds(clock);

    if (secs < 10) {
        secs = 0 + getSeconds(clock);
    }
    if (mins < 10) {
        mins = 0 + getMinutes(clock);
    }
    if (hrs < 10) {
        hrs = 0 + getHours(clock);
    }
    showTime(hrs, mins, secs)
})
