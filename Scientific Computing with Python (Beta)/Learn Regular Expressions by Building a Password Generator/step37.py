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

#       Step 37
# Now, modify the pattern in your constraint tuple to indicate the range of all digits using square brackets.
      
        constraints = [
            (nums, '[0-9]') # removed '[0123456789]' for step 37
        ] 

# "Gotta go fast!"

# 51% complete
# Learn Regular Expressions by Building a Password Generator
# 51% complete

    return password
    
# new_password = generate_password(8)
# print(new_password)

pattern = '[a-z]t'
quote = 'Not all those who wander are lost.'
#print(re.findall(pattern, quote))
