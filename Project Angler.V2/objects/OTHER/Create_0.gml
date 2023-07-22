// Create Event of an object (e.g., obj_timer)
var startTime = current_time; // Store the current time when the game starts

// Step Event of the same object (e.g., obj_timer)
var timerDuration = 180000; // 3 minutes in milliseconds (1 minute = 60 seconds = 60000 milliseconds)
var elapsedTime = current_time - startTime;

if (elapsedTime >= timerDuration) {
    // Code to execute when the 3-minute timer is up
    // For example: show_message("Time's up!");
}
