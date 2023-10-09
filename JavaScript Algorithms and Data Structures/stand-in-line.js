function nextInLine(arr, item) {
  // Only change code below this line
  arr.push(item);

  let removedElement = arr.shift();
  
  return removedElement;
  // Only change code above this line
}

// Setup
let testArr = [1, 2, 3, 4, 5];

// Display code
console.log("Before: " + JSON.stringify(testArr));
console.log(nextInLine(testArr, 6));
console.log("After: " + JSON.stringify(testArr));

/*
Stand in Line
In Computer Science a queue is an abstract Data Structure where items are kept in order.
New items can be added at the back of the queue and old items are taken off from the front of the queue.

Write a function nextInLine which takes an array (arr) and a number (item) as arguments.

Add the number to the end of the array, then remove the first element of the array.

The nextInLine function should then return the element that was removed.
*/


/*
let's break down the "Stand in Line" exercise and discuss how to approach it.

The goal of this exercise is to implement a function `nextInLine` that takes an array (`arr`) and a number (`item`) as arguments. 
Here's a step-by-step explanation of how you can approach this problem:

1. **Add the Number to the End**: First, you need to add the given `item` to the end of the array `arr`.
You can use the `push()` method to add an element to the end of an array in JavaScript.

2. **Remove the First Element**: After adding the `item` to the end of the array, you should remove the first element of the array.
To remove the first element, you can use the `shift()` method in JavaScript, which removes and returns the first element of an array.

3. **Return the Removed Element**: Finally, return the element that was removed in the previous step.

Here's how you can implement this in code:

```javascript
function nextInLine(arr, item) {
  // Add the item to the end of the array
  arr.push(item);
  
  // Remove the first element and store it in a variable
  let removedElement = arr.shift();
  
  // Return the removed element
  return removedElement;
}

// Setup
let testArr = [1, 2, 3, 4, 5];

// Display code
console.log("Before: " + JSON.stringify(testArr));
console.log(nextInLine(testArr, 6)); // Adds 6 to the end and removes 1 from the front
console.log("After: " + JSON.stringify(testArr));
```

In this code:

- We use `push(item)` to add `item` to the end of the array.
- We use `shift()` to remove the first element of the array and store it in `removedElement`.
- Finally, we return `removedElement`.

The expected output will be:

```
Before: [1, 2, 3, 4, 5]
1
After: [2, 3, 4, 5, 6]
```

This code simulates a queue-like behavior where elements are added to the back and removed from the front, as described in the problem statement.

Regarding your question about using loops and the concept of a "moving window," this specific problem doesn't require those concepts. 
It's more about understanding and using array methods (`push()` and `shift()`) to manipulate the array in a queue-like manner.

If you encounter more complex problems later in the course that require loops and algorithms, you'll learn how to approach them step by step. 
For now, mastering the basics of array manipulation and understanding how functions work with arrays is a great start.
*/
