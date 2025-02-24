// Check for All or None
// Sometimes the patterns you want to search for may have parts of it that may or may not exist.
//  However, it may be important to check for them nonetheless.

// You can specify the possible existence of an element with a question mark, ?. This checks for zero or one of the preceding element.
//  You can think of this symbol as saying the previous element is optional.

// For example, there are slight differences in American and British English and you can use the question mark to match both spellings.

let american = "color";
let british = "colour";
let rainbowRegex= /colou?r/;
rainbowRegex.test(american);
rainbowRegex.test(british);
// Both uses of the test method would return true.

// Change the regex favRegex to match both the American English (favorite) and the British English (favourite) version of the word.

let favWord = "favorite";
let favRegex = /favou?rite/; // Change this line
let result = favRegex.test(favWord);

// Regular Expressions
// 85% complete

// Tests
// Passed:1. Your regex should use the optional symbol, ?.
// Passed:2. Your regex should match the string favorite
// Passed:3. Your regex should match the string favourite
// Passed:4. Your regex should not match the string fav
