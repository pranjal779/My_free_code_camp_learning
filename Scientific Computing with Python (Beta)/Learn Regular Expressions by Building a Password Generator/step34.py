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

# Step 34
# A character class is indicated by square brackets and matches one character among those specified between the brackets. For example, ma[dnt] matches either mad, man, or mat.

# Modify your pattern to match a w followed by either h or a.

pattern = 'w[ha]'
quote = 'Not all those who wander are lost.'
print(re.findall(pattern, quote))

# Output:
# >>> ['wh', 'wa']

# "That's the way it's done!"

# 47% complete
# Learn Regular Expressions by Building a Password Generator
# 47% complete
