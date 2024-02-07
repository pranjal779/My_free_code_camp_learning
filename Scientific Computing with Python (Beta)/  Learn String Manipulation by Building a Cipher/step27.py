'''
Step 27
Inside the for loop, before printing the current character, declare a variable called index and assign the value returned by alphabet.find(char) to this variable.
'''

text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in text:
    index = alphabet.find(char)
    print(char)
