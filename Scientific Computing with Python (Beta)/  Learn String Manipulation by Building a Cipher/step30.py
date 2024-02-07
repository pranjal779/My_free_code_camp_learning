'''
Step 30
At the end of your loop body, declare a variable called new_index and assign the value of index + shift to this variable.
'''
  
text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in text.lower():
    index = alphabet.find(char)
    print(char, index)
    new_index = index + shift


'''
Congratulations, your code passes. Submit your code to continue.

"You rock!"

32% complete
Learn String Manipulation by Building a Cipher
32% complete
'''
