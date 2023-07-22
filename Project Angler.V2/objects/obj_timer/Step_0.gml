// Custom script to pad seconds with leading zeroes
/// @function pad_seconds_zeros(seconds)
/// @param seconds the number of seconds
/// @return the seconds formatted as a string with leading zeroes
var pad_seconds_zeros = function(seconds) {
    var seconds_str = string(seconds);
    if (string_length(seconds_str) < 2) {
        seconds_str = "0" + seconds_str;
    }
    return seconds_str;
};

// Step Event of obj_timer
if timeLeft > 0 {
    timeLeft -= 1; // Subtract 1 second every step

    // Convert timeLeft to minutes and seconds for display
    var minutes = string(floor(timeLeft / 60));
    var seconds = timeLeft mod 60;

    // Format seconds with leading zeroes using the custom script
    var secondsFormatted = pad_seconds_zeros(seconds);

    // Get the viewport (camera) coordinates
    var viewX = view_xview[0];
    var viewY = view_yview[0];

    // Display the remaining time on the screen relative to the viewport
    draw_text(viewX + 10, viewY + 10, "Timer - " + string(minutes) + ":" + secondsFormatted);
}
