// Check if the "e" key is pressed
if keyboard_check_pressed(ord("E")) {
    // Check if the additional GUI element exists
		//Women appears
	if instance_exists(obj_gui_additionalb)
		//Text box
	if instance_exists(obj_gui_additionalb){
			//Cause elements to appear
         obj_gui_additionalb.visible = !obj_gui_additionalb.visible;
		 
		  obj_gui_box.visible = !obj_gui_box.visible;
    }
    else {
        // Calculate the position of the additional GUI element based on the screen origin
        var additionalGuiX = 0;  // The x-coordinate of the additional GUI element
        var additionalGuiY = guiYOffset + 50;  // The y-coordinate of the additional GUI element (adjust as needed)
        
        // Create the additional GUI element
        instance_create(additionalGuiX, additionalGuiY, obj_gui_additionalb);
		
		instance_create(additionalGuiX, additionalGuiY, obj_gui_box);
		
    }
}


// Check if the "e" key is pressed
if keyboard_check_pressed(ord("Q")) {
    // Check if the additional GUI element doesn't exist
    if !instance_exists(obj_m) {
        // Calculate the position of the additional GUI element based on the screen origin
        var additionalGuiX = 0;  // The x-coordinate of the additional GUI element
        var additionalGuiY = guiYOffset + 50;  // The y-coordinate of the additional GUI element (adjust as needed)
        
        // Create the additional GUI element
        instance_create(additionalGuiX, additionalGuiY,  obj_m);
    }
    else {
        // Deactivate or destroy the GUI element
        obj_m.visible = false;
    }
}

