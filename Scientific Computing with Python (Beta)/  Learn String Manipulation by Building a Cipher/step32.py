'''
Step 32
If you try to change the individual characters of a string as you did in the previous step, you will get a TypeError. However, a variable can be reassigned another string:

message = 'Hello World'
message = 'Hello there!'
Delete the text[0] line and reassign text the string Albatross.
'''


text = 'Hello World'
text = 'Albatross'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in text.lower():
    index = alphabet.find(char)
    print(char, index)
    new_index = index + shift


'''
Congratulations, your code passes. Submit your code to continue.

"They're in another castle."

34% complete
Learn String Manipulation by Building a Cipher
34% complete
Navigated to Step 32
'''
