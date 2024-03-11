'''
Step 7
Now print the all_characters variable to see what it looks like.
'''

import string


# Define the possible characters for the password
letters = string.ascii_letters
digits = string.digits
symbols = string.punctuation
# Combine all characters
all_characters = letters + digits + symbols


print(all_characters)

'''
Congratulations, your code passes. Submit your code to continue.

"Feel that need for speed!"

10% complete
Learn Regular Expressions by Building a Password Generator
10% complete
'''

# Output:
# >>> abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
