# Step 55
# At the bottom of your code, after your existing caesar(text, shift) call, call your function again.

# This time, pass the text variable and the integer 13 as arguments.


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

caesar(text, shift)
caesar(text, 13) # task 55


# Output:
# >>> plain text: Hello Zaira
# >>> encrypted text: khoor cdlud
# >>> plain text: Hello Zaira
# >>> encrypted text: uryyb mnven

# "Ride like the wind!"

# 58% complete
# Learn String Manipulation by Building a Cipher
# 58% complete
