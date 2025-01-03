// Iterate Through All an Array's Items Using For Loops
// Sometimes when working with arrays, it is very handy to be able to iterate through each item to find one or more elements that we might need,
//  or to manipulate an array based on which data items meet a certain set of criteria.
//  JavaScript offers several built in methods that each iterate over arrays in slightly different ways to achieve different results
//  (such as every(), forEach(), map(), etc.), however the technique which is most flexible and offers us the greatest amount of control is a simple for loop.

// Consider the following:

function greaterThanTen(arr) {
  let newArr = [];
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] > 10) {
      newArr.push(arr[i]);
    }
  }
  return newArr;
}

greaterThanTen([2, 12, 8, 14, 80, 0, 1]);
// Using a for loop, this function iterates through and accesses each element of the array, and subjects it to a simple test that we have created.
//  In this way, we have easily and programmatically determined which data items are greater than 10, and returned a new array, [12, 14, 80], containing those items.

// We have defined a function, filteredArray, which takes arr, a nested array, and elem as arguments, and returns a new array.
//  elem represents an element that may or may not be present on one or more of the arrays nested within arr. Modify the function, using a for loop,
//  to return a filtered version of the passed array such that any array nested within arr containing elem has been removed.


function filteredArray(arr, elem) {
  let newArr = [];
  // Only change code below this line
  for (let i = 0; i < arr.length; i++) {
    if (arr[i].indexOf(elem) == -1) {
      newArr.push(arr[i])
    }
  }
  // Only change code above this line
  return newArr;
}

console.log(filteredArray([[3, 2, 3], [1, 6, 3], [3, 13, 26], [19, 3, 9]], 3));

// // running tests
// // tests completed
// // console output
// []

// Tests
// Passed:1. filteredArray([[10, 8, 3], [14, 6, 23], [3, 18, 6]], 18) should return [[10, 8, 3], [14, 6, 23]]
// Passed:2. filteredArray([["trumpets", 2], ["flutes", 4], ["saxophones", 2]], 2) should return [["flutes", 4]]
// Passed:3. filteredArray([["amy", "beth", "sam"], ["dave", "sean", "peter"]], "peter") should return [["amy", "beth", "sam"]]
// Passed:4. filteredArray([[3, 2, 3], [1, 6, 3], [3, 13, 26], [19, 3, 9]], 3) should return []
// Passed:5. The filteredArray function should utilize a for loop



// Hints
// Hint 1
// A for loop must be used to search through every element in the array.
for (let i = 0; i < arr.length; i++) {}
// Hint 2
// Every element of the array must then be compared to the elem parameter passed through the filteredArray() function.
if (arr[i].indexOf(elem) == -1) {
// }
// Hint 3
// If a match is NOT found then newArr have that entire subarray added. The push() function is very useful here.
newArr.push(arr[i]);
// Once that entire subarray is added to newArr the loop continue with the next element.
// Solutions
function filteredArray(arr, elem) {
  let newArr = [];
  // change code below this line

  for (let i = 0; i < arr.length; i++) {
    if (arr[i].indexOf(elem) == -1) {
      //Checks every parameter for the element and if is NOT there continues the code
      newArr.push(arr[i]); //Inserts the element of the array in the new filtered array
    }
  }

  // change code above this line
  return newArr;
}
// change code here to test different cases:
console.log(filteredArray([[3, 2, 3], [1, 6, 3], [3, 13, 26], [19, 3, 9]], 3));
