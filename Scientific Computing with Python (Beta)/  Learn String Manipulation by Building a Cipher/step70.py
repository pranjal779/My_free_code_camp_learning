text = 'Hello Zaira'
custom_key = 'python'

def vigenere(message, key, direction):
    key_index = 0
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    encrypted_text = ''

    for char in message.lower():
    
        # Append space to the message
        if char == ' ':
            encrypted_text += char
        else:        
            # Find the right key character to encode
            key_char = key[key_index % len(key)]
            key_index += 1

            # Define the offset and the encrypted letter
            offset = alphabet.index(key_char)
            index = alphabet.find(char)

# Step 70
# All you need to do is multiply the offset by the direction in the new_index assignment. The multiplication operator in Python is *.

            new_index = (index + offset*direction) % len(alphabet)


# "Target acquired."

# 74% complete
# Learn String Manipulation by Building a Cipher
# 74% complete

            encrypted_text += alphabet[new_index]
    
    return encrypted_text
    
#encryption = vigenere(text, custom_key)
#print(encryption)
