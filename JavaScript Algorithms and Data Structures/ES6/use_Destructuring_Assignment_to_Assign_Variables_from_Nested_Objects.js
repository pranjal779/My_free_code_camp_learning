const LOCAL_FORECAST = {
  yesterday: { low: 61, high: 75 },
  today: { low: 64, high: 77 },
  tomorrow: { low: 68, high: 80 }
};

// Only change code below this line
  
// const lowToday = LOCAL_FORECAST.today.low;
// const highToday = LOCAL_FORECAST.today.high;

const {today: {low, high}} = LOCAL_FORECAST; // extract values of Local_Forecast objects

const {today: { low: lowToday, high: highToday }} = LOCAL_FORECAST; // equivalent destructuring assignment.

console.log(lowToday, highToday);
console.log("equivalent destructuring assignment for lowToday.LOCAL_FORECAST: " + lowToday);

console.log("equivalent destructuring assignment for highToday.LOCAL_FORECAST: " + highToday);

// Only change code above this line


// // Output:
// // running tests
// // tests completed
// // console output
// 64 77
// equivalent destructuring assignment for lowToday.LOCAL_FORECAST: 64
// equivalent destructuring assignment for highToday.LOCAL_FORECAST: 77

/*
Use Destructuring Assignment to Assign Variables from Nested Objects
You can use the same principles from the previous two lessons to destructure values from nested objects.

Using an object similar to previous examples:

const user = {
  johnDoe: { 
    age: 34,
    email: 'johnDoe@freeCodeCamp.com'
  }
};
Here's how to extract the values of object properties and assign them to variables with the same name:

const { johnDoe: { age, email }} = user;
And here's how you can assign an object properties' values to variables with different names:

const { johnDoe: { age: userAge, email: userEmail }} = user;
Replace the two assignments with an equivalent destructuring assignment. It should still assign the variables lowToday and highToday the values of today.low and today.high from the LOCAL_FORECAST object.

Tests
Passed:You should remove the ES5 assignment syntax.
Passed:You should use destructuring to create the lowToday variable.
Passed:You should use destructuring to create the highToday variable.
Passed:lowToday should be equal to 64 and highToday should be equal to 77.

*/
