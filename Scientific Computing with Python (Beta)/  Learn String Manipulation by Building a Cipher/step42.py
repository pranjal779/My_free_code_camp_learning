'''
Step 42
Currently, spaces get encrypted as 'c'. To maintain the original spacing in the plain message, you'll require a conditional if statement. 
This is composed of the if keyword, a condition, and a colon :.

if x != 0:
    print(x)
In the example above, the condition of the if statement is x != 0. 
The code print(x), inside the if statement body, runs only when the condition evaluates to True (in this example, meaning that x is different from zero).

At the top of your for loop, replace print(char == ' ') with an if statement. 
The condition of this if statement should evaluate to True if char is an empty space and False otherwise. 
Inside the if body, print the string 'space!'. 
Remember to indent this line.
'''
  
text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
encrypted_text = ''

for char in text.lower():
    if char == ' ':
        print('space!')
    index = alphabet.find(char)
    new_index = index + shift
    encrypted_text += alphabet[new_index]
    print('char:', char, 'encrypted text:', encrypted_text)

# output:
'''
>>> char: h encrypted text: k
>>> char: e encrypted text: kh
>>> char: l encrypted text: kho
>>> char: l encrypted text: khoo
>>> char: o encrypted text: khoor
>>> space!
>>> char:   encrypted text: khoorc
>>> char: w encrypted text: khoorcz
>>> char: o encrypted text: khoorczr
>>> char: r encrypted text: khoorczru
>>> char: l encrypted text: khoorczruo
>>> char: d encrypted text: khoorczruog
'''

'''
"Storm that castle!"

44% complete
Learn String Manipulation by Building a Cipher
44% complete
Navigated to Step 42
'''
