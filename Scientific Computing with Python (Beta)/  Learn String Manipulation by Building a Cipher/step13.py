text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
alphabet.find(text[0])

'''
The first kind of cipher you are going to build is called a Caesar cipher. Specifically, you will take each letter in your message, find its position in the alphabet, take the letter located after 3 positions, and replace the original letter with the new letter.

Start by finding the position of the first letter in the string. One way is to call the .find() string method on the string you want to parse:

text.find('W')
Above, uppercase W is the character you want to locate inside the string stored in the text variable. The method will return 6, which is the index of the W character inside the string stored in the text variable.

At the end of your code, call .find() on your alphabet string and pass text[0] to the method. Note that a method is just a function that belongs to an object (you will learn more about that in another project).

text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
alphabet.find(text[0])
Congratulations, your code passes. Submit your code to continue., Use Ctrl + Enter to submit.

"Pikachu chooses you!"

14% complete
'''
