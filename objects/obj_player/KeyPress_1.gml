// "WASD" Input-Movement
var moveSpeed = 45; // Speed

// Up
if keyboard_check(ord("W"))
{
    y -= moveSpeed;
}

// Down
if keyboard_check(ord("S"))
{
    y += moveSpeed;
}

// Left
if keyboard_check(ord("A"))
{
    x -= moveSpeed;
}

// Right
if keyboard_check(ord("D"))
{
    x += moveSpeed;
}