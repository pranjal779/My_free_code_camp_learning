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

# Step 29
# The search() function from the re module analyzes the string passed as the argument looking for the first place where the regex pattern matches the string.

# Declare a variable called quote and assign the string Not all those who wander are lost. to this variable. Then, print the result of pattern.search(quote).

pattern = re.compile('i')
quote = 'Not all those who wander are lost.'
print(pattern.search(quote))

# Output:
# >>> None


# Congratulations, your code passes. Submit your code to continue.

# "It's super effective!"

# 40% complete
# Learn Regular Expressions by Building a Password Generator
# 40% complete
