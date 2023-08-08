
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


/*
// Initialize dialogue properties
messageText = "";
messageChar = 0;
messageSpeed = 0.05; // Adjust the speed at which characters appear

// Dialogue box dimensions
width = room_width / 3;
height = 100;
x = (room_width - width) / 2;
y = room_height - height - 20;

// Set the font to be used for dialogue
dialogue_font = font_desired; // Replace "font_desired" with the actual name of the font resource you want to use.
