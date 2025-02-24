// Complete a Promise with resolve and reject
// A promise has three states: pending, fulfilled, and rejected. 
//   The promise you created in the last challenge is forever stuck in the pending state because you did not add a way to complete the promise. 
//   The resolve and reject parameters given to the promise argument are used to do this. 
//   resolve is used when you want your promise to succeed, and reject is used when you want it to fail. 
//   These are methods that take an argument, as seen below.

// const myPromise = new Promise((resolve, reject) => {
//   if(condition here) {
//     resolve("Promise was fulfilled");
//   } else {
//     reject("Promise was rejected");
//   }
// });
// The example above uses strings for the argument of these functions, but it can really be anything. 
//   Often, it might be an object, that you would use data from, to put on your website or elsewhere.

// Make the promise handle success and failure. If responseFromServer is true, call the resolve method to successfully complete the promise. 
//   Pass resolve a string with the value We got the data. 
//   If responseFromServer is false, use the reject method instead and pass it the string: Data not received.

const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer represents a response from a server
  let responseFromServer;
    
  if(responseFromServer) {
    // Change this line
    resolve("We got the data");
  } else {  
    // Change this line
    reject("Data not received");
  }
});

// Tests
// Passed:1. resolve should be called with the expected string when the if condition is true.
// Passed:2. reject should be called with the expected string when the if condition is false.
