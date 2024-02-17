'''
Step 43
Now, instead of printing 'space!', use the addition assignment operator to add the space (currently stored in char) to the current value of encrypted_text.
'''

text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
encrypted_text = ''

for char in text.lower():
    if char == ' ':
        encrypted_text += char
    index = alphabet.find(char)
    new_index = index + shift
    encrypted_text += alphabet[new_index]
    print('char:', char, 'encrypted text:', encrypted_text)

# Output:
# >>> char: h encrypted text: k
# >>> char: e encrypted text: kh
# >>> char: l encrypted text: kho
# >>> char: l encrypted text: khoo
# >>> char: o encrypted text: khoor
# >>> char:   encrypted text: khoor c
# >>> char: w encrypted text: khoor cz
# >>> char: o encrypted text: khoor czr
# >>> char: r encrypted text: khoor czru
# >>> char: l encrypted text: khoor czruo
# >>> char: d encrypted text: khoor czruog

'''
Congratulations, your code passes. Submit your code to continue.

"Way cool!"

45% complete
Learn String Manipulation by Building a Cipher
45% complete
Navigated to Step 43
'''
