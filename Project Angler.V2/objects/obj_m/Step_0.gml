// Adjust image_alpha based on collision with "obj_player"
if (collision_circle(x, y, 15, obj_player, true, true)) {
    image_alpha = 0.25;
}
else {
    image_alpha = 1;
}

// Check if the "e" key is pressed
if keyboard_check_pressed(ord("R")) {
    // Check if the additional GUI element exists for obj_m
    if instance_exists(obj_gui_additional_m) {
        // Toggle visibility of the additional GUI element
        obj_gui_additional_m.visible = !obj_gui_additional_m.visible;
    }
    else {
        // Create the additional GUI element for obj_m
        var additionalGuiX = 0;  // The x-coordinate of the additional GUI element
        var additionalGuiY = guiYOffset + 50;  // The y-coordinate of the additional GUI element (adjust as needed)
        instance_create(additionalGuiX, additionalGuiY, obj_gui_additional_m);
    }
}
else 
	image_alpha = 1; 
	
	/*
if(collision_circle (x, y, 15, obj_player, true, true))
>>>>>>> 056e1b810ec845065103079929bc8fb75d05da25
