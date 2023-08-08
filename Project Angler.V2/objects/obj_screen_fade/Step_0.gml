// Step Event of obj_screen_fade

// Get the instance ID of "obj_player"
var playerInst = instance_find(obj_player, 0);

// Calculate the distance between "obj_screen_fade" and "obj_player"
var distanceToPlayer = point_distance(x, y, playerInst.x, playerInst.y);

// Calculate the fade alpha based on the distance to "obj_player"
var fadeAlpha = 0;
var triggerDistance = 300; // The distance threshold for triggering the fade effect

if (playerInst != noone && distanceToPlayer <= triggerDistance) {
    fadeAlpha = max(0, 1 - (distanceToPlayer / triggerDistance));
}

// Set the alpha of the object based on the calculated fade alpha
alpha = fadeAlpha;
