// Draw Event of obj_gui_box
// (Assuming "obj_gui_box" is the object representing the text box
// Assuming "dialogueCursor" is a sprite representing the cursor

var dialogueText = "Help me! The boat crashed and-. Please get me out of here. "; // Your initial dialogue text
var cursorDelay = 30; // The number of characters to show before updating the cursor
var cursorCounter = 0; // Counter to keep track of characters shown

// Check if 2 seconds have passed and update the dialogue text
if (alarm[0] <= 0) {
    // Replace the old dialogue text with new text here
    dialogueText = "Please let's hurry to shore. ";
    
    // Reset the alarm for the next update after 2 seconds
    alarm[0] = room_speed * 2; // 2 seconds (assuming room_speed is set to 60)
    
    // Reset the cursor counter
    cursorCounter = 0;
}

// Draw the dialogue text with the cursor line
draw_set_color(c_white);

// Set the font using the font resource directly
draw_set_font(font_desired); // Use the font resource name you created

// Calculate the position of the text to be centered on obj_gui_box
var textX = obj_gui_box.x + (obj_gui_box.sprite_width - string_width(dialogueText)) / 2;
var textY = obj_gui_box.y + (obj_gui_box.sprite_height - string_height(dialogueText)) / 2;

draw_text(textX, textY, dialogueText);

// Increment the cursor counter
cursorCounter += 1;

// Draw the cursor line every 30 characters
if (cursorCounter % cursorDelay == 0) {
    var cursorX = textX + string_width(dialogueText); // Get the x-coordinate at the end of the text
    var cursorY = textY; // Same y-coordinate as the text
    draw_sprite(dialogueCursor, 0, cursorX, cursorY); // Draw the cursor sprite
}
