// Check for spacebar press
if keyboard_check_pressed(vk_space) {
    // Move to the next line of text or loop back to the first line
    currentLine += 1;
    if (currentLine >= array_length_1d(textLines)) {
        currentLine = 0;
    }
}
