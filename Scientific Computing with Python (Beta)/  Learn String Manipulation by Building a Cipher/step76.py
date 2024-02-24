text = 'Hello Zaira'
custom_key = 'python'

# Step 76
# Functions can be called with default arguments. A default argument indicates the value that the function should take if the argument is not passed. 
# For example, the function below accepts three arguments but you can call it passing two arguments. The third one will assume the specified value by default:

# def foo(a, b, c=value):
#     <code>
# Modify the vigenere function so that its direction parameter has a default value of 1.

def vigenere(message, key, direction=1):

#   "It's on like Donkey Kong!"

# 80% complete
# Learn String Manipulation by Building a Cipher
# 80% complete

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
    
encryption = vigenere(text, custom_key, 1)
print(encryption)
decryption = vigenere(encryption, custom_key, -1)
print(decryption)

# Output:
# >>> wcesc mpgkh
# >>> hello zaira
