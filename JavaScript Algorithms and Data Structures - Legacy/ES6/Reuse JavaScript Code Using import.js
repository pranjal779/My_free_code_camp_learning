// Reuse JavaScript Code Using import
// import allows you to choose which parts of a file or module to load. In the previous lesson, the examples exported add from the math_functions.js file. 
//   Here's how you can import it to use in another file:

// import { add } from './math_functions.js';
// Here, import will find add in math_functions.js, import just that function for you to use, and ignore the rest. 
//   The ./ tells the import to look for the math_functions.js file in the same folder as the current file. 
//   The relative file path (./) and file extension (.js) are required when using import in this way.

// You can import more than one item from the file by adding them in the import statement like this:

// import { add, subtract } from './math_functions.js';
// Add the appropriate import statement that will allow the current file to use the uppercaseString and lowercaseString functions you exported in the previous lesson. 
//   These functions are in a file called string_functions.js, which is in the same directory as the current file.

import {uppercaseString, lowercaseString} from './string_functions.js';
// Only change code above this line

uppercaseString("hello");
lowercaseString("WORLD!");

// Tests
// Passed:1. You should properly import uppercaseString.
// Passed:2. You should properly import lowercaseString.
//   // running tests
// // tests completed
