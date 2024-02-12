text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'

encrypted_text = ''

for char in text.lower():
    index = alphabet.find(char)
    new_index = index + shift
    new_char = alphabet[new_index]
    print('char:', char, 'new char:', new_char)


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


# Step 37
# At the moment, the encrypted character is updated in every iteration. 
# It would be better to store the encrypted string in a new variable. Before your for loop, declare a variable called encrypted_text 
# and assign an empty string ('') to this variable.

#   Congratulations, your code passes. Submit your code to continue.

# "I gotta have more cowbell."

# 39% complete
# Learn String Manipulation by Building a Cipher
# 39% complete
                                                                             
