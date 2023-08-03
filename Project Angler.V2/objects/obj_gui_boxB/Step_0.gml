/*
// Update the text every 2 seconds
if (updateCounter >= room_speed * 2) {
    // Replace the old dialogue text with new text here
    dialogueText = ds_queue_dequeue(textQueue);
    
    // Reset the update counter
    updateCounter = 0;
}

// Increment the update counter
updateCounter++;
