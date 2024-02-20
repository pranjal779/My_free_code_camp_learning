text = 'Hello Zaira'
shift = 3

def caesar():
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    encrypted_text = ''

    for char in text.lower():
        if char == ' ':
            encrypted_text += char
        else:
            index = alphabet.find(char)
            new_index = (index + shift) % len(alphabet)
            encrypted_text += alphabet[new_index]
    print('plain text:', text)
    print('encrypted text:', encrypted_text)

'''
Step 51
To execute, a function need to be called (or invoked) by appending a pair of parentheses after its name, like this:

function_name()
At the end of your code, call your caesar function. Pay attention to the indentation.
'''

caesar()

'''
>>> plain text: Hello Zaira
>>> encrypted text: khoor cdlud
'''


'''
"King of the Pirates!"

54% complete
Learn String Manipulation by Building a Cipher
54% complete
'''
