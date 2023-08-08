/// scr_detect_player(detectionDistance, playerX, playerY)
// This script detects if "obj_player" is within the specified detectionDistance
// and handles the visibility of "obj_gui_ekey" accordingly.

/*
var detectionDistance = argument0;
var playerX = argument1;
var playerY = argument2;

// Calculate the distance to "obj_player"
var playerDistance = point_distance(x, y, playerX, playerY);

// Check if "obj_player" is within the detection distance of the calling object
if (playerDistance < detectionDistance) {
    // Create or activate the GUI element
    if (!instance_exists(obj_gui_ekey)) {
        instance_create(x, y, obj_gui_ekey);
    }
    else {
        obj_gui_ekey.visible = true;
    }
}
else {
    // Deactivate or destroy the GUI element
    if (instance_exists(obj_gui_ekey)) {
        obj_gui_ekey.visible = false;
    }
}
