// Use an Array to Store a Collection of Data
// The below is an example of the simplest implementation of an array data structure. This is known as a one-dimensional array, meaning it only has one level,
//   or that it does not have any other arrays nested within it.
//   Notice it contains booleans, strings, and numbers, among other valid JavaScript data types:

let simpleArray = ['one', 2, 'three', true, false, undefined, null];
console.log(simpleArray.length);
// The console.log call displays 7.

// All arrays have a length property, which as shown above, can be very easily accessed with the syntax Array.length.
//   A more complex implementation of an array can be seen below. This is known as a multi-dimensional array, or an array that contains other arrays.
//   Notice that this array also contains JavaScript objects, which we will examine very closely in our next section, but for now, all you need to know is that arrays are also capable of storing complex objects.

let complexArray = [
  [
    {
      one: 1,
      two: 2
    },
    {
      three: 3,
      four: 4
    }
  ],
  [
    {
      a: "a",
      b: "b"
    },
    {
      c: "c",
      d: "d"
    }
  ]
];
// We have defined a variable called yourArray.
//   Complete the statement by assigning an array of at least 5 elements in length to the yourArray variable. Your array should contain at least one string, one number, and one boolean.

let yourArray = [1, 'one', true, null, 'Sam']; // Change this line

// Tests
// Passed:1. yourArray should be an array.
// Passed:2. yourArray should be at least 5 elements long.
// Passed:3. yourArray should contain at least one boolean.
// Passed:4. yourArray should contain at least one number.
// Passed:5. yourArray should contain at least one string.

// Basic Data Structures
// 5% complete
