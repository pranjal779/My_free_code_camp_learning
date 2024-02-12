text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
encrypted_text = ''
for char in text.lower():
    index = alphabet.find(char)
    new_index = index + shift
    encrypted_text += alphabet[new_index]
    print('char:', char, 'encrypted text:', encrypted_text)


# Step 40
# You can obtain the same effect of a = a + b by using the addition assignment operator:

# a += b
# The addition assignment operator enables you to add a value to a variable and then assign the result to that variable.

# Use the += operator to add a value and assign it at the same time to encrypted_text.

# "You've got guts!"

# 42% complete
# Learn String Manipulation by Building a Cipher

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
