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
// Initialize shared_key_value_found variable set to false
// Loop through each key/value pair in first object
//     Compare current key/value pair to every other key/value pair in second object
//         If first key/value equals second key/value, update shared_key_value to true
// Return shared_key_value_found

function sharedKeyValue(object_one, object_two) {
    shared_key_value_found = false;
    for (var key_one in object_one) {
        for (var key_two in object_two) {
            if (key_one === key_two && object_one[key_one] === object_two[key_two]) {
                shared_key_value_found = true;
                break;
            }
        }
    }
    return shared_key_value_found;
}

console.log(sharedKeyValue({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(sharedKeyValue({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
console.log(sharedKeyValue({num_one: 12, num_two: 13, num_three: 14}, {num_four: 15, num_five: 16, num_two: 17, num_one: 18}));
console.log(sharedKeyValue({car_make: "Honda", model: "Civic", year: 1991}, {car_make: "Honda", model: "Accord"}));


// PSEUDOCODE for Release #2
//
// Define function that takes an integer as input
// Initialize alphabet variable set to string of alphabet letters
// Initialize generated_strings_array set to empty array
// Loop a number of times equal to input integer
//     Initialize random_letters string variable
//     Initialize counter set to zero
//     WHILE counter is less than a random number between 1 and 10
//         Concatenate random_letters string and random letter from alphabet
//         Increment counter by 1
//     Add random_letters variable to generated_strings array
// Return generated_strings array

function randomStringsGenerator(int) {
    generated_strings_array = [];
    counter = 0
    while (counter < int) {
        generated_strings_array.push(randomLettersGenerator());
        counter += 1;
    }
    return generated_strings_array;
}

function randomLettersGenerator() {
    alphabet = "abcdefghijklmnopqrstuvwxyz";
    random_letters = "";
    for (i = 0; i < randomInt(1, 10); i++) {
        random_letters += alphabet[randomInt(0, 25)];
    }
    return random_letters;
}

function randomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

console.log(randomLettersGenerator());
console.log(randomStringsGenerator(3));
console.log(randomStringsGenerator(10));
