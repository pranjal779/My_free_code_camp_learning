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
Step 10
The choice() function from the random module takes a sequence and returns a random item of the sequence.

Modify your print() call to use the choice() function and pass all_characters as the argument.
'''

# from the random module, random method was used:
# print(random.random())

# from the random module, choice method is used:
print(random.choice(all_characters))

'''
"Nothing but net!"

14% complete
Learn Regular Expressions by Building a Password Generator
14% complete
'''
