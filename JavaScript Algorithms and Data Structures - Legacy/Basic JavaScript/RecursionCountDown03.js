// Only change code below this line
function countdown(n) {
  if (n < 1) {
    return [];
  } else {
    return [n, ...countdown(n - 1)]; // Use the spread operator
  }
}
// Only change code above this line

console.log(countdown(10));
