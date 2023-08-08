
// Set the detection distance (adjust as needed)
var detectionDistance = 50;

// Find the nearest instance of "obj_m"
var nearbyObj_m = instance_nearest(x, y, obj_m);
// Find the nearest instance of "obj_s"
var nearbyObj_s = instance_nearest(x, y, obj_s);
// Find the nearest instance of "obj_g"
var nearbyObj_g = instance_nearest(x, y, obj_g);

// Calculate the distance to the nearest "obj_m", "obj_s", and "obj_g"
var mDistance = point_distance(x, y, nearbyObj_m.x, nearbyObj_m.y);
var sDistance = point_distance(x, y, nearbyObj_s.x, nearbyObj_s.y);
var gDistance = point_distance(x, y, nearbyObj_g.x, nearbyObj_g.y);

// Check if any of the objects are within the detection distance of "obj_player"
if (mDistance < detectionDistance || sDistance < detectionDistance || gDistance < detectionDistance) {
    // Check if there is an active interaction with any object
    if (activeInteraction != noone) {
        return; // Do nothing if there is an active interaction
    }

    // Create or activate the GUI element if it doesn't exist
    if (!instance_exists(obj_gui_ekey)) {
        instance_create(x, y, obj_gui_ekey);
    }
    obj_gui_ekey.visible = true;
}
else {
    // Deactivate the GUI element if it exists
    if (instance_exists(obj_gui_ekey)) {
        obj_gui_ekey.visible = false;
    }
}


// Adjust image_alpha based on collision with "obj_m", "obj_s", or "obj_g"
if (collision_circle(x, y, 15, obj_m, true, true) || collision_circle(x, y, 15, obj_s, true, true) || collision_circle(x, y, 15, obj_g, true, true)) {
    image_alpha = 0.25;
}
else {
    image_alpha = 1;
}


/*
//Step event, initiate from the start; hence why camera is here
view_xview[0] = x - view_xport[0]/2;
view_yview[0] = y - view_yport[0]/2;

// Adjust these values as needed
var detectionDistance = 10;  // The distance threshold for visibility
var guiYOffset = -100;  // The vertical offset of the GUI element from the screen origin

// Calculate the position of the GUI element based on the screen origin
var guiX = 0;  // The x-coordinate of the GUI element
var guiY = guiYOffset;  // The y-coordinate of the GUI element

/*

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