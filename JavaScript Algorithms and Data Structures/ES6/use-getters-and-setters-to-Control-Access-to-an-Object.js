// Only change code below this line
class Thermostat {
  constructor(fahrenheit) {
    this._temperature = fahrenheit
  }

  get temperature() {
    return (5/9 * (this._temperature - 32));
  }

  set temperature(celsius) {
    this._temperature = (celsius * (9.0/5) + 32);
  }
}

// Only change code above this line

const thermos = new Thermostat(76); // Setting in Fahrenheit scale
let temp = thermos.temperature; // 24.44 in Celsius
thermos.temperature = 26;
temp = thermos.temperature; // 26 in Celsius

/*
Use getters and setters to Control Access to an Object
You can obtain values from an object and set the value of a property within an object.

These are classically called getters and setters.

Getter functions are meant to simply return (get) the value of an object's private variable to the user without the user directly accessing the private variable.

Setter functions are meant to modify (set) the value of an object's private variable based on the value passed into the setter function. This change could involve calculations, or even overwriting the previous value completely.

class Book {
  constructor(author) {
    this._author = author;
  }
  // getter
  get writer() {
    return this._author;
  }
  // setter
  set writer(updatedAuthor) {
    this._author = updatedAuthor;
  }
}
const novel = new Book('anonymous');
console.log(novel.writer);
novel.writer = 'newAuthor';
console.log(novel.writer);
The console would display the strings anonymous and newAuthor.

Notice the syntax used to invoke the getter and setter. They do not even look like functions. Getters and setters are important because they hide internal implementation details.

Note: It is convention to precede the name of a private variable with an underscore (_). However, the practice itself does not make a variable private.

Use the class keyword to create a Thermostat class. The constructor accepts a Fahrenheit temperature.

In the class, create a getter to obtain the temperature in Celsius and a setter that accepts a temperature in Celsius.

Remember that C = 5/9 * (F - 32) and F = C * 9.0 / 5 + 32, where F is the value of temperature in Fahrenheit, and C is the value of the same temperature in Celsius.

Note: When you implement this, you will track the temperature inside the class in one scale, either Fahrenheit or Celsius.

This is the power of a getter and a setter. You are creating an API for another user, who can get the correct result regardless of which one you track.

In other words, you are abstracting implementation details from the user.
*/

/*
Tests
Passed:Thermostat should be a class with a defined constructor method.
Passed:The class keyword should be used.
Passed:Thermostat should be able to be instantiated.
Passed:When instantiated with a Fahrenheit value, Thermostat should set the correct temperature.
Passed:A getter should be defined.
Passed:A setter should be defined.
Passed:Calling the setter with a Celsius value should set the temperature.
*/

/*
If the code were like this:

javascript
Copy code
const thermos = new Thermostat(26); // Setting in Celsius scale
let temp = thermos.temperature; // Accessing the getter, converts Celsius to Fahrenheit
console.log(temp);

thermos.temperature = 76; // Accessing the setter, converts Celsius to Fahrenheit
temp = thermos.temperature;
console.log(temp);
The initial thermos.temperature = 26; would set the temperature in Celsius.
let temp = thermos.temperature; would convert this Celsius temperature to Fahrenheit using the getter.
thermos.temperature = 76; would then use the setter, converting the 76 Celsius back to Fahrenheit.
temp = thermos.temperature; would once again use the getter to convert this new Fahrenheit temperature to Celsius.
So, the output would be the Celsius equivalent of the Fahrenheit temperatures, reflecting the conversions made by the getter and setter.
*/