// Access Multi-Dimensional Arrays With Indexes

// example

const arr = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [[10, 11, 12], 13, 14]
];

const subarray = arr[3];
const nestedSubarray = arr[3][0];
const element = arr[3][0][1];

// output for the example
console.log(subarray);
console.log(nestedSubarray);
console.log(element);

// exercise

const myArray = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [[10, 11, 12], 13, 14],
];


// Task:
// Using bracket notation select an element from myArray such that myData is equal to 8.

const myData = myArray[2][1];

// output for the task - myData
console.log(myData);
