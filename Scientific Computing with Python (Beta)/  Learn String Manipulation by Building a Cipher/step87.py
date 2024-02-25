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

# Step 87
# Since this time you are starting from an encrypted string to decrypt, you won't need the encryption variable anymore.

# Delete encryption and the print(encryption) call. Also, comment out the last two lines of your code.

# Deleted/commmented for the task 87
# encryption = encrypt(text, custom_key)
# print(encryption)
# decryption = decrypt(encryption, custom_key)
# print(decryption)

# "To infinity and beyond!"

# 92% complete
# Learn String Manipulation by Building a Cipher
# 92% complete
