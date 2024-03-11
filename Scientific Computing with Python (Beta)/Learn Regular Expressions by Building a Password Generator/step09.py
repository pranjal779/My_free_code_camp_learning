import random
import string


# Define the possible characters for the password
letters = string.ascii_letters
digits = string.digits
symbols = string.punctuation

# Combine all characters
all_characters = letters + digits + symbols

print(all_characters)

'''
Step 9
The random module contains a pseudo-random number generator. Most of its functionalities depend on the random() function, which returns a floating point number in the range between 0.0 (inclusive) and 1.0 (exclusive).

Call the random() function and print the result.
'''

# did not work
# random_letters, random_digits, random_symbols = random.letters, random.digits, random.symbols

# random_all_characters = random_letters + random_digits + random_symbols
# print(random_all_characters)

# did not work
# random()
# print(all_characters)

print(random.random())

'''
"It's on like Donkey Kong!"

13% complete
Learn Regular Expressions by Building a Password Generator
13% complete
'''

# Output:
# >>> abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
# >>> 0.8058205086088953
