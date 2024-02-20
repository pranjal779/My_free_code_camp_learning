# Step 59
# Since your key is shorter than the text that you will have to encrypt, you will need to repeat it to generate the whole encrypted text.
# At the beginning of your function body, declare a key_index variable and set it to zero.

text = 'Hello Zaira'
custom_key = 'python'

def vigenere(message, key):
    key_index = 0
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

'''
"Keep calm and code on!"

62% complete
Learn String Manipulation by Building a Cipher
62% complete
'''
