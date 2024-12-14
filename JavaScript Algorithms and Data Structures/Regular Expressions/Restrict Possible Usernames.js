// Restrict Possible Usernames
// Usernames are used everywhere on the internet. They are what give users a unique identity on their favorite sites.

// You need to check all the usernames in a database. Here are some simple rules that users have to follow when creating their username.

// Usernames can only use alphanumeric characters.

// The only numbers in the username have to be at the end. There can be zero or more of them at the end. Username cannot start with the number.

// Username letters can be lowercase and uppercase.

// Usernames have to be at least two characters long. A two-character username can only use alphabet letters as characters.

// Change the regex userCheck to fit the constraints listed above.

let username = "JackOfAllTrades";
let userCheck = /^[a-zA-Z][a-zA-Z]+\d*$|^[a-zA-Z]\d\d$/; // Change this line
let result = userCheck.test(username);


// Regular Expressions
// 67% complete

// Tests
// Passed:1. Your regex should match the string JACK
// Passed:2. Your regex should not match the string J
// Passed:3. Your regex should match the string Jo
// Passed:4. Your regex should match the string Oceans11
// Passed:5. Your regex should match the string RegexGuru
// Passed:6. Your regex should not match the string 007
// Passed:7. Your regex should not match the string 9
// Passed:8. Your regex should not match the string A1
// Passed:9. Your regex should not match the string BadUs3rnam3
// Passed:10. Your regex should match the string Z97
// Passed:11. Your regex should not match the string c57bT3
// Passed:12. Your regex should match the string AB1
// Passed:13. Your regex should not match the string J%4


let username = "JackOfAllTrades";
let userCheck = /^[a-z][a-z]+\d*$|^[a-z]\d\d+$/i;
let result = userCheck.test(username);
console.log(result)
// Code Explanation
// 1) ^ - start of input
// 2) [a-z] - first character is a letter
// 3) [a-z]+ - following characters are letters
// 4) \d*$ - input ends with 0 or more digits
// 5) | - or
// 6) ^[a-z] - first character is a letter
// 7) \d\d+ - following characters are 2 or more digits
// 8) $ - end of input


let username = "JackOfAllTrades";
const userCheck = /^[a-z]([0-9]{2,}|[a-z]+\d*)$/i;
let result = userCheck.test(username);
// Code Explanation
// ^ - start of input
// [a-z] - first character is a letter
// [0-9]{2,} - ends with two or more numbers
// | - or
// [a-z]+ - has one or more letters next
// \d* - and ends with zero or more numbers
// $ - end of input
// i - ignore case of input
