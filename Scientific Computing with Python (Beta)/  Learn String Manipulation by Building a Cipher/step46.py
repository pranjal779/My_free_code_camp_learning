'''
Step 46
When the loop reaches the letter Z, the sum index + shift exceeds the length of the string alphabet.

In this case, the modulo operator (%) can be used to return the remainder of the division between two numbers. 
For example: 5 % 2 is equal to 1, because 5 divided by 2 has a quotient of 2 and a remainder of 1.

Surround index + shift with parentheses, and modulo the expression with 26, which is the alphabet length.
'''

text = 'Hello Zaira'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
encrypted_text = ''

for char in text.lower():
    if char == ' ':
        encrypted_text += char
    else:
        index = alphabet.find(char)
        new_index = (index + shift) % 26 # task for step 46, basically says to bring the code back into the loop - I dont understand why the previous code worked.
        encrypted_text += alphabet[new_index]
    print('char:', char, 'encrypted text:', encrypted_text)

# "Gotta code 'em all!"

# 48% complete
# Learn String Manipulation by Building a Cipher
# 48% complete

# >>> char: h encrypted text: k
# >>> char: e encrypted text: kh
# >>> char: l encrypted text: kho
# >>> char: l encrypted text: khoo
# >>> char: o encrypted text: khoor
# >>> char:   encrypted text: khoor 
# >>> char: z encrypted text: khoor c
# >>> char: a encrypted text: khoor cd
# >>> char: i encrypted text: khoor cdl
# >>> char: r encrypted text: khoor cdlu
# >>> char: a encrypted text: khoor cdlud
