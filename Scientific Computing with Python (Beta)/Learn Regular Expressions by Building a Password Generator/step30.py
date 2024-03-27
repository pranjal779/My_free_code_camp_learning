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

# Step 30
# The value None is returned since 'i' is not found inside the parsed string.

# Now, modify the string passed to re.compile() into 'l' and see the result.

pattern = re.compile('l')
quote = 'Not all those who wander are lost.'
print(pattern.search(quote))

# Congratulations, your code passes. Submit your code to continue.

# "Gotta code 'em all!"

# 42% complete
# Learn Regular Expressions by Building a Password Generator
# 42% complete
