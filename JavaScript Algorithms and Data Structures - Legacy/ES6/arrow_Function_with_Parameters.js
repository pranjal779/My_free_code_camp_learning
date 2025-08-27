// ES6 task 5

code:
const myConcat = (arr1, arr2) => {
  return arr1.concat(arr2); // output: [ 1, 2, 3, 4, 5 ]
};

console.log(myConcat([1, 2], [3, 4, 5])); 

// running tests
// tests completed
// console output
// [ 1, 2, 3, 4, 5 ]

// var myConcat = function(arr1, arr2) {
//   return arr1.concat(arr2);
// };

// console.log(myConcat([1, 2], [3, 4, 5]));


/*
Tests
Passed:You should replace the var keyword.
Passed:myConcat should be a constant variable (by using const).
Passed:myConcat should be an arrow function with two parameters
Passed:myConcat() should return [1, 2, 3, 4, 5].
Passed:The function keyword should not be used.
*/

/*
Bring that rain!
ES6
17% complete
*/

/*
Write Arrow Functions with Parameters
Just like a regular function, you can pass arguments into an arrow function.

const doubler = (item) => item * 2;
doubler(4);
doubler(4) would return the value 8.

If an arrow function has a single parameter, the parentheses enclosing the parameter may be omitted.

const doubler = item => item * 2;
It is possible to pass more than one argument into an arrow function.

const multiplier = (item, multi) => item * multi;
multiplier(4, 2);
multiplier(4, 2) would return the value 8.

Rewrite the myConcat function which appends contents of arr2 to arr1 so that the function uses arrow function syntax.
*/
