
/*
// Draw the text box when it's visible
if (visible) {
    drawTextBox();
}

/*
// Draw the dialogue box background
draw_set_color(c_black);
draw_rectangle(x, y, x + width, y + height, false);
draw_set_color(c_white);
draw_rectangle(x + 1, y + 1, x + width - 1, y + height - 1, false);

// Draw the text inside the dialogue box
draw_set_font(dialogue_font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

// Calculate the maximum width for text to fit inside the box
var max_width = width - 16;

// Draw the dialogue text (adjust messageText variable accordingly)
draw_text_ext(x + 8, y + 8, messageText, max_width, max_height);
