// ES6 task 1
// code:
function checkScope() {
  let i = 'function scope'; // testing the let scope against using var keyword
  if (true) {
   let i = 'block scope'; // used let here
    console.log('Block scope i is: ', i);
  }
  console.log('Function scope i is: ', i);
  return i;
}

/*
Tests
Passed:var should not exist in code.
Passed:The variable i declared in the if statement should equal the string block scope.
Passed:checkScope() should return the string function scope
*/

/*

// running tests
// tests completed
// console output
Block scope i is:  block scope
Function scope i is:  function scope

*/

/*
Compare Scopes of the var and let Keywords
If you are unfamiliar with let, check out this challenge about the difference between let and var.

When you declare a variable with the var keyword, it is declared globally, or locally if declared inside a function.

The let keyword behaves similarly, but with some extra features. 
When you declare a variable with the let keyword inside a block, statement, or expression, its scope is limited to that block, statement, or expression.

For example:

var numArray = [];
for (var i = 0; i < 3; i++) {
  numArray.push(i);
}
console.log(numArray);
console.log(i);
Here the console will display the values [0, 1, 2] and 3.

With the var keyword, i is declared globally. So when i++ is executed, it updates the global variable. This code is similar to the following:

var numArray = [];
var i;
for (i = 0; i < 3; i++) {
  numArray.push(i);
}
console.log(numArray);
console.log(i);
Here the console will display the values [0, 1, 2] and 3.

This behavior will cause problems if you were to create a function and store it for later use inside a for loop that uses the i variable. 
This is because the stored function will always refer to the value of the updated global i variable.

var printNumTwo;
for (var i = 0; i < 3; i++) {
  if (i === 2) {
    printNumTwo = function() {
      return i;
    };
  }
}
console.log(printNumTwo());
Here the console will display the value 3.

As you can see, printNumTwo() prints 3 and not 2. 
This is because the value assigned to i was updated and the printNumTwo() returns the global i and not the value i had when the function was created in the for loop. 
The let keyword does not follow this behavior:

let printNumTwo;
for (let i = 0; i < 3; i++) {
  if (i === 2) {
    printNumTwo = function() {
      return i;
    };
  }
}
console.log(printNumTwo());
console.log(i);
Here the console will display the value 2, and an error that i is not defined.

i is not defined because it was not declared in the global scope. It is only declared within the for loop statement. 
printNumTwo() returned the correct value because three different i variables with unique values (0, 1, and 2) were created by the let keyword within the loop statement.

Fix the code so that i declared in the if statement is a separate variable than i declared in the first line of the function. 
Be certain not to use the var keyword anywhere in your code.

This exercise is designed to illustrate the difference between how var and let keywords assign scope to the declared variable. 
When programming a function similar to the one used in this exercise, it is often better to use different variable names to avoid confusion.
*/


/*
Explore Differences Between the var and let Keywords
One of the biggest problems with declaring variables with the var keyword is that you can easily overwrite variable declarations:

var camper = "James";
var camper = "David";
console.log(camper);
In the code above, the camper variable is originally declared as James, and is then overridden to be David. The console then displays the string David.

In a small application, you might not run into this type of problem. 
But as your codebase becomes larger, you might accidentally overwrite a variable that you did not intend to. 
Because this behavior does not throw an error, searching for and fixing bugs becomes more difficult.

A keyword called let was introduced in ES6, a major update to JavaScript, to solve this potential issue with the var keyword. 
You'll learn about other ES6 features in later challenges.

If you replace var with let in the code above, it results in an error:

let camper = "James";
let camper = "David";
The error can be seen in your browser console.

So unlike var, when you use let, a variable with the same name can only be declared once.
*/
