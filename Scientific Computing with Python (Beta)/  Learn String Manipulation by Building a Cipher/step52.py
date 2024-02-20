text = 'Hello Zaira'
shift = 3

'''
Step 52
Now you should see the output again. Although this approach works, it doesn't significantly enhance the code's reusability. 
Repeatedly calling your function will result in the same outcome. However, functions can be declared with parameters to introduce versatility and customization:

def function_name(param_1, param_2):
    <code>
Parameters are variables that you can use inside your function. A function can be declared with different number of parameters. 
In the example above, param_1 and param_2 are parameters.

Modify your function declaration so that it takes two parameters called message and offset.
'''

def caesar(message, offset):
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

caesar()
