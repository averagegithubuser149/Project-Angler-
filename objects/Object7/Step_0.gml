// Animation control
image_speed = 1;  // Set the animation speed (adjust as needed)
image_index += 0.1;  // Advance the animation frames (adjust as needed)

// Movement control
var moveX = lengthdir_x(speed, direction);
var moveY = lengthdir_y(speed, direction);
x += moveX;  // Move the object horizontally
y += moveY;  // Move the object vertically


alpha = 1; // Set the initial alpha value (full opacity)

if alpha <= 0 {
    instance_destroy();
}
