// Catch Unclosed Parentheses, Brackets, Braces and Quotes
// Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair.
//  Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types.
//  Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

// One way to avoid this mistake is as soon as the opening character is typed, immediately include the closing match,
//  then move the cursor back between them and continue coding. Fortunately, most modern code editors generate the second half of the pair automatically.

// Fix the two pair errors in the code.

let myArray = [1, 2, 3];
let arraySum = myArray.reduce((previous, current) =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);

// Sum of array values is: 6

// Debugging
// 42% complete

// Tests
// Passed:1. Your code should fix the missing piece of the array.
// Passed:2. Your code should fix the missing piece of the .reduce() method. The console output should show that Sum of array values is: 6.
