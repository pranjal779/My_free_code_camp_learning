// Setup
function phoneticLookup(val) {
  var result = "";

  // Only change code below this line
  var lookup = {
    "alpha": "Adams",
    "bravo": "Boston",
    "charlie": "Chicago",
    "delta": "Denver",
    "echo": "Easy",
    "foxtrot": "Frank"
  }

  var result = lookup[val]; // Retrieve the value based on the key (val) from the lookup object

  // Only change code above this line
  return result;
}

console.log(phoneticLookup("charlie"));
console.log(phoneticLookup("bravo"));
console.log(phoneticLookup("barvo"));
console.log(phoneticLookup("alpha"));
console.log(phoneticLookup("delta"));
console.log(phoneticLookup("echo"));
console.log(phoneticLookup("foxtrot"));

/*
Using Objects for Lookups
Objects can be thought of as a key/value storage, like a dictionary. If you have tabular data, you can use an object to lookup values rather than a switch statement or an if/else chain. This is most useful when you know that your input data is limited to a certain range.

Here is an example of an article object:

const article = {
  "title": "How to create objects in JavaScript",
  "link": "https://www.freecodecamp.org/news/a-complete-guide-to-creating-objects-in-javascript-b0e2450655e8/",
  "author": "Kaashan Hussain",
  "language": "JavaScript",
  "tags": "TECHNOLOGY",
  "createdAt": "NOVEMBER 28, 2018"
};

const articleAuthor = article["author"];
const articleLink = article["link"];

const value = "title";
const valueLookup = article[value];
articleAuthor is the string Kaashan Hussain, articleLink is the string https://www.freecodecamp.org/news/a-complete-guide-to-creating-objects-in-javascript-b0e2450655e8/, and valueLookup is the string How to create objects in JavaScript.

Convert the switch statement into an object called lookup. Use it to look up val and assign the associated string to the result variable.

Tests
Waiting:phoneticLookup("alpha") should equal the string Adams
Waiting:phoneticLookup("bravo") should equal the string Boston
Waiting:phoneticLookup("charlie") should equal the string Chicago
Waiting:phoneticLookup("delta") should equal the string Denver
Waiting:phoneticLookup("echo") should equal the string Easy
Waiting:phoneticLookup("foxtrot") should equal the string Frank
Waiting:phoneticLookup("") should equal undefined
Waiting:You should not modify the return statement
Waiting:You should not use case, switch, or if statements

// Setup
function phoneticLookup(val) {
  let result = "";

  // Only change code below this line
  switch(val) {
    case "alpha":
      result = "Adams";
      break;
    case "bravo":
      result = "Boston";
      break;
    case "charlie":
      result = "Chicago";
      break;
    case "delta":
      result = "Denver";
      break;
    case "echo":
      result = "Easy";
      break;
    case "foxtrot":
      result = "Frank";
  }


  // Only change code above this line
  return result;
}

phoneticLookup("charlie");

*/
