// Draw Event of obj_gui_box
// This event is responsible for drawing the text within the object

// Initialize the text to be displayed
var textLines = [
    "First line of text.",
    "Second line of text.",
    "Third line of text.",
    "Fourth line of text."
];
var currentLine = 0;

// Set the perimeter for text display (adjust as needed)
var textX = x + 16;
var textY = y + 16;
var textWidth = 240;
var textHeight = 64;

// Check for spacebar press
if keyboard_check_pressed(vk_space) {
    // Move to the next line of text or loop back to the first line
    currentLine += 1;
    if (currentLine >= array_length_1d(textLines)) {
        currentLine = 0;
    }
}

// Draw the text within the defined perimeter
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Set the font to bold (use the actual name of your bold font resource)
draw_set_font(font_bold);

// Set the text color to white (RGB: 255, 255, 255)
draw_set_color(c_white);

// Clear the background within the text area
draw_rectangle(textX, textY, textX + textWidth, textY + textHeight, true);

// Draw the text lines within the text area
draw_text_ext(textX, textY, textLines[currentLine], textWidth, textHeight);
draw_text_ext(textX, textY + 32, textLines[currentLine + 1], textWidth, textHeight);

