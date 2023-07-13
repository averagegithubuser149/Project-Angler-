// Adjust the contact radius as needed
var contactRadius = 100;

// Calculate the distance between "Object7" and the player
var distanceToPlayer = point_distance(x, y, obj_player.x, obj_player.y);

// Check if the player is within the contact radius
if distanceToPlayer < contactRadius
{
    // Calculate the fade amount based on the distance to the player
    var fadeAmount = (contactRadius - distanceToPlayer) / contactRadius;
    
    // Decrease the alpha value of "Object7" based on the fade amount
    alpha = fadeAmount;
    
    // Disable the solid property of "Object7"
    solid = false;
}
else
{
    // Reset the alpha value of "Object7" to fully visible
    alpha = 1;
    
    // Enable the solid property of "Object7"
    solid = true;
    
    // Reset "Object7" if it has fully disappeared
    if alpha <= 0
    {
        // Reset any necessary properties of "Object7"
        // ...
    }
}
