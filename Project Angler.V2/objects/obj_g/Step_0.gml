// Adjust image_alpha based on collision with "obj_player"
if (collision_circle(x, y, 15, obj_player, true, true)) {
    image_alpha = 0.25;
}
else {
    image_alpha = 1;
}

// Check if the "e" key is pressed
if keyboard_check_pressed(ord("E")) {
    // Check if the additional GUI element exists for obj_g
    if instance_exists(obj_gui_additional_g) {
        // Toggle visibility of the additional GUI element
        obj_gui_additional_g.visible = !obj_gui_additional_g.visible;
    }
    else {
        // Create the additional GUI element for obj_g
        var additionalGuiX = 0;  // The x-coordinate of the additional GUI element
        var additionalGuiY = guiYOffset + 50;  // The y-coordinate of the additional GUI element (adjust as needed)
        instance_create(additionalGuiX, additionalGuiY, obj_gui_additional_g);
    }
}
