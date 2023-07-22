//Step event, initiate from the start; hence why camera is here
view_xview[0] = x - view_xport[0]/2;
view_yview[0] = y - view_yport[0]/2;

// Adjust these values as needed
var detectionDistance = 10;  // The distance threshold for visibility
var guiYOffset = -100;  // The vertical offset of the GUI element from the screen origin

// Calculate the position of the GUI element based on the screen origin
var guiX = 0;  // The x-coordinate of the GUI element
var guiY = guiYOffset;  // The y-coordinate of the GUI element

// Check if "obj_player" is within the detection distance of "obj_s"
if instance_exists(obj_s) && distance_to_object(obj_s) < detectionDistance {
    // Create or activate the GUI element
    if !instance_exists(obj_gui_ekey) {
        instance_create(guiX, guiY, obj_gui_ekey);
    }
    else {
        obj_gui_ekey.visible = true;
    }
}
else {
    // Deactivate or destroy the GUI element
    if instance_exists(obj_gui_ekey) {
        obj_gui_ekey.visible = false;
    }
}

//Obj_m stuff
if instance_exists(obj_m) && distance_to_object(obj_m) < detectionDistance {
    // Create or activate the GUI element
    if !instance_exists(obj_gui_ekey13) {
        instance_create(guiX, guiY, obj_gui_ekey13);
    }
    else {
        obj_gui_ekey13.visible = true;
    }
}
else {
    // Deactivate or destroy the GUI element
    if instance_exists(obj_gui_ekey13) {
        obj_gui_ekey13.visible = false;
    }
}