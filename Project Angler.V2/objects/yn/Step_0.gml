// Check if 'Y' key is pressed
if (keyboard_check_pressed(ord("Y"))) {
    choice = 1; // Set the choice to 'Y'
    chosenFrame = 1;
    alarm[0] = 50; // Set alarm to 50 frames (1 second)
}

// Check if 'N' key is pressed
if (keyboard_check_pressed(ord("N"))) {
    choice = 2; // Set the choice to 'N'
    chosenFrame = 2;
    alarm[0] = 50; // Set alarm to 50 frames (1 second)
}

// Check if the alarm is active
if (alarm[0] > 0) {
    // Set the frame to the chosen frame
    image_index = chosenFrame;
    // Decrement the alarm
    alarm[0]--;
}

/*
// Variable to keep track of the choice
var choice = 0;
// Variable to count frames after a choice is made
var frameCounter = 0;
// Variable to store the frame chosen by the player
var chosenFrame = 0;

// Check if 'Y' key is pressed
if (keyboard_check_pressed(ord("Y"))) {
    choice = 1; // Set the choice to 'Y'
    chosenFrame = 1;
    // Switch to 'room2'
    room_goto(room2);
}

// Check if 'N' key is pressed
if (keyboard_check_pressed(ord("N"))) {
    choice = 2; // Set the choice to 'N'
    chosenFrame = 2;
    // Switch to 'room2'
    room_goto(room2);
}

// Check if a choice has been made
if (choice != 0) {
    // Set the frame to the chosen frame
    image_index = chosenFrame;
    // Increment the frame counter
    frameCounter++;
    // Check if 50 frames have passed
    if (frameCounter >= 510) {
        // Reset the choice and frameCounter
        choice = 0;
        frameCounter = 0;
        // Return to 'room2'
        room_goto(room2);
    }
}
