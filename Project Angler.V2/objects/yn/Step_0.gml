// Variable to store player's choice (1 for 'Y', 2 for 'N', and 0 for no choice)
var choice = 0;

// Check if 'Y' key is pressed
if (keyboard_check_pressed(ord("Y"))) {
    choice = 1; // Set the choice to 'Y'
}

// Check if 'N' key is pressed
if (keyboard_check_pressed(ord("N"))) {
    choice = 2; // Set the choice to 'N'
}

// Update the frame based on the player's choice
switch (choice) {
    case 1:
        // Set the frame to the first frame (index 0) when 'Y' is pressed
        image_index = 0;
        break;
    case 2:
        // Set the frame to the second frame (index 1) when 'N' is pressed
        image_index = 1;
        break;
    default:
        // Set the frame to the default frame (index 0) when no choice is made
        image_index = 0;
        break;
}

// Check if the player has pressed any key
if (keyboard_check_pressed(vk_anykey)) {
    // Switch to the 'room2' room
    room_goto(room2);
}
