# Step 58
# Delete your shift variable. Then, declare a new variable called custom_key and assign the value of the string 'python' to this variable.

text = 'Hello Zaira'
# shift = 3
custom_key = 'python'

'''
"There is no spoon!"

61% complete
Learn String Manipulation by Building a Cipher
61% complete
'''


def vigenere(message, key):
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    encrypted_text = ''

    for char in message.lower():
        if char == ' ':
            encrypted_text += char
        else:
            index = alphabet.find(char)
            new_index = (index + offset) % len(alphabet)
            encrypted_text += alphabet[new_index]
    print('plain text:', message)
    print('encrypted text:', encrypted_text)
