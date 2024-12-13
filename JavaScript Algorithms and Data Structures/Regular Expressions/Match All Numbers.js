// Match All Numbers
// You've learned shortcuts for common string patterns like alphanumerics. Another common pattern is looking for just digits or numbers.

// The shortcut to look for digit characters is \d, with a lowercase d. This is equal to the character class [0-9], which looks for a single character of any number between zero and nine.

// Use the shorthand character class \d to count how many digits are in movie titles. Written out numbers ("six" instead of 6) do not count.

let movieName = "2001: A Space Odyssey";
let numRegex = /\d/g; // Change this line
let result = movieName.match(numRegex).length;

// Regular Expressions
// 61% complete

// Tests
// Passed:1. Your regex should use the shortcut character to match digit characters
// Passed:2. Your regex should use the global flag.
// Passed:3. Your regex should find 1 digit in the string 9.
// Passed:4. Your regex should find 2 digits in the string Catch 22.
// Passed:5. Your regex should find 3 digits in the string 101 Dalmatians.
// Passed:6. Your regex should find no digits in the string One, Two, Three.
// Passed:7. Your regex should find 2 digits in the string 21 Jump Street.
// Passed:8. Your regex should find 4 digits in the string 2001: A Space Odyssey.
