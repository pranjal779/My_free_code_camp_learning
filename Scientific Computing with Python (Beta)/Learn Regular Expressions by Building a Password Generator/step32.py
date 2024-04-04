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

# Step 32Passed
# You can obtain the same result without using the compile() function. 
# Modify your pattern variable into the literal string 'l+'. Then, change the print() call to print re.search(pattern, quote).

# pattern = re.compile('l+')
pattern = 'l+' # or str('l+') also works
quote = 'Not all those who wander are lost.'
print(re.search(pattern, quote))

# "Storm that castle!"

# 44% complete
# Learn Regular Expressions by Building a Password Generator
# 44% complete
