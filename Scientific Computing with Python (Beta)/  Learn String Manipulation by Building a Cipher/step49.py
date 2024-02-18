# Step 49
# Right before the print call, add another one and pass 'plain text:', text as the arguments to print(). Use the same indentation.

text = 'Hello Zaira'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
encrypted_text = ''

for char in text.lower():
    if char == ' ':
        encrypted_text += char
    else:
        index = alphabet.find(char)
        new_index = (index + shift) % len(alphabet)
        encrypted_text += alphabet[new_index]
print('plain text:', text) # task 49
print('encrypted text:', encrypted_text)

# "By the power of Grayskull!"

# 52% complete
# Learn String Manipulation by Building a Cipher
# 52% complete

# >>> plain text: Hello Zaira
# >>> encrypted text: khoor cdlud
