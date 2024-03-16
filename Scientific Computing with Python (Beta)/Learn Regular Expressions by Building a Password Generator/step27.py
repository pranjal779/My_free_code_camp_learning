# Step 27
# The re module allows you to use regular expressions in your code. You will learn more about regular expressions very soon.

# For now, add an import statement at the top of your code to import the re module.

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

# Congratulations, your code passes. Submit your code to continue.

# "You're unstoppable!"

# 38% complete
# Learn Regular Exp
