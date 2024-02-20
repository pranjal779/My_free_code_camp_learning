text = 'Hello Zaira'
custom_key = 'python'

def vigenere(message, key):
    key_index = 0
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    encrypted_text = ''

    for char in message.lower():

'''
Step 60
When coding, readability is key. Comments serve as effective notes, explaining the logic behind your code. 
They prove valuable when returning to a project after some time and also aid your colleagues in understanding the code.

In Python, you can write a comment using a #. Anything that comes after the # won't be executed.

Before your if statement, add a comment saying Append space to the message.
'''

        # Append space to the message
        if char == ' ':
            encrypted_text += char

# "You're a wizard, Harry!"

# 63% complete
# Learn String Manipulation by Building a Cipher
# 63% complete

        else:
            index = alphabet.find(char)
            new_index = (index + offset) % len(alphabet)
            encrypted_text += alphabet[new_index]
    print('plain text:', message)
    print('encrypted text:', encrypted_text)
