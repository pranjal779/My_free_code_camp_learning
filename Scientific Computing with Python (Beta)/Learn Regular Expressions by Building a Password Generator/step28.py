import re
import secrets
import string


def generate_password(length, nums, special_chars, uppercase, lowercase):
    # Define the possible characters for the password
    letters = string.ascii_letters
    digits = string.digits
    symbols = string.punctuation

    # Combine all characters
    all_characters = letters + digits + symbols

    while True:
        password = ''
        # Generate password
        for _ in range(length):
            password += secrets.choice(all_characters)
        
        constraints = [
            (nums, '')
        ]        

    return password

# new_password = generate_password(8)
# print(new_password)

# Step 28
# A regular expression, or regex, is a pattern used to match a specific combination of characters inside a string. 
# It is a valid alternative to if/else conditional statements when you need to match or find patterns inside a string for validation purposes, character replacement, and others.

# The compile() function from the re module compiles the string passed as the argument into a regular expression object that can be used by other re methods.

# Declare a new pattern variable and assign the value of re.compile('i') to this variable.

pattern = re.compile('i')

# "We knew you could do it!"

# 39% complete
# Learn Regular Expressions by Building a Password Generator
# 39% complete
