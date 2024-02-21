const result = {
  success: ["max-length", "no-amd", "prefer-arrow-functions"],
  failure: ["no-var", "var-on-top", "linebreak"],
  skipped: ["no-extra-semi", "no-dup-keys"]
};
function makeList(arr) {
  // Only change code below this line
  console.log(result.failure)

  const failureItems = [];
  // Using for...in to iterate over object properties (not recommended for arrays)
  for  (const item in result.failure) {
  // Note: 'index' here will be the index of the array, not the value
    const listItem = `<li class="text-warning">${item}</li>`;

    failureItems.push(listItem);
  }

  // Using for...of to iterate over values of the array
  for (const item of result.failure) {
    // 'item' here represents the actual value of the array element
    const listItem = `<li class="text-warning">${item}</li>`;

    failureItems.push(listItem);
  }
  // Only change code above this line

  return failureItems;
}

const failuresList = makeList(result.failure);

console.log(failuresList)

// // Output:
// [ 'no-var', 'var-on-top', 'linebreak' ]
// [ '<li class="text-warning">0</li>',
//   '<li class="text-warning">1</li>',
//   '<li class="text-warning">2</li>',
//   '<li class="text-warning">no-var</li>',
//   '<li class="text-warning">var-on-top</li>',
//   '<li class="text-warning">linebreak</li>' ]


/*
  Create Strings using Template Literals
A new feature of ES6 is the template literal. This is a special type of string that makes creating complex strings easier.

Template literals allow you to create multi-line strings and to use string interpolation features to create strings.

Consider the code below:

const person = {
  name: "Zodiac Hasbro",
  age: 56
};

const greeting = `Hello, my name is ${person.name}!
I am ${person.age} years old.`;

console.log(greeting);
The console will display the strings Hello, my name is Zodiac Hasbro! and I am 56 years old..

A lot of things happened there. Firstly, the example uses backticks (`), not quotes (' or "), to wrap the string. Secondly, notice that the string is multi-line, both in the code and the output. This saves inserting \n within strings. The ${variable} syntax used above is a placeholder. Basically, you won't have to use concatenation with the + operator anymore. To add variables to strings, you just drop the variable in a template string and wrap it with ${ and }. Similarly, you can include other expressions in your string literal, for example ${a + b}. This new way of creating strings gives you more flexibility to create robust strings.

Use template literal syntax with backticks to create an array of list element (li) strings. Each list element's text should be one of the array elements from the failure property on the result object and have a class attribute with the value text-warning. The makeList function should return the array of list item strings.

Use an iterator method (any kind of loop) to get the desired output (shown below).

[
  '<li class="text-warning">no-var</li>',
  '<li class="text-warning">var-on-top</li>',
  '<li class="text-warning">linebreak</li>'
]

  */

/*
Tests
Passed:failuresList should be an array containing result failure messages.
Passed:failuresList should be equal to the specified output.
Passed:Template strings and expression interpolation should be used.
Passed:An iterator should be used.
*/

