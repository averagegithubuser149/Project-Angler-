/*

// In the Create Event of obj_gui_box
font = font_desired; // Replace "font_desired" with the actual name of the font resource you created (e.g., "font_desired").

// In the Create Event of obj_gui_box
font_bold = font_desired; // Replace "font_bold_desired" with the actual name of your bold font resource.


// Invisble from the start [it's in the create function as this is event that is ran-
// immediately after the game runs, akin to unity; that neat :0
visible = false;

/// @description
// J‘t'iessages
messages = ds_list_create();
messageID = 0;

//Current message
messageText = "";
messageChar = 0;
messageSpeed = 0.3;

//message properties

enum MSG{
TEXT,
NAME,
IMAGE
}
// GUI dimensions
var _guiW = display_get_gui_width();
var _guiH = display_get_gui_height();
// Textbox dimensions
height = floor(_guiH * 0.45);
width = _guiW;

//Position on screen
x = 0;
y = _guiH - height;

// 'other properties'
padding = 8;