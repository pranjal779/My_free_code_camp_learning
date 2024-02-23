text = 'Hello Zaira'
custom_key = 'python'

def vigenere(message, key):
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

# Step 66
# At the moment, your function prints some strings, but these values cannot be used by other parts of code to perform any actions.

# For that purpose, you need to use a return statement. You need to write return followed by the value that the function should return. 
# Once the return statement is found, that value is returned and the execution of the function stops, proceeding to the next line of code after the function call.

# Remove the two print() calls from your function and return encrypted_text.

            # Define the offset and the encrypted letter
            offset = alphabet.index(key_char)
            index = alphabet.find(char)
            new_index = (index + offset) % len(alphabet)
            encrypted_text += alphabet[new_index]
    # print('plain text:', message)
    # print('encrypted text:', encrypted_text)
    # 
    # task 66
    return encrypted_text

# "Shiver me timbers!"

# 69% complete
# Learn String Manipulation by Building a Cipher
# 69% complete
