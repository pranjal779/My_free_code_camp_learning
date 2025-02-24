// Use Caution When Reinitializing Variables Inside a Loop
// Sometimes it's necessary to save information, increment counters, or re-set variables within a loop.
//  A potential issue is when variables either should be reinitialized, and aren't, or vice versa.
//  This is particularly dangerous if you accidentally reset the variable being used for the terminal condition, causing an infinite loop.

// Printing variable values with each cycle of your loop by using console.log() can uncover buggy behavior related to resetting, or failing to reset a variable.

// The following function is supposed to create a two-dimensional array with m rows and n columns of zeroes.
//  Unfortunately, it's not producing the expected output because the row variable isn't being reinitialized (set back to an empty array) in the outer loop.
//  Fix the code so it returns a correct 3x2 array of zeroes, which looks like [[0, 0], [0, 0], [0, 0]].


function zeroArray(m, n) {
  // Creates a 2-D array with m rows and n columns of zeroes
  let newArray = [];
  for (let i = 0; i < m; i++) {
    let row = [];
    // Adds the m-th row into newArray

    for (let j = 0; j < n; j++) {
      // Pushes n zeroes into the current row to create the columns
      row.push(0);
      // console.log("row: ", row)
    }
    // Pushes the current row, which now has n zeroes in it, to the array
    newArray.push(row);
    console.log(`New Array after adding row:`, newArray);
  }
  return newArray;
}

let matrix = zeroArray(3, 2);
console.log(matrix);

// Tests
// Passed:1. Your code should set the matrix variable to an array holding 3 rows of 2 columns of zeroes each.
// Passed:2. The matrix variable should have 3 rows.
// Passed:3. The matrix variable should have 2 columns in each row.
// Passed:4. zeroArray(4,3) should return an array holding 4 rows of 3 columns of zeroes each.

// // running tests
// // tests completed
// // console output
// New Array after adding row: [ [ 0, 0 ] ]
// New Array after adding row: [ [ 0, 0 ], [ 0, 0 ] ]
// New Array after adding row: [ [ 0, 0 ], [ 0, 0 ], [ 0, 0 ] ]
// [ [ 0, 0 ], [ 0, 0 ], [ 0, 0 ] ]
// New Array after adding row: [ [ 0, 0, 0 ] ]
// New Array after adding row: [ [ 0, 0, 0 ], [ 0, 0, 0 ] ]
// New Array after adding row: [ [ 0, 0, 0 ], [ 0, 0, 0 ], [ 0, 0, 0 ] ]
// New Array after adding row: [ [ 0, 0, 0 ], [ 0, 0, 0 ], [ 0, 0, 0 ], [ 0, 0, 0 ] ]
