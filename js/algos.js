// PSUEDOCODE for Release #0
//
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


// PSEUDOCODE for Release #1
//
// Define function that takes two objects as inputs
// Initialize shared_key_value variable set to false
// Loop through each key/value pair in first object
//     Compare current key/value pair to every other key/value pair in second object
//         If first key/value equals second key/value, update shared_key_value to true
// Return shared_key_value

