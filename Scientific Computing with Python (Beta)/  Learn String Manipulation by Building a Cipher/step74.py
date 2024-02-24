
text = 'Hello Zaira'
custom_key = 'python'

# Step 74
# Now, your function can be used both to encrypt and decrypt a message. Clean up your code with better variable names.

# Change each occurrence of encrypted_text into final_message.

def vigenere(message, key, direction):
    key_index = 0
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    # encrypted_text = ''
    final_message = '' # task74

    for char in message.lower():
    
        # Append space to the message
        if char == ' ':
            # encrypted_text += char
            final_message += char # task74
        else:        
            # Find the right key character to encode
            key_char = key[key_index % len(key)]
            key_index += 1

            # Define the offset and the encrypted letter
            offset = alphabet.index(key_char)
            index = alphabet.find(char)
            new_index = (index + offset*direction) % len(alphabet)
            # encrypted_text += alphabet[new_index]
            final_message += alphabet[new_index] # task74
    
    # return encrypted_text
    return final_message # task74

# "The town is now red!"

# 78% complete
# Learn String Manipulation by Building a Cipher
# 78% complete

encryption = vigenere(text, custom_key, 1)
print(encryption)
decryption = vigenere(encryption, custom_key, -1)
print(decryption)

# Output:
# >>> wcesc mpgkh
# >>> hello zaira
