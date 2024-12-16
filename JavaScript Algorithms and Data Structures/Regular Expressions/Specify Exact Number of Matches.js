// Specify Exact Number of Matches
// You can specify the lower and upper number of patterns with quantity specifiers using curly brackets. Sometimes you only want a specific number of matches.

// To specify a certain number of patterns, just have that one number between the curly brackets.

// For example, to match only the word hah with the letter a 3 times, your regex would be /ha{3}h/.

let A4 = "haaaah";
let A3 = "haaah";
let A100 = "h" + "a".repeat(100) + "h";
let multipleHA = /ha{3}h/;
multipleHA.test(A4);
multipleHA.test(A3);
multipleHA.test(A100);
// In order, the three test calls would return false, true, and false.

// Change the regex timRegex to match the word Timber only when it has four letter m's.

let timStr = "Timmmmber";
let timRegex = /Tim{4}ber/g; // Change this line
let result = timRegex.test(timStr);

// Tests
// Passed:1. Your regex should use curly brackets.
// Passed:2. Your regex should not match the string Timber
// Passed:3. Your regex should not match the string Timmber
// Passed:4. Your regex should not match the string Timmmber
// Passed:5. Your regex should match the string Timmmmber
// Passed:6. Your regex should not match the string Timber with 30 m's in it.

// Regular Expressions
// 82% complete
