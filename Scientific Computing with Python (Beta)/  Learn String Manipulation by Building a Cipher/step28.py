'''
Step 28
Currently, the print() function is taking a single argument char, but it can take multiple arguments, separated by a comma.

Add a second argument to print(char) so that it prints the character and its index inside the alphabet.
'''


text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in text:
    index = alphabet.find(char)
    print(char, index)

'''
Output:
>>> H -1
>>> e 4
>>> l 11
>>> l 11
>>> o 14
>>>   -1
>>> W -1
>>> o 14
>>> r 17
>>> l 11
>>> d 3

'''



'''
Congratulations, your code passes. Submit your code to continue.

"You did it!"

29% complete
Learn String Manipulation by Building a Cipher
29% complete
'''
