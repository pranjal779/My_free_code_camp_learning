import secrets
import string


def generate_password(length):
    # Define the possible characters for the password
    letters = string.ascii_letters
    digits = string.digits
    symbols = string.punctuation

    # Combine all characters
    all_characters = letters + digits + symbols

# Step 19
# After the loop, add a return statement to your function so it returns the password variable.
  
    password = ''
    # Generate password
    for _ in range(length):
        password += secrets.choice(all_characters)
    return password


# "Nice one!"

# 26% complete
# Learn Regular Expressions by Building a Password Generator
# 26% complete
