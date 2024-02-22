
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

# Step 64
# The .index() method is identical to the .find() method but it throws a ValueError exception if it is unable to find the substring.

# After incrementing key_index, declare a variable named offset. Find the index that key_char has in alphabet and assign it to offset. Use the .index() to find the index.

        else:
            # Find the right key character to encode
            key_char = key[key_index % len(key)]
            key_index += 1
            offset = alphabet.index(key_char)


# "Far out!"

# 67% complete
# Learn String Manipulation by Building a Cipher
# 67% complete

            index = alphabet.find(char)
            new_index = (index + offset) % len(alphabet)
            encrypted_text += alphabet[new_index]
    print('plain text:', message)
    print('encrypted text:', encrypted_text)
