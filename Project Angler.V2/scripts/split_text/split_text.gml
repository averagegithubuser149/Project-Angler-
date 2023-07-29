// split_text(text, maxChars)
var result = "";
var currentChars = 0;
var wordArray = string_split(argument0, " ");

for (var i = 0; i < array_length_1d(wordArray); i++) {
    var word = wordArray[i];
    var wordLength = string_length(word) + 1; // Add 1 for the space after the word

    if (currentChars + wordLength <= argument1) {
        result += word + " ";
        currentChars += wordLength;
    } else {
        break;
    }
}

return result;
