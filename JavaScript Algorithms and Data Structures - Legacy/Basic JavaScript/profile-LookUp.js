// Setup
const contacts = [
  {
    firstName: "Akira",
    lastName: "Laine",
    number: "0543236543",
    likes: ["Pizza", "Coding", "Brownie Points"],
  },
  {
    firstName: "Harry",
    lastName: "Potter",
    number: "0994372684",
    likes: ["Hogwarts", "Magic", "Hagrid"],
  },
  {
    firstName: "Sherlock",
    lastName: "Holmes",
    number: "0487345643",
    likes: ["Intriguing Cases", "Violin"],
  },
  {
    firstName: "Kristian",
    lastName: "Vos",
    number: "unknown",
    likes: ["JavaScript", "Gaming", "Foxes"],
  },
];

function lookUpProfile(name, prop) {
  // Only change code below this line
  // console.log(contacts[1].firstName);
  
  // iterate through each contact:
  for (let i = 0; i < contacts.length; i++) {

    // this loop checks the fistName is a match or not:
    if (contacts[i].firstName === name) {

      // And if the prop {the second argument in the fn} is presesnt in the contact:
      if (contacts[i].hasOwnProperty(prop)) {
        // return the value of the property
        return contacts[i][prop];
      } else {
        return "No such property";
      }
    }
  }
  return "No such contact";
  // Only change code above this line
}

lookUpProfile("Akira", "likes");

// display the output of the test:
console.log(lookUpProfile("Akira", "likes"));

/*
Profile Lookup
We have an array of objects representing different people in our contacts lists.

A lookUpProfile function that takes name and a property (prop) as arguments has been pre-written for you.

The function should check if name is an actual contact's firstName and 
the given property (prop) is a property of that contact.

If both are true, then return the "value" of that property.

If name does not correspond to any contacts then return the string No such contact.

If prop does not correspond to any valid properties of a contact found to match name 
then return the string No such property.
*/

/*
Tests
Passed:lookUpProfile("Kristian", "lastName") should return the string Vos
Passed:lookUpProfile("Sherlock", "likes") should return ["Intriguing Cases", "Violin"]
Passed:lookUpProfile("Harry", "likes") should return an array
Passed:lookUpProfile("Bob", "number") should return the string No such contact
Passed:lookUpProfile("Bob", "potato") should return the string No such contact
Passed:lookUpProfile("Akira", "address") should return the string No such property
*/

/*
// running tests
// tests completed
// console output
[ 'Pizza', 'Coding', 'Brownie Points' ]
*/


