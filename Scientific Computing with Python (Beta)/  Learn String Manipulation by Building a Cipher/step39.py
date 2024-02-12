text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
encrypted_text = ''
for char in text.lower():
    index = alphabet.find(char)
    new_index = index + shift
    # encrypted_text += alphabet[new_index]
    encrypted_text = encrypted_text + alphabet[new_index] # same output as above.
    print('char:', char, 'encrypted text:', encrypted_text)

# Congratulations, your code passes. Submit your code to continue.

# "You've got the touch!"

# 41% complete
# Learn String Manipulation by Building a Cipher
# 41% complete

# >>> char: h encrypted text: k
# >>> char: e encrypted text: kh
# >>> char: l encrypted text: kho
# >>> char: l encrypted text: khoo
# >>> char: o encrypted text: khoor
# >>> char:   encrypted text: khoorc
# >>> char: w encrypted text: khoorcz
# >>> char: o encrypted text: khoorczr
# >>> char: r encrypted text: khoorczru
# >>> char: l encrypted text: khoorczruo
# >>> char: d encrypted text: khoorczruog
