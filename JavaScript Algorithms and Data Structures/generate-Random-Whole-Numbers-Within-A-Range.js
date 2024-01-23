function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}

// print out the output:
let myMax = 10;
let myMin = 1;
console.log(Math.floor(Math.random() * (myMax - myMin + 1)) + myMin);
