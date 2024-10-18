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
Step 50
In Python, the scope of a variable determines where that variable can be accessed:

Variables defined outside a function have a global scope and they can be accessed from any part of your code.

Variables defined inside a function are local to that function and cannot be accessed outside of it.

To see this in action, try to print the alphabet variable at the end of your code. This will raise a NameError exception.

You should see an error message indicating that alphabet is not defined. This is because alphabet is defined inside the caesar function and is not accessible outside of it.
'''

print(alphabet)

# Output
'''
Traceback (most recent call last):
  File "main.py", line 19, in <module>
NameError: name 'alphabet' is not defined
'''
