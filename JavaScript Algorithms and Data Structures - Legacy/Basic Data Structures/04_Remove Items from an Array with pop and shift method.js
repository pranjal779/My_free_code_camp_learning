// Remove Items from an Array with pop() and shift()
// Both push() and unshift() have corresponding methods that are nearly functional opposites: pop() and shift().
//   As you may have guessed by now, instead of adding, pop() removes an element from the end of an array, while shift() removes an element from the beginning.
//   The key difference between pop() and shift() and their cousins push() and unshift(), is that neither method takes parameters, and each only allows an array to be modified by a single element at a time.

// Let's take a look:

let greetings = ['whats up?', 'hello', 'see ya!'];

greetings.pop();
// greetings would have the value ['whats up?', 'hello'].

greetings.shift();
// greetings would have the value ['hello'].

// We can also return the value of the removed element with either method like this:

let popped = greetings.pop();
// greetings would have the value [], and popped would have the value hello.

// We have defined a function, popShift, which takes an array as an argument and returns a new array. Modify the function, using pop() and shift(),
//   to remove the first and last elements of the argument array, and assign the removed elements to their corresponding variables, so that the returned array contains their values.

Tests
Passed:1. popShift(["challenge", "is", "not", "complete"]) should return ["challenge", "complete"]
Passed:2. The popShift function should utilize the pop() method
Passed:3. The popShift function should utilize the shift() method


function popShift(arr) {
  let popped = arr.pop(); // Change this line
  let shifted = arr.shift(); // Change this line
  return [shifted, popped];
}

console.log(popShift(['challenge', 'is', 'not', 'complete']));
// // running tests
// // tests completed
// // console output
// [ 'challenge', 'complete' ]

// Basic Data Structures
// 20% complete
