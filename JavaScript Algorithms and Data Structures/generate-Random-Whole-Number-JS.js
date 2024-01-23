function randomWholeNum() {
  // iterate through 0 to 9:
  // for (let i = 0; i <= 9; i++) {
  return Math.floor(Math.random() * 10);
  // }
}

/*
Generate Random Whole Numbers with JavaScript
You can generate random decimal numbers with Math.random(), but sometimes you need to generate random whole numbers. 
The following process will give you a random whole number less than 20:

Use Math.random() to generate a random decimal number.
Multiply that random decimal number by 20.
Use Math.floor() to round this number down to its nearest whole number.
Remember that Math.random() can never quite return a 1, so it's impossible to actually get 20 since you are rounding down with Math.floor(). 
This process will give you a random whole number in the range from 0 to 19.

Putting everything together, this is what your code looks like:

Math.floor(Math.random() * 20);
You are calling Math.random(), multiplying the result by 20, then passing the value to Math.floor() to round the value down to the nearest whole number.

*/
Tests
Passed:The result of randomWholeNum should be a whole number.
Passed:You should use Math.random to generate a random number.
Passed:You should have multiplied the result of Math.random by 10 to make it a number in the range from zero to nine.
Passed:You should use Math.floor to remove the decimal part of the number.
*/
Use this technique to generate and return a random whole number in the range from 0 to 9.
