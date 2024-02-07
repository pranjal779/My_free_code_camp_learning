'''
Step 34
Now you need to create a new_char variable at the end of your loop body. Set its value to alphabet[new_index].
'''

text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in text.lower():
    index = alphabet.find(char)
    print(char, index)
    new_index = index + shift
    new_char = alphabet[new_index]

'''
Congratulations, your code passes. Submit your code to continue.

"Spool up the FTL drive!"

36% complete
Learn String Manipulation by Building a Cipher
36% complete
Navigated to Step 34
'''
