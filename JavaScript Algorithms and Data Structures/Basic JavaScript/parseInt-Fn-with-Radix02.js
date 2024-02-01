function convertToInteger(str) {
  const result = parseInt(str, 2);

  // This line will never be executed because of the return statement
  console.log(result);

  // This line returns the result and terminates the function
  return result;
}

// This line calls the function and assigns the result to a variable, but the console.log is not reached
const convertedValue = convertToInteger("10011");

// This line will log the result outside the function
console.log(convertedValue);
