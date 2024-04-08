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

#   Step 39
# Add a new tuple to the constraints list. Use lowercase as the first item and a regex pattern that matches a single lowercase letter as the second item.

        constraints = [
            (nums, '[0-9]'), (lowercase, '[a-z]')
        ]

# "You did it!"

# 54% complete
# Learn Regular Expressions by Building a Password Generator
# 54% complete

    return password
    
# new_password = generate_password(8)
# print(new_password)

pattern = '[^a-z]t'
quote = 'Not all those who wander are lost.'
# print(re.findall(pattern, quote))
