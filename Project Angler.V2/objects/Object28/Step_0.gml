// In any object's Step event or an event that you want to trigger the room switch

// Check if any key is pressed
if (keyboard_check_pressed(vk_anykey)) {
    // Switch to the 'room2' room
    room_goto(room2);
}
