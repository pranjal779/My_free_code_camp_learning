import secrets
import string


def generate_password(length):
    # Define the possible characters for the password
    letters = string.ascii_letters
    digits = string.digits
    symbols = string.punctuation

    # Combine all characters
    all_characters = letters + digits + symbols

    password = ''
    # Generate password
    for _ in range(length):
        password += secrets.choice(all_characters)
        
    return password

# Step 20
# Finally, call the generate_password function with 8 as the argument and assign the function call to a new_password variable.
    
new_password = generate_password(8)

# "King of the Pirates!"

# 28% complete
# Learn Regular Expressions by Building a Password Generator
# 28% complete
