// Check For The Presence of an Element With indexOf()
// Since arrays can be changed, or mutated, at any time, there's no guarantee about where a particular piece of data will be on a given array, or if that element even still exists.
//   Luckily, JavaScript provides us with another built-in method, indexOf(), that allows us to quickly and easily check for the presence of an element on an array.
//   indexOf() takes an element as a parameter, and when called, it returns the position, or index, of that element, or -1 if the element does not exist on the array.

// For example:

let fruits = ['apples', 'pears', 'oranges', 'peaches', 'pears'];

fruits.indexOf('dates');
fruits.indexOf('oranges');
fruits.indexOf('pears');
indexOf('dates') returns -1, indexOf('oranges') returns 2, and indexOf('pears') returns 1 (the first index at which each element exists).

// indexOf() can be incredibly useful for quickly checking for the presence of an element on an array. We have defined a function, quickCheck, that takes an array and an element as arguments.
//   Modify the function using indexOf() so that it returns true if the passed element exists on the array, and false if it does not.


function quickCheck(arr, elem) {
  // Only change code below this line
  if (arr.indexOf(elem)>=0) {
    return true;
  }
  return false;

  // Only change code above this line
}

console.log(quickCheck(['squash', 'onions', 'shallots'], 'mushrooms'));

// Tests
// Passed:1. The quickCheck function should return a boolean (true or false), not a string ("true" or "false")
// Passed:2. quickCheck(["squash", "onions", "shallots"], "mushrooms") should return false
// Passed:3. quickCheck(["onions", "squash", "shallots"], "onions") should return true
// Passed:4. quickCheck([3, 5, 9, 125, 45, 2], 125) should return true
// Passed:5. quickCheck([true, false, false], undefined) should return false
// Passed:6. The quickCheck function should utilize the indexOf() method

// // running tests
// // tests completed
// // console output
// false


// Hints

// Solutions
// Solution 1
function quickCheck(arr, elem) {
  if (arr.indexOf(elem) >= 0) {
    return true;
  }
  return false;
}
console.log(quickCheck(["squash", "onions", "shallots"], "mushrooms"));
// Code Explanation
// A simple if-statement can be used to check whether or not the value returned by the indexOf() function is less than 0.
// Once the value is discovered then you can return either true or false.
// demonstrates how a simple if-statement can return the correct result.
// Solution 2 
function quickCheck(arr, elem) {
  return arr.indexOf(elem) >= 0 ? true : false;
}
console.log(quickCheck(["squash", "onions", "shallots"], "mushrooms"));
// Code Explanation
// demonstrates how the problem can be solved using the ? : (conditional) operator.
Solution 3
function quickCheck(arr, elem) {
  return arr.indexOf(elem) != -1;
}
console.log(quickCheck(["squash", "onions", "shallots"], "mushrooms"));
// Code Explanation
// demonstrates how the problem can be solved by directly returning result of the comparison.
