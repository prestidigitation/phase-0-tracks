// Define function that takes a string as an input.
// Initialize an empty string variable, reversed_string.
// Create a loop that iterates a number of times equal to the length of input string.
// The iteration should count downwards, iterating through each character of input string.
//   Concatenate reversed_string and the current character of input string.
// Return reversed_string.

function reverse(string) {
    var reversed_string = "";
    for (i = string.length - 1; i >= 0; i--) {
        reversed_string += string[i];
    }
    return reversed_string;
}

test_string = "buckaw";
reversed_test_string = reverse(test_string);
