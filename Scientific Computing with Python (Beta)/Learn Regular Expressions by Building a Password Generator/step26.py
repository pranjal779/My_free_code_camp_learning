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

# Step 26
# A tuple is another built-in data structure in Python. Tuples are very much like lists, but they are defined with parentheses (), instead of square brackets. Also, tuples are immutable, unlike lists.

# my_tuple = ('larch', 1, True)
# Your constraints list is going to store tuples. The first item of each tuple will be a constraint parameter.

# Add a tuple to your list. Use nums as the first item and an empty string as the second item.
      
        constraints = [(nums, '')]
        
    return password

# new_password = generate_password(8)
# print(new_password)


# "You're unstoppable!"

# 36% complete
# Learn Regular Expressions by Building a Password Generator
# 36% complete
