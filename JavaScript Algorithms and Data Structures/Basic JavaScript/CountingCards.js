let count = 0;

function cc(card) {
  // Only change code below this line
  const increasingCards = [2, 3, 4, 5, 6];
  const neutralCards = [7, 8, 9];
  const decreasingCards = [10, 'J', 'Q', 'K', 'A'];

  if (increasingCards.includes(card)) {
    count++;
  } else if (decreasingCards.includes(card)) {
    count--;
  } else if (neutralCards.includes(card)) {
    // Handle neutral cards if needed (no count change for neutral cards)
  }

  // Construct the message using template literals:
  const decision = count > 0 ? 'Bet' : 'Hold';
  console.log(`${count} ${decision}`);
  // Only change code above this line
}

cc(2); cc(3); cc(7); cc('K'); cc('A');

/*
User
JavaScript Algorithms and Data Structures
Basic JavaScript

Lesson:
Counting Cards
In the casino game Blackjack, a player can determine whether they have an advantage on the next hand over the house by keeping track of the relative number of high and low cards remaining in the deck. This is called Card Counting.

Having more high cards remaining in the deck favors the player. Each card is assigned a value according to the table below. When the count is positive, the player should bet high. When the count is zero or negative, the player should bet low.

|-------------------------------------------|
| Count Change     |Cards                   |
|------------------|------------------------|
| +1	             | 2, 3, 4, 5, 6          |
| 0                | 7, 8, 9                |
| -1               | 10, 'J', 'Q', 'K', 'A' |
|-------------------------------------------|
You will write a card counting function. It will receive a card parameter, which can be a number or a string, and increment or decrement the global count variable according to the card's value (see table). The function will then return a string with the current count and the string Bet if the count is positive, or Hold if the count is zero or negative. The current count and the player's decision (Bet or Hold) should be separated by a single space.

Example Outputs: -3 Hold or 5 Bet

Hint
Do NOT reset count to 0 when value is 7, 8, or 9.
Do NOT return an array.
Do NOT include quotes (single or double) in the output.

Tests
Waiting:Your function should return a value for count and the text (Bet or Hold) with one space character between them.
Waiting:Cards Sequence 2, 3, 4, 5, 6 should return the string 5 Bet
Waiting:Cards Sequence 7, 8, 9 should return the string 0 Hold
Waiting:Cards Sequence 10, J, Q, K, A should return the string -5 Hold
Waiting:Cards Sequence 3, 7, Q, 8, A should return the string -1 Hold
Waiting:Cards Sequence 2, J, 9, 2, 7 should return the string 1 Bet
Waiting:Cards Sequence 2, 2, 10 should return the string 1 Bet
Waiting:Cards Sequence 3, 2, A, 10, K should return the string -1 Hold

starting code sinpet or excerise starting code provided by the FreeCodeCamp website:
let count = 0;

function cc(card) {
  // Only change code below this line
  



  return "Change Me";
  // Only change code above this line
}

cc(2); cc(3); cc(7); cc('K'); cc('A');

so now I will tell you what or how I am planing to do this lesson, please correct me if I am going wrong

we know 
Count will increase by +1 if the Cards are 2, 3, 4, 5, 6
it will not change or 0 if the cards are 7, 8 , 9
it decrease by -1 if 10, 'J', 'Q', 'K', 'A'

I was thinking to 3 nested array
like [[2, 3, 4, 5, 6], [7, 8, 9], [10, 'J', 'Q', 'K', 'A']]

and in Black jack the cards are pulled at random
So I was think which ever is pulled 


The cards are in cardArry suppose they are 2 3 J Q K if we add them togather it will be -1
So we can update the count to -1 and display ‘-1 Hold’
In the next 5 card pulls suppose they are 5 4 8 6 K it will be ‘2 Bet’
Or if they are 2 3 4 5 6 it will br ‘5 Bet’ so on and so forth
*/
