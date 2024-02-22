const createPerson = (name, age, gender) => {
  // Only change code below this line
  return {
    name,
    age,
    gender
  };
  // Only change code above this line
};

/*
Write Concise Object Literal Declarations Using Object Property Shorthand
ES6 adds some nice support for easily defining object literals.

Consider the following code:

const getMousePosition = (x, y) => ({
  x: x,
  y: y
});
getMousePosition is a simple function that returns an object containing two properties. 
ES6 provides the syntactic sugar to eliminate the redundancy of having to write x: x. 
You can simply write x once, and it will be converted tox: x (or something equivalent) under the hood. 
Here is the same function from above rewritten to use this new syntax:

const getMousePosition = (x, y) => ({ x, y });
Use object property shorthand with object literals to create and return an object with name, age and gender properties.

Tests
Passed:createPerson("Zodiac Hasbro", 56, "male") should return {name: "Zodiac Hasbro", age: 56, gender: "male"}.
Passed:Your code should not use key:value.
*/
