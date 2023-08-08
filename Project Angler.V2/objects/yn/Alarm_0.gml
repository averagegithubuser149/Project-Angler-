// Check if the choice was made to change the frame
if (choice != 0) {
    // Reset the choice and frame change
    choice = 0;
    image_index = 0;
    // Switch to room2 after 50 frames
    alarm[0] = 50;
}
else {
    // After 50 frames, switch back to room2
    room_goto(room2);
}
