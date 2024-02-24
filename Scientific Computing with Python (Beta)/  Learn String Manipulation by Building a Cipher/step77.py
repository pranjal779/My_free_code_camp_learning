text = 'Hello Zaira'
custom_key = 'python'

def vigenere(message, key, direction=1):
    key_index = 0
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    final_message = ''

    for char in message.lower():
    
        # Append space to the message
        if char == ' ':
            final_message += char
        else:        
            # Find the right key character to encode/decode
            key_char = key[key_index % len(key)]
            key_index += 1

            # Define the offset and the encrypted/decrypted letter
            offset = alphabet.index(key_char)
            index = alphabet.find(char)
            new_index = (index + offset*direction) % len(alphabet)
            final_message += alphabet[new_index]
    
    return final_message

# Step 77Passed
# Now you can remove the third argument from your first function call.


# encryption = vigenere(text, custom_key, 1)
# Removing the third function call here:
encryption = vigenere(text, custom_key)
print(encryption)
decryption = vigenere(encryption, custom_key, -1)
print(decryption)

# "Gotta code 'em all!"

# 81% complete
# Learn String Manipulation by Building a Cipher
# 81% complete

# Output:
# >>> wcesc mpgkh
# >>> hello zaira

