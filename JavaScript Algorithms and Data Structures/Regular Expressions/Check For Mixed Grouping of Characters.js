// Check For Mixed Grouping of Characters
// Sometimes we want to check for groups of characters using a Regular Expression and to achieve that we use parentheses ().

// If you want to find either Penguin or Pumpkin in a string, you can use the following Regular Expression: /P(engu|umpk)in/g

// Then check whether the desired string groups are in the test string by using the test() method.

let testStr = "Pumpkin";
let testRegex = /P(engu|umpk)in/;
testRegex.test(testStr);
// The test method here would return true.

// Fix the regex so that it checks for the names of Franklin Roosevelt or Eleanor Roosevelt in a case sensitive manner and it should make concessions for middle names.

// Then fix the code so that the regex that you have created is checked against myString and either true or false is returned depending on whether the regex matches.

let myString = "Eleanor Roosevelt";
let myString02 = "Franklin E. Rosevelt";
let myRegex = /(Franklin [a-z].|Eleanor) Roosevelt/gi; // Change this line
let result = myRegex.test(myString); // Change this line
// After passing the challenge experiment with myString and see how the grouping works
let result02 = myRegex.test(myString02);
console.log(`result: ${result}`);
console.log(`result02: ${result02}`);

// // running tests
// // tests completed
// // console output
// result: true
// result02: false

// Tests
// Passed:1. Your regex myRegex should return true for the string Franklin D. Roosevelt
// Passed:2. Your regex myRegex should return true for the string Eleanor Roosevelt
// Passed:3. Your regex myRegex should return false for the string Franklin Rosevelt
// Passed:4. Your regex myRegex should return false for the string Frank Roosevelt
// Passed:5. Your regex myRegex should return false for the string FranklinRoosevelt
// Passed:6. Your regex myRegex should return false for the string EleanorRoosevelt
// Passed:7. You should use .test() to test the regex.
// Passed:8. Your result should return true.

// Regular Expressions
// 91% complete
