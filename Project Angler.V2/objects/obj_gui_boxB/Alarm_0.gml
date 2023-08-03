/*
// Clear the displayed text
dialogueText = "";

// If there are words left in the original text, add them to the queue
var words = string_split(originalText, " ");
while (!ds_queue_empty(textQueue)) {
    ds_queue_clear(textQueue);
}

// Add words to the queue, breaking into chunks of wordLimit
for (var i = 0; i < array_length_1d(words); i += wordLimit) {
    var chunk = "";
    for (var j = 0; j < wordLimit; j++) {
        var index = i + j;
        if (index >= array_length_1d(words)) break;
        chunk += words[index] + " ";
    }
    ds_queue_enqueue(textQueue, chunk);
}
