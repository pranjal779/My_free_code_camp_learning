# Step 57
# Now modify your function declaration: change the function name into vigenere and the second parameter into key.

text = 'Hello Zaira'
shift = 3

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

# "Nice one!"

# 60% complete
# Learn String Manipulation by Building a Cipher
# 60% complete
