/*
// Set the dimensions of the text box
var textBoxWidth = display_get_gui_width() * 0.7;
var textBoxHeight = 80;
var textBoxX = display_get_gui_width() / 2;
var textBoxY = display_get_gui_height() * 0.8;

// Set the font and text color
var font = font_desired; // Replace with your desired font
var textColor = c_white;

// Initialize the dialogue text
var dialogueText = "This is a sample dialogue text that wraps around when reaching the edge of the box.";

// Initialize the text display variables
var currentLine = 0;
var textSpeed = 0.3; // Adjust the speed at which the text appears (lower values make it appear slower)

// Calculate the number of characters to show per line
var charsPerLine = floor((textBoxWidth * 0.7) / font_get_string_width("A"));

// Split the dialogue text into lines
var textLines = string_word_wrap(dialogueText, charsPerLine);

// Variable to keep track of how much text has been displayed
var displayedChars = 0;

// Variable to keep track of whether the entire text has been displayed
var textFullyDisplayed = false;

// Function to draw the text box
var drawTextBox = function() {
    draw_set_font(font_desired);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(textColor);
    draw_roundrect(textBoxX - textBoxWidth / 2, textBoxY - textBoxHeight / 2, textBoxX + textBoxWidth / 2, textBoxY + textBoxHeight / 2, 10);
    draw_set_halign(fa_left); // Set the horizontal alignment to left for the text
    draw_set_valign(fa_top); // Set the vertical alignment to top for the text
    draw_text_ext_transformed(textBoxX - textBoxWidth / 2 + 10, textBoxY - textBoxHeight / 2 + 10, textLines[currentLine], textBoxWidth * 0.7 - 20, textBoxHeight - 20, 0, 1, 1);
};

// Check if the "E" key is pressed
if (keyboard_check_pressed(ord("E"))) {
    // Check if there's more text to display
    if (currentLine < array_length_1d(textLines) - 1 || displayedChars < string_length(dialogueText)) {
        // Display the next line or more text
        var textToShow = textLines[currentLine] + string_copy(dialogueText, displayedChars + 1, charsPerLine);
        displayedChars += charsPerLine;
        
        // Check if the displayed text has reached the end of the dialogue text
        if (displayedChars >= string_length(dialogueText)) {
            textFullyDisplayed = true;
        }
        
        // Wrap the text to fit in the text box
        var wrappedText = string_word_wrap(textToShow, charsPerLine);
        
        // Check if the next line will fit in the text box
        if (currentLine + 1 < array_length_1d(textLines) && string_height(wrappedText) + string_height(textLines[currentLine + 1]) <= textBoxHeight - 20) {
            currentLine += 1;
        }
    }
    else {
        // If all text has been displayed, hide the text box
        visible = false;
    }
}



/*
if keyboard_check_pressed(ord("E"))
{
    // Set the dialogue message here
    obj_dialogue_box.messageText = "Hello! This is a simple dialogue box.\nPress 'E' again to continue.";
    obj_dialogue_box.messageChar = 0; // Reset the character index

    // Show the dialogue box
    obj_dialogue_box.visible = true;
}
