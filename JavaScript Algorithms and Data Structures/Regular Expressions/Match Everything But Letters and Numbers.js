// Match Everything But Letters and Numbers
// You've learned that you can use a shortcut to match alphanumerics [A-Za-z0-9_] using \w. A natural pattern you might want to search for is the opposite of alphanumerics.

// You can search for the opposite of the \w with \W. Note, the opposite pattern uses a capital letter. This shortcut is the same as [^A-Za-z0-9_].

// let shortHand = /\W/;
// let numbers = "42%";
// let sentence = "Coding!";
// numbers.match(shortHand);
// sentence.match(shortHand);
// The first match call would return the value ["%"] and the second would return ["!"].

// Use the shorthand character class \W to count the number of non-alphanumeric characters in various quotes and strings.

let quoteSample = "The five boxing wizards jump quickly.";
let nonAlphabetRegex = /\W/gi; // Change this line
let result = quoteSample.match(nonAlphabetRegex).length;


// Regular Expressions
// 58% complete

// Tests
// Passed:1. Your regex should use the global flag.
// Passed:2. Your regex should find 6 non-alphanumeric characters in the string The five boxing wizards jump quickly..
// Passed:3. Your regex should use the shorthand character to match characters which are non-alphanumeric.
// Passed:4. Your regex should find 8 non-alphanumeric characters in the string Pack my box with five dozen liquor jugs.
// Passed:5. Your regex should find 6 non-alphanumeric characters in the string How vexingly quick daft zebras jump!
// Passed:6. Your regex should find 12 non-alphanumeric characters in the string 123 456 7890 ABC def GHI jkl MNO pqr STU vwx YZ.
