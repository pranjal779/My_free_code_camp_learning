text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
encrypted_text = ''


for char in text.lower():
    print(char == ' ')
    index = alphabet.find(char)
    new_index = index + shift
    encrypted_text += alphabet[new_index]
    print('char:', char, 'encrypted text:', encrypted_text)


# Step 41
# Comparison operators allow you to compare two objects based on their values. You can use a comparison operator by placing it between the objects you want to compare. They return a Boolean value — namely True or False — depending on the truthfulness of the expression.

# Python has the following comparison operators:

# Operator	Meaning
# ==	Equal
# !=	Not equal
# >	Greater than
# <	Less than
# ≥	Greater than or equal to
# ≤	Less than or equal to
# At the beginning of your loop body, print the result of comparing char with a space (' '). Use the equality operator == for that.

# Congratulations, your code passes. Submit your code to continue.

# "Code long and prosper."

# 43% complete
# Learn String Manipulation by Building a Cipher
# 43% complete

# >>> False
# >>> char: h encrypted text: k
# >>> False
# >>> char: e encrypted text: kh
# >>> False
# >>> char: l encrypted text: kho
# >>> False
# >>> char: l encrypted text: khoo
# >>> False
# >>> char: o encrypted text: khoor
# >>> True
# >>> char:   encrypted text: khoorc
# >>> False
# >>> char: w encrypted text: khoorcz
# >>> False
# >>> char: o encrypted text: khoorczr
# >>> False
# >>> char: r encrypted text: khoorczru
# >>> False
# >>> char: l encrypted text: khoorczruo
# >>> False
# >>> char: d encrypted text: khoorczruog
