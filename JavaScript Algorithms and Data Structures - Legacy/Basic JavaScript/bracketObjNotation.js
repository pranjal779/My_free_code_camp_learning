/*
Accessing Object Properties with Variables
Another use of bracket notation on objects is to access a property which is stored as the value of a variable. This can be very useful for iterating through an object's properties or when accessing a lookup table.

Here is an example of using a variable to access a property:

const dogs = {
  Fido: "Mutt",
  Hunter: "Doberman",
  Snoopie: "Beagle"
};

const myDog = "Hunter";
const myBreed = dogs[myDog];
console.log(myBreed);
The string Doberman would be displayed in the console.

Note that we do not use quotes around the variable name when using it to access the property because we are using the value of the variable, not the name.

Set the playerNumber variable to 16. Then, use the variable to look up the player's name and assign it to player.
*/

/*
Tests
Waiting:playerNumber should be a number
Waiting:The variable player should be a string
Waiting:The value of player should be the string Montana
Waiting:You should use bracket notation to access testObj
Waiting:You should not assign the value Montana to the variable player directly.
Waiting:You should be using the variable playerNumber in your bracket notation
*/

/*
// Setup
const testObj = {
  12: "Namath",
  16: "Montana",
  19: "Unitas"
};

// Only change code below this line
const playerNumber = 42;  // Change this line
const player = testObj;   // Change this line
*/

/*
// Only change code below this line
const playerNumber = 42;  // Change this line
const player = testObj[playerNumber];   // Change this line
console.log(player);

output:
undefined
*/

// Setup
const testObj = {
  12: "Namath",
  16: "Montana",
  19: "Unitas"
};

// Only change code below this line
const playerNumber = 16;  // Change this line
const player = testObj[playerNumber];   // Change this line
console.log(player);


/*
output:
Montana
*/
