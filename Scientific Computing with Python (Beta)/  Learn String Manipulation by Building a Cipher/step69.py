# Step 69
# Encryption and decryption are opposite processes and your function can do both with a couple of tweaks.

# Add a third parameter called direction to your function definition. Also, comment out the last two lines to avoid errors in the console.

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
            new_index = (index + offset) % len(alphabet)
            encrypted_text += alphabet[new_index]
    
    return encrypted_text
    
# encryption = vigenere(text, custom_key)
# print(encryption)

# "Far out!"

# 73% complete
# Learn String Manipulation by Building a Cipher
# 73% complete
