'''
Step 20
As you can see from the output, h is at index 7 in the alphabet string. Now you need to find the letter at index 7 plus the value of shift. 
For that, you can use the addition operator, +, in the same way you would use it for a mathematical addition.

Modify your shifted variable so that it stores the value of alphabet at index index + shift.
'''

text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
index = alphabet.find(text[0].lower())
print(index)
shifted = alphabet[index + shift]
print(shifted)

'''
Congratulations, your code passes. Submit your code to continue.

"Pull out all the stops!"

Learn String Manipulation by Building a Cipher
21% complete
'''
