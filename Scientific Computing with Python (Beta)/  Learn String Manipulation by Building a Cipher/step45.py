# Step 45
# Try to assign the string 'Hello Zaira' to your text variable and see what happens in the console.

# text = 'Hello World'
text = 'Hello Zaira'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
encrypted_text = ''

for char in text.lower():
    if char == ' ':
        encrypted_text += char
    else:
        index = alphabet.find(char)
        new_index = index + shift
        encrypted_text += alphabet[new_index]
    print('char:', char, 'encrypted text:', encrypted_text)

# # output:
# >>> char: h encrypted text: k
# >>> char: e encrypted text: kh
# >>> char: l encrypted text: kho
# >>> char: l encrypted text: khoo
# >>> char: o encrypted text: khoor
# >>> char:   encrypted text: khoor 


# "Even Honey Badger cares!"

# 47% complete
# Learn String Manipulation by Building a Cipher
# 47% complete
