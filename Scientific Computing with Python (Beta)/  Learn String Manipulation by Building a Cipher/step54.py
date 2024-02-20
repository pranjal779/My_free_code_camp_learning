text = 'Hello Zaira'
shift = 3

def caesar(message, offset):
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    encrypted_text = ''

    for char in message.lower():
        if char == ' ':
            encrypted_text += char
        else:
            index = alphabet.find(char)
            new_index = (index + offset) % len(alphabet)
            encrypted_text += alphabet[new_index]
    print('plain text:', message)
    print('encrypted text:', encrypted_text)

'''
Step 54
Right now, your code can't execute because the caesar function is defined with two parameters (message and offset) but it is called without arguments.

Give message and offset values, by passing text and shift as arguments to the caesar function call.
'''

caesar(text, shift) # Code task for step 54

'''
"Off the hook!"

57% complete
Learn String Manipulation by Building a Cipher
57% complete
'''
