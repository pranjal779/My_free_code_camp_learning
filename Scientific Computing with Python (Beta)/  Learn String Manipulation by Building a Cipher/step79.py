text = 'Hello Zaira!'
custom_key = 'python'

def vigenere(message, key, direction=1):
    key_index = 0
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    final_message = ''

    for char in message.lower():

# Step 79
# The .isalpha() method returns True if all the character of the string on which it is called are letters. For example, the code below returns True:

# 'freeCodeCamp'.isalpha()
# # True
# Delete the condition char == ' ' and replace it by calling the .isalpha() method on char.

        # Append space to the message
        # Deleting the condition for the task 79
        # if char == ' ':
        if char.isalpha():
            final_message += char


# "Pull out all the stops!"

# 83% complete
# Learn String Manipulation by Building a Cipher
# 83% complete

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
    
encryption = vigenere(text, custom_key)
print(encryption)
decryption = vigenere(encryption, custom_key, -1)
print(decryption)


# # Output:
# >>> helloozairax
# >>> helloozairax
