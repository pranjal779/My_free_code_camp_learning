// Ignore Case While Matching
// Up until now, you've looked at regexes to do literal matches of strings. But sometimes, you might want to also match case differences.

// Case (or sometimes letter case) is the difference between uppercase letters and lowercase letters. 
//   Examples of uppercase are A, B, and C. Examples of lowercase are a, b, and c.

// You can match both cases using what is called a flag. 
//   There are other flags but here you'll focus on the flag that ignores case - the i flag. 
//   You can use it by appending it to the regex. An example of using this flag is /ignorecase/i. 
//   This regex can match the strings ignorecase, igNoreCase, and IgnoreCase.

// Write a regex fccRegex to match freeCodeCamp, no matter its case. 
//   Your regex should not match any abbreviations or variations with spaces.

let myString = "freeCodeCamp";
let fccRegex = /freecodecamp/i; // Change this line
let result = fccRegex.test(myString);

// Tests
// Passed:1. Your regex should match the string freeCodeCamp
// Passed:2. Your regex should match the string FreeCodeCamp
// Passed:3. Your regex should match the string FreecodeCamp
// Passed:4. Your regex should match the string FreeCodecamp
// Passed:5. Your regex should not match the string Free Code Camp
// Passed:6. Your regex should match the string FreeCOdeCamp
// Passed:7. Your regex should not match the string FCC
// Passed:8. Your regex should match the string FrEeCoDeCamp
// Passed:9. Your regex should match the string FrEeCodECamp
// Passed:10. Your regex should match the string FReeCodeCAmp

// running tests
// tests completed
