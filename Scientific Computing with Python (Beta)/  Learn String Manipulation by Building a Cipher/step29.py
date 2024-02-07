'''
Step 29
find is again returning -1 for uppercase letters, and for the space character, too. You are going to take care of the space later on.

For now, instead of iterating over text, change the for loop to iterate over text.lower().
'''


text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in text.lower():
    index = alphabet.find(char)
    print(char, index)

'''
>>> h 7
>>> e 4
>>> l 11
>>> l 11
>>> o 14
>>>   -1
>>> w 22
>>> o 14
>>> r 17
>>> l 11
>>> d 3

'''

'''
Congratulations, your code passes. Submit your code to continue.

"You're a shooting star!"

31% complete
Learn String Manipulation by Building a Cipher
31% complete
'''
