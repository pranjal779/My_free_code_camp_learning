'''
Step 35
Next, print new_char and see the output.
'''

text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in text.lower():
    index = alphabet.find(char)
    print(char, index)
    new_index = index + shift
    new_char = alphabet[new_index]
    print(new_char)

'''
>>> h 7
>>> k
>>> e 4
>>> h
>>> l 11
>>> o
>>> l 11
>>> o
>>> o 14
>>> r
>>>   -1
>>> c
>>> w 22
>>> z
>>> o 14
>>> r
>>> r 17
>>> u
>>> l 11
>>> o
>>> d 3
>>> g
'''



'''
Congratulations, your code passes. Submit your code to continue.

"It's alive. It's alive!"

37% complete
Learn String Manipulation by Building a Cipher
37% complete
Navigated to Step 35
'''
