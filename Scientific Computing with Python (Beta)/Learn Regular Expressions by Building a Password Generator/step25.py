import secrets
import string


def generate_password(length, nums, special_chars, uppercase, lowercase):
    # Define the possible characters for the password
    letters = string.ascii_letters
    digits = string.digits
    symbols = string.punctuation

    # Combine all characters
    all_characters = letters + digits + symbols

#   Step 25
# After your for loop, create a constraints variable and assign an empty list to this variable.
  
    while True:
        password = ''
        # Generate password
        for _ in range(length):
            password += secrets.choice(all_characters)
        constraints = []
    return password

# "Sonic Boom!"

# 35% complete
# Learn Regular Expressions by Building a Password Generator
# 35% complete
  
# new_password = generate_password(8)
# print(new_password)


# "By the power of Grayskull!"

# 35% complete
# Learn Regular Expressions by Building a Password Generator
# 35% complete
