text = 'mrttaqrhknsw ih puggrur'
custom_key = 'python'

def vigenere(message, key, direction=1):
    key_index = 0
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    final_message = ''

    for char in message.lower():

        # Append any non-letter character to the message
        if not char.isalpha():
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

def encrypt(message, key):
    return vigenere(message, key)
    
def decrypt(message, key):
    return vigenere(message, key, -1)

# Step 92
# The newline character \n is a special sequence used to represent a new line. 
#   You can write a backslash \ followed by an n as a normal sequence of characters in a string and 
# it will be replaced by a new line in the output when the program runs.

# Put a newline character at the beginning of your first print call and see the output.

print(f'\nEncrypted text: {text}')
print(f'Key: {custom_key}')

# "You're on fire!"

# 97% complete
# Learn String Manipulation by Building a Cipher
# 97% complete

#decryption = decrypt(encryption, custom_key)
#print(decryption)

# >>> 
# Encrypted text: mrttaqrhknsw ih puggrur
# >>> Key: python
