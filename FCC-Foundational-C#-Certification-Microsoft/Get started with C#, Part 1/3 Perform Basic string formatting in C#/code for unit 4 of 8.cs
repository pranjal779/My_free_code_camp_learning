// What is string interpolation?

// In other words, instead of writing the following line of code:
// string message = greeting + " " + firstName + "!";

// You can write this more concise line of code instead:
// string message = $"{greeting} {firstName}!";

// Use string interpolation to combine a literal string and a variable value
string firstName = "Bob";
string message = $"Hello {firstName}!";
Console.WriteLine(message);

// Use string interpolation with multiple variables and literal strings
int version = 11;
string updateText = "Update to Windows";
string message2 = $"{updateText} {version}";
Console.WriteLine(message2);

// Avoid intermediate variables
int version02 = 11;
string updateText02 = "Update to Windows";
Console.WriteLine($"{updateText02} {version02}!");

// Combine verbatim literals and string interpolation
string projectName = "First-Project";
Console.WriteLine($@"C:\Output\{projectName}\Data");

/*
Recap
Here's what you've learned about string interpolation so far:

String interpolation provides an improvement over string concatenation by reducing the number of characters required in some situations.
You can combine string interpolation and verbatim literals by combining the symbols for each and using that as a prefix for the string template.
*/