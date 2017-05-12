// Define function that takes an array as input
// Initialize longest_phrase variable to store longest item from input array
// Loop through each item in input array
//   Compare current item to longest_phrase and update it if current item length is longer
// Return longest_phrase variable

function longestPhrase(arrayOfStrings) {
    longest_phrase = "";
    for (i = 0; i < arrayOfStrings.length; i++) {
        if (arrayOfStrings[i].length > longest_phrase.length) {
            longest_phrase = arrayOfStrings[i];
        }
    }
    return longest_phrase;
}

testArrayOne = ["hello", "my", "baby", "crocodile", "mother"];
console.log(longestPhrase(testArrayOne));

testArrayTwo = ["onesies", "are", "in", "fashion"];
console.log(longestPhrase(testArrayTwo));
