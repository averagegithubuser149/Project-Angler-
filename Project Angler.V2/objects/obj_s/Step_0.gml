// Adjust image_alpha based on collision with "obj_player"
if (collision_circle(x, y, 15, obj_player, true, true)) {
    image_alpha = 0.25;
}
else {
    image_alpha = 1;

}


	
// Check if the "T" key is pressed
if keyboard_check_pressed(ord("T")) {
    // Check if the additional GUI element exists for obj_s
    if instance_exists(obj_gui_additional_s) {
        // Toggle visibility of the additional GUI element
        obj_gui_additional_s.visible = !obj_gui_additional_s.visible;
    }
    else {
        // Create the additional GUI element for obj_s
        var additionalGuiX = 0;  // The x-coordinate of the additional GUI element
        var additionalGuiY = guiYOffset + 50;  // The y-coordinate of the additional GUI element (adjust as needed)
        instance_create(additionalGuiX, additionalGuiY, obj_gui_additional_s);
    }

    // Toggle visibility of "HHBOX"
    if instance_exists(HHBOX) {
   HHBOX.visible = !HHBOX.visible;
    }
}

if keyboard_check_pressed(ord("T")) {
    // Create an alarm to change rooms after 200 frames
    alarm[0] = 150;
}

