draw_set_color(c_white);
draw_set_font(font_desired); // Use the font resource name you created

// Calculate the position of the text to be centered on obj_gui_box
var textX = x + (sprite_width - string_width(dialogueText)) / 2;
var textY = y + (sprite_height - string_height(dialogueText)) / 2;

draw_text(textX, textY, dialogueText);
