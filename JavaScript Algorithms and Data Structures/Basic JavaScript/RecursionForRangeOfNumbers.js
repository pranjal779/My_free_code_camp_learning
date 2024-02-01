function rangeOfNumbers(startNum, endNum) {
  if (startNum > endNum) {
    return [];
  } else {
    let array = rangeOfNumbers(startNum, endNum - 1);
    array.push(endNum);
    return array;
  }
};

/*
Use Recursion to Create a Range of Numbers
Continuing from the previous challenge, we provide you another opportunity to create a recursive function to solve a problem.

We have defined a function named rangeOfNumbers with two parameters. 
The function should return an array of integers which begins with a number represented by the startNum parameter and ends with a number represented by the endNum parameter. 
The starting number will always be less than or equal to the ending number. Your function must use recursion by calling itself and not use loops of any kind. 
It should also work for cases where both startNum and endNum are the same.
*/

/*
Tests
Passed:Your function should return an array.
Passed:Your code should not use any loop syntax (for or while or higher order functions such as forEach, map, filter, or reduce).
Passed:rangeOfNumbers should use recursion (call itself) to solve this challenge.
Passed:rangeOfNumbers(1, 5) should return [1, 2, 3, 4, 5].
Passed:rangeOfNumbers(6, 9) should return [6, 7, 8, 9].
Passed:rangeOfNumbers(4, 4) should return [4].
Passed:Global variables should not be used to cache the array.
*/
