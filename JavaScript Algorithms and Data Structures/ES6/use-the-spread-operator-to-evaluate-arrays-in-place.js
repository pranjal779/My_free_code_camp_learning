const arr1 = ['JAN', 'FEB', 'MAR', 'APR', 'MAY'];
let arr2;

arr2 = [...arr1];  // Change this line

console.log(arr2);

/*
Use the Spread Operator to Evaluate Arrays In-Place
ES6 introduces the spread operator, which allows us to expand arrays and other expressions in places where multiple parameters or elements are expected.

The ES5 code below uses apply() to compute the maximum value in an array:

var arr = [6, 89, 3, 45];
var maximus = Math.max.apply(null, arr);
maximus would have a value of 89.

We had to use Math.max.apply(null, arr) because Math.max(arr) returns NaN. Math.max() expects comma-separated arguments, but not an array. The spread operator makes this syntax much better to read and maintain.

const arr = [6, 89, 3, 45];
const maximus = Math.max(...arr);
maximus would have a value of 89.

...arr returns an unpacked array. In other words, it spreads the array. However, the spread operator only works in-place, like in an argument to a function or in an array literal. For example:

const spreaded = [...arr];
However, the following code will not work:

const spreaded = ...arr;
Copy all contents of arr1 into another array arr2 using the spread operator.


Tests
Passed:arr2 should be correct copy of arr1.
Passed:... spread operator should be used to duplicate arr1.
Passed:arr2 should remain unchanged when arr1 is changed.
*/

/*
// running tests
// tests completed
// console output
[ 'JAN', 'FEB', 'MAR', 'APR', 'MAY' ]
*/

/*
You make this look easy!
ES6
28% complete
*/
