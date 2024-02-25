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

# Step 91
# Next, modify print('Key: ' + custom_key) to use an f-string.

print(f'Encrypted text: {text}')
print(f'Key: {custom_key}')

# "Way to go!"

# 96% complete
# Learn String Manipulation by Building a Cipher
# 96% complete

#decryption = decrypt(encryption, custom_key)
#print(decryption)

# Output:
# >>> Encrypted text: mrttaqrhknsw ih puggrur
# >>> Key: python
