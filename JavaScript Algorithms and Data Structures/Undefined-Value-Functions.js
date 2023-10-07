// Setup
let sum = 0;

function addThree() {
  sum = sum + 3;
}

// Only change code below this line
function addFive() {
  sum = sum + 5;
}

// Only change code above this line
/*
addThree();
addFive();
*/

console.log(addThree());
console.log(addFive());

console.log(sum);

/*
Understanding Undefined Value returned from a Function
A function can include the return statement but it does not have to. In the case that the function doesn't have a return statement, when you call it, the function processes the inner code but the returned value is undefined.

Example

let sum = 0;

function addSum(num) {
  sum = sum + num;
}

addSum(3);
addSum is a function without a return statement. The function will change the global sum variable but the returned value of the function is undefined.

Create a function addFive without any arguments. This function adds 5 to the sum variable, but its returned value is undefined.

*/

/*
concept explaination

The code you've provided is part of a lesson on understanding how functions work in JavaScript. Specifically, it's teaching you about functions that do not have a `return` statement. 
Functions without a `return` statement are referred to as "void" functions because they don't return a value.
In JavaScript, when a function doesn't explicitly return a value, it returns `undefined` by default.

Your code aims to define two functions, `addThree` and `addFive`, and use them to modify the `sum` variable. Here's your code:

```javascript
// Setup
let sum = 0;

function addThree() {
  sum = sum + 3;
}

// Only change code below this line
function addFive() {
  sum = sum + 5;
}

// Only change code above this line

addThree();
addFive();

console.log(addThree());
console.log(addFive());
```

Here are some points to consider:

1. **Function Naming**: The names `addThree` and `addFive` are descriptive, which is good. They make it clear what each function is supposed to do.

2. **Use of `console.log()`**: You've used `console.log()` to print the return values of `addThree()` and `addFive()`.
However, since these functions do not explicitly return anything, both `console.log()` statements will print `undefined`.
This is because JavaScript functions return `undefined` by default if there's no `return` statement.

3. **Redundant Function Calls**: You've called `addThree()` and `addFive()` before the `console.log()` statements and then called them again within the `console.log()`.
This results in the functions being called twice, which may not be what you intended. To fix this, remove the extra function calls.

Here's the improved code:

```javascript
// Setup
let sum = 0;

function addThree() {
  sum = sum + 3;
}

// Only change code below this line
function addFive() {
  sum = sum + 5;
}

// Only change code above this line

addThree(); // This adds 3 to 'sum'
addFive(); // This adds 5 to 'sum'

console.log(sum); // Output the updated value of 'sum'
```

In this revised code, I've removed the redundant function calls and used `console.log(sum)` to display the updated value of `sum`. This way, it's clear that you're modifying the `sum` variable within the functions.
*/
