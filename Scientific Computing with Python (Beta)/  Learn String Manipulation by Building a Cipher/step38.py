text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
encrypted_text = ''

for char in text.lower():
    index = alphabet.find(char)    
    new_index = index + shift
    encrypted_text = alphabet[new_index]
    print('char:', char, 'encrypted text:', encrypted_text)


# Congratulations, your code passes. Submit your code to continue.

# "Keep on trucking!"

# 40% complete
# Learn String Manipulation by Building a Cipher
# 40% complete

# >>> char: h encrypted text: k
# >>> char: e encrypted text: h
# >>> char: l encrypted text: o
# >>> char: l encrypted text: o
# >>> char: o encrypted text: r
# >>> char:   encrypted text: c
# >>> char: w encrypted text: z
# >>> char: o encrypted text: r
# >>> char: r encrypted text: u
# >>> char: l encrypted text: o
# >>> char: d encrypted text: g


# Step 38
# Now, replace new_char with encrypted_text. Also, modify the print() call into print('char:', char, 'encrypted text:', encrypted_text) to reflect this change.
