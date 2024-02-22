
text = 'Hello Zaira'
custom_key = 'python'

def vigenere(message, key):
    key_index = 0
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    encrypted_text = ''

    for char in message.lower():

# Step 62
# You will need to increase the key_index count for the next iteration. 
# To do this, after the line you just added and in the same code block, use the addition assignment operator to increment key_index by one.


        # Append space to the message
        if char == ' ':
            encrypted_text += char
        else:
            key_char = key[key_index % len(key)]
            key_index += 1


#   "Feel that need for speed!"

# 65% complete
# Learn String Manipulation by Building a Cipher
# 65% complete

            index = alphabet.find(char)
            new_index = (index + offset) % len(alphabet)
            encrypted_text += alphabet[new_index]
    print('plain text:', message)
    print('encrypted text:', encrypted_text)
