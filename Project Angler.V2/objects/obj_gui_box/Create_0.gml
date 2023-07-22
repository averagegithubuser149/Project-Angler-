//Makes the object invisble from the start :o
//copy 'n paste baby that how we roll, reuse code 
visible = false;

// Create Event of obj_gui_box
// (Assuming "obj_gui_box" is the object representing the text box
// Assuming "dialogueCursor" is a sprite representing the cursor

var dialogueText = "Help me! The boat crashed and-. Please get me out of here. "; // Your initial dialogue text
var cursorDelay = 30; // The number of characters to show before updating the cursor
var cursorCounter = 0; // Counter to keep track of characters shown

// Set the initial alarm for the first update after 2 seconds
alarm[0] = room_speed * 2; // 2 seconds (assuming room_speed is set to 60)

