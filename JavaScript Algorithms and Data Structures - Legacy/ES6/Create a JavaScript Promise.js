// Create a JavaScript Promise
// A promise in JavaScript is exactly what it sounds like - you use it to make a promise to do something, usually asynchronously. 
//   When the task completes, you either fulfill your promise or fail to do so. 
//   Promise is a constructor function, so you need to use the new keyword to create one. 
//   It takes a function, as its argument, with two parameters - resolve and reject. These are methods used to determine the outcome of the promise. 
//   The syntax looks like this:

// const myPromise = new Promise((resolve, reject) => {

// });
// Create a new promise called makeServerRequest. Pass in a function with resolve and reject parameters to the constructor.

const makeServerRequest = new Promise((resolve, reject) => {

});

// Tests
// Passed:1. You should assign a promise to a declared variable named makeServerRequest.
// Passed:2. Your promise should receive a function with resolve and reject as parameters.
