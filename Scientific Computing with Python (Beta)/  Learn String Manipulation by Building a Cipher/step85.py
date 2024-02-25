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

# Step 85
# Next, modify your encryption and decryption variables by calling encrypt and decrypt, respectively, in place of vigenere.

def encrypt(message, key):
    return vigenere(message, key)
    
def decrypt(message, key):
    return vigenere(message, key, -1)


# task 85 - attempt 2:
encryption = encrypt(text, custom_key)
print(encryption)

decryption = decrypt(encryption, custom_key)
print(decryption)


# not accepted code - attempt 1:
# # task 85
# print('For Encryption function call:')   
# encryption = encrypt
# print(encryption) # the Output here would be: >>> <function encrypt at 0x11f72a0> 
# encryption = encrypt(text, custom_key)
# print(encryption + '\n')

# print('For Decryption function call:')
# decryption = decrypt
# print(decryption) # THe Output here would be: >>> <function decrypt at 0xa875f0>
# decryption = decrypt(text, custom_key)
# print(decryption)

# "You're crushing it!"

# 89% complete
# Learn String Manipulation by Building a Cipher
# 89% complete

# Output:
# >>> wcesc mpgkh!
# >>> hello zaira!

# for the attempt 1:
# >>> For Encryption function call:
# >>> <function encrypt at 0xc35ec0>
# >>> wcesc mpgkh!

# >>> For Decryption function call:
# >>> <function decrypt at 0xf2f2e0>
# >>> sgsea mlkyt!
