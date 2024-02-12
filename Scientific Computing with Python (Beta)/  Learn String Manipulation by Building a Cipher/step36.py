text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in text.lower():
    index = alphabet.find(char)
    # print(char, index) # deleted this line.
    new_index = index + shift
    new_char = alphabet[new_index]
    print('char:', char, 'new char:', new_char)


# output:
# >>> char: h new char: k
# >>> char: e new char: h
# >>> char: l new char: o
# >>> char: l new char: o
# >>> char: o new char: r
# >>> char:   new char: c
# >>> char: w new char: z
# >>> char: o new char: r
# >>> char: r new char: u
# >>> char: l new char: o
# >>> char: d new char: g


# Step 36
# Clean the output a bit. Delete print(char, index), and turn the last print() call into print('char:', char, 'new char:', new_char).

# text = 'Hello World'
# shift = 3
# alphabet = 'abcdefghijklmnopqrstuvwxyz'

# for char in text.lower():
#     index = alphabet.find(char)
#     # print(char, index) # deleted this line.
#     new_index = index + shift
#     new_char = alphabet[new_index]
#     print('char:', char, 'new char:', new_char)
# Congratulations, your code passes. Submit your code to continue.

# "They're in another castle."

# 38% complete
# Learn String Manipulation by Building a Cipher
# 38% complete
# Navigated to Step 36
