// Match Anything with Wildcard Period
// Sometimes you won't (or don't need to) know the exact characters in your patterns. 
// Thinking of all words that match, say, a misspelling would take a long time. 
// Luckily, you can save time using the wildcard character: .

// The wildcard character . will match any one character. The wildcard is also called dot and period.
 // You can use the wildcard character just like any other character in the regex.
 // For example, if you wanted to match hug, huh, hut, and hum, you can use the regex /hu./ to match all four words.

// let humStr = "I'll hum a song";
// let hugStr = "Bear hug";
// let huRegex = /hu./;
// huRegex.test(humStr);
// huRegex.test(hugStr);
// Both of these test calls would return true.

// Complete the regex unRegex so that it matches the strings run, sun, fun, pun, nun, and bun. Your regex should use the wildcard character.

let exampleStr = "Let's have fun with regular expressions!";
let unRegex = /un./; // Change this line
let result = unRegex.test(exampleStr);

// Regular Expressions
// 21% complete

// Tests
// Passed:1. You should use the .test() method.
// Passed:2. You should use the wildcard character in your regex unRegex
// Passed:3. Your regex unRegex should match run in the string Let us go on a run.
// Passed:4. Your regex unRegex should match sun in the string The sun is out today.
// Passed:5. Your regex unRegex should match fun in the string Coding is a lot of fun.
// Passed:6. Your regex unRegex should match pun in the string Seven days without a pun makes one weak.
// Passed:7. Your regex unRegex should match nun in the string One takes a vow to be a nun.
// Passed:8. Your regex unRegex should match bun in the string She got fired from the hot dog stand for putting her hair in a bun.
// Passed:9. Your regex unRegex should not match the string There is a bug in my code.
// Passed:10. Your regex unRegex should not match the string Catch me if you can.
