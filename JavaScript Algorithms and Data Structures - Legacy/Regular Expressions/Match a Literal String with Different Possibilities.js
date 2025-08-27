// Match a Literal String with Different Possibilities
// Using regexes like /coding/, you can look for the pattern coding in another string.

// This is powerful to search single strings, but it's limited to only one pattern. You can search for multiple patterns using the alternation or OR operator: |.

// This operator matches patterns either before or after it. For example, if you wanted to match the strings yes or no, the regex you want is /yes|no/.

// You can also search for more than just two patterns. You can do this by adding more patterns with more OR operators separating them, like /yes|no|maybe/.

// Complete the regex petRegex to match the pets dog, cat, bird, or fish.

let petString = "James has a pet cat.";
let petRegex = /dog|cat|bird|fish/; // Change this line
let result = petRegex.test(petString);

// Tests
// Passed:1. Your regex petRegex should return true for the string John has a pet dog.
// Passed:2. Your regex petRegex should return false for the string Emma has a pet rock.
// Passed:3. Your regex petRegex should return true for the string Emma has a pet bird.
// Passed:4. Your regex petRegex should return true for the string Liz has a pet cat.
// Passed:5. Your regex petRegex should return false for the string Kara has a pet dolphin.
// Passed:6. Your regex petRegex should return true for the string Alice has a pet fish.
// Passed:7. Your regex petRegex should return false for the string Jimmy has a pet computer.
