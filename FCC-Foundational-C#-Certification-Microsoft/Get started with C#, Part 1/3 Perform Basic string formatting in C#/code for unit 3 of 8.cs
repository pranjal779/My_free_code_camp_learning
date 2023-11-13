// Concatenate a literal string and a variable
string firstName = "Bob";
string message = "Hello " + firstName;
Console.WriteLine(message);

// Concatenate multiple variables and literal strings
string firstName2 = "Bob";
string greeting = "Hello";
string message2 = greeting + " " + firstName2 + "!";
Console.WriteLine(message2);

// Avoiding intermediate variables
// same as above
/*
string firstName2 = "Bob";
string greeting = "Hello";
string message2 = greeting + " " + firstName2 + "!";
Console.WriteLine(message2);
*/