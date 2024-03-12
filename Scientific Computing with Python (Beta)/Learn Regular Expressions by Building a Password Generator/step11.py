'''
Step 11
Every time the code runs, you should see a random character from the all_characters string. 
This is exactly what you want to achieve to create a random password.

However, the algorithm on which random relies makes the generated pseudo-random numbers predictable. 
Therefore, although the random module is suitable for the most common applications, it cannot be used for cryptographic purposes, 
due to its deterministic nature.

Instead of importing random, import the secrets module. Then change the print() call to use secrets.choice(all_characters).
'''
# import random - importing secrets insteads of random
import secrets
import string


# Define the possible characters for the password
letters = string.ascii_letters
digits = string.digits
symbols = string.punctuation

# Combine all characters
all_characters = letters + digits + symbols

print(all_characters)
# for task 11
# print(random.choice(all_characters))
print(secrets.choice(all_characters))

# Output:
# >>> abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
# >>> S

'''
"Power level? It's over 9000!"

15% complete
Learn Regular Expressions by Building a Password Generator
15% complete
'''
