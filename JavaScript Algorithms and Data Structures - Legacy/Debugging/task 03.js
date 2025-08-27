// Use typeof to Check the Type of a Variable
// You can use typeof to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types.
//  If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls.
//  Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

// Here are some examples using typeof:

console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
// In order, the console will display the strings string, number, object, and object.

// JavaScript recognizes seven primitive (immutable) data types: Boolean, Null, Undefined, Number, String, Symbol (new with ES6), and BigInt (new with ES2020),
//  and one type for mutable items: Object. Note that in JavaScript, arrays are technically a type of object.

// Add two console.log() statements to check the typeof each of the two variables seven and three in the code.

let seven = 7;
let three = "3";
console.log(seven + three);
// Only change code below this line
console.log(typeof seven);
console.log(typeof three);

// // running tests
// // tests completed
// // console output
// 73
// number
// string

// Tests
// Passed:1. Your code should use typeof in two console.log() statements to check the type of the variables.
// Passed:2. Your code should use typeof to check the type of the variable seven.
// Passed:3. Your code should use typeof to check the type of the variable three.
