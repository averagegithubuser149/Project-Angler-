

/// @description Insert description here
// You can write your code in this editor

// Move the object based on W, A, S, and D keys
var moveSpeed = 3; // Adjust the value for desired movement speed

// Move Forward
if keyboard_check(ord("W"))
{
    y -= moveSpeed;
}

// Move Backward
if keyboard_check(ord("S"))
{
    y += moveSpeed;
}

// Move Left
if keyboard_check(ord("A"))
{
    x -= moveSpeed;
}

// Move Right
if keyboard_check(ord("D"))
{
    x += moveSpeed;
}