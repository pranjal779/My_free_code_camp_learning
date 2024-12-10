// Match Beginning String Patterns
// Prior challenges showed that regular expressions can be used to look for a number of matches.
//  They are also used to search for patterns in specific positions in strings.

// In an earlier challenge, you used the caret character (^) inside a character set to create a negated character set in the form [^thingsThatWillNotBeMatched].
//  Outside of a character set, the caret is used to search for patterns at the beginning of strings.

// let firstString = "Ricky is first and can be found.";
// let firstRegex = /^Ricky/;
// firstRegex.test(firstString);
// let notFirst = "You can't find Ricky now.";
// firstRegex.test(notFirst);
// The first test call would return true, while the second would return false.

// Use the caret character in a regex to find Cal only in the beginning of the string rickyAndCal.

let rickyAndCal = "Cal and Ricky both like racing.";
let calRegex = /^Cal/; // Change this line
let result = calRegex.test(rickyAndCal);

// Regular Expressions
// 48% complete

// Tests
// Passed:1. Your regex should search for the string Cal with a capital letter.
// Passed:2. Your regex should not use any flags.
// Passed:3. Your regex should match the string Cal at the beginning of the string.
// Passed:4. Your regex should not match the string Cal in the middle of a string.
