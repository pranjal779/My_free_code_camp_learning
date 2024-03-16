import secrets
import string


def generate_password(length, nums, special_chars, uppercase, lowercase):
    # Define the possible characters for the password
    letters = string.ascii_letters
    digits = string.digits
    symbols = string.punctuation

    # Combine all characters
    all_characters = letters + digits + symbols

#   Step 24
# Put your password variable declaration and the following for loop inside a while loop. Use True as the condition for your new loop.
  
    while True:
        password = ''
        # Generate password

        for _ in range(length):
            password += secrets.choice(all_characters)
    return password

#   "Power UP!"

# 33% complete
# Learn Regular Expressions by Building a Password Generator
# 33% complete


# new_password = generate_password(8)
# print(new_password)
