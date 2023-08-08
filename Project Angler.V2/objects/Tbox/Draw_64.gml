// Draw GUI Event of obj_Tbox
// This event is responsible for drawing the textbox and its contents on the GUI layer

// Visuals of the box
var _arr = messages[| messageID];

var _name = _arr[MSG.NAME];
var _image = _arr[MSG.IMAGE];

// Draw the 9-slice background using the TextSquare sprite
draw_sprite(TextSquare, 0, x, y); // Draw without using draw_sprite_ext

// Draw position for content
var _drawX = x + padding;
var _drawY = y + padding;

// Draw image (if it exists)
if (sprite_exists(_image)) {
    var _imageW = sprite_get_width(_image);
    var _imageH = sprite_get_height(_image);

    // Draw image
    draw_sprite(_image, 0, _drawX + _imageW / 2, _drawY + _imageH / 2);
    _drawX += _imageW + padding; // Offset drawing position for text
}

// Set text font and color
draw_set_font(font_desired);
draw_set_color(c_white);

// Draw name
draw_text(_drawX, _drawY, _name);

_drawY += string_height(_name) + padding;

// Get maximum width for text
var _maxW = width - (_drawX + padding);

// Draw text with wrapping
draw_set_halign(fa_left); // Set the horizontal alignment to left
draw_text_ext(_drawX, _drawY, messageText, _maxW, -1);

// Reset color
draw_set_color(c_black);
