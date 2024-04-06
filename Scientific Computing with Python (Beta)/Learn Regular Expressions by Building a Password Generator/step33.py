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

# Step 33
# To check that the generated password meets the required features, you are going to use the findall() function from the re module. 
# It's similar to search but it returns a list with all the occurrences of the matched pattern.

# Replace the search() call with findall() and check the output.

# Output:
# >>> ['ll', 'l']

"Terminated."

# 46% complete
# Learn Regular Expressions by Building a Password Generator
# 46% complete
