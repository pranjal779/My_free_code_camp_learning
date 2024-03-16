import secrets
import string

# Step 23
# Next, you are going to give your function more parameters that will act as constraints for the generated password.

# Modify your function declaration by adding nums, special_chars, uppercase, and lowercase in this order after the existent length parameter.

def generate_password(length, nums, special_chars, uppercase, lowercase):
    # Define the possible characters for the password
    letters = string.ascii_letters
    digits = string.digits
    symbols = string.punctuation

# "We knew you could do it!"

# 32% complete
# Learn Regular Expressions by Building a Password Generator
# 32% complete


    # Combine all characters
    all_characters = letters + digits + symbols

    password = ''
    # Generate password
    for _ in range(length):
        password += secrets.choice(all_characters)
        
    return password

# new_password = generate_password(8)
# print(new_password)
