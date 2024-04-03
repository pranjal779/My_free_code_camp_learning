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

# Step 31
# As you can see from the output, now your regex matches the first l inside the string.

# In your pattern, you can add a quantifier after a character to specify how many times that character should be repeated. 
# For example, the + quantifier means it should repeat one or more times.

# Add a + quantifier to your pattern.

pattern = re.compile('l+')
quote = 'Not all those who wander are lost.'
print(pattern.search(quote))


#  Output:
# >>> <re.Match object; span=(5, 7), match='ll'>
# "Off the charts!"

# 43% complete
# Learn Regular Expressions by Building a Password Generator
# 43% complete
