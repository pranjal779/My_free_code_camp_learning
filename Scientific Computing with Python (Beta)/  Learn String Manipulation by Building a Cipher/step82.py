text = 'Hello Zaira!'
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

# Step 82
# The pass keyword can be used as a placeholder for future code. 
# It does not have any effect in your code but it can save you from errors you would get in case of incomplete code:

# def foo():
#     pass
# Calling vigenere with 1 to encrypt and -1 to decrypt is fine but it might be a little bit cryptic. 
# Create a new function called encrypt that takes message and key parameters, and use pass to fill the function body.


# task 82
def encrypt(message, key):
    pass


encryption = vigenere(text, custom_key)
print(encryption)
decryption = vigenere(encryption, custom_key, -1)
print(decryption)

# output:
# >>> wcesc mpgkh!
# >>> hello zaira!

# "Everything's coming up Milhouse!"

# 86% complete
# Learn String Manipulation by Building a Cipher
# 86% complete
