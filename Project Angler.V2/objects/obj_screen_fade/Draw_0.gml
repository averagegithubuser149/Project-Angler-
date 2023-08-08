// Draw Event of obj_screen_fade

draw_set_color(c_black); // Set the color to black
draw_set_alpha(alpha); // Set the transparency based on the alpha value

// Draw a rectangle covering the whole screen to create the fade effect
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_alpha(1); // Reset the alpha value back to fully opaque (1)
