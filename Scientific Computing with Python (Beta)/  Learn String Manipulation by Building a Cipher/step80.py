text = 'Hello Zaira!'
custom_key = 'python'

def vigenere(message, key, direction=1):
    key_index = 0
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    final_message = ''

'''
Step 80
The not operator is used to negate an expression. When placed before a truthy value — a value that evaluates to True — it returns False and vice versa.

Add the not operator at the beginning of the if condition to check if the character is not alphabetic.
'''

    for char in message.lower():
        # Append space to the message
        # using not with the condition to check if the character is not alphabetic:
        if not char.isalpha():
            final_message += char

      '''
      "You've got the touch!"
      
      84% complete
      Learn String Manipulation by Building a Cipher
      84% complete
      '''
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

# Output:
# >>> wcesc mpgkh!
# >>> hello zaira!
