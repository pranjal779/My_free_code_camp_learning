// Handle a Fulfilled Promise with then
// Promises are most useful when you have a process that takes an unknown amount of time in your code (i.e. something asynchronous), often a server request. 
// When you make a server request it takes some amount of time, and after it completes you usually want to do something with the response from the server. 
// This can be achieved by using the then method.

// Promise.prototype.then(onFulfilled, onRejected)
// The then method schedules callback functions for the eventual completion of a Promise - either fulfillment or rejection. 
// One of the onFulfilled and onRejected handlers will be executed to handle the current promise's fulfillment or rejection. 
// When the promise is fulfilled with resolve the onFulfilled handler is called.

// myPromise.then(result => {
  
// });
// result comes from the argument given to the resolve method.

// Add the then method to your promise. Use result as the parameter of its callback function and log result to the console.

const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer is set to true to represent a successful response from a server
  let responseFromServer = true;
    
  if(responseFromServer) {
    resolve("We got the data");
  } else {  
    reject("Data not received");
  }

  // Add the .then() method
  makeServerRequest.then((result) => {
    console.log(result); // Log the resolved value to the console.
  })
});

// Tests
// Passed:1. You should call the then method on the promise.
// Passed:2. Your then method should have a callback function with result as its parameter.
// Passed:3. You should log result to the console.

