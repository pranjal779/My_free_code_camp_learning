'''
Step 31
Strings are immutable, which means they cannot be changed once created. For example, you might think that the following code changes the value of my_string into the string train, but this is not valid:

my_string = 'brain'
my_string[0] = 't'
Confirm that by using the bracket notation to access the first letter in text and try to change it into a character of your choice. You will see the ouput disappear.
'''

text = 'Hello World'
text[0] = 'j'

shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in text.lower():
    index = alphabet.find(char)
    print(char, index)
    new_index = index + shift

'''
Congratulations, your code passes. Submit your code to continue.

"Escape velocity reached!"

33% complete
Learn String Manipulation by Building a Cipher
33% complete
Navigated to Step 31
'''
