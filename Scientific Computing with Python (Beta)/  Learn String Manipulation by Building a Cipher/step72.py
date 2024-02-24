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
            new_index = (index + offset*direction) % len(alphabet)
            encrypted_text += alphabet[new_index]
    
    return encrypted_text

# Step 72
# Check if the function can decrypt the string back to the plain text.

# Declare another variable called decryption and assign it vigenere(encryption, custom_key, -1).

encryption = vigenere(text, custom_key, 1)
print(encryption)

decryption = vigenere(encryption, custom_key, -1)
print(decryption)

# #  Output:
# >>> wcesc mpgkh
# >>> hello zaira

# "Keep calm and code on!"

# 76% complete
# Learn String Manipulation by Building a Cipher
# 76% complete
