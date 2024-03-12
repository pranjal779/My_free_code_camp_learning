import secrets
import string


# Define the possible characters for the password
letters = string.ascii_letters
digits = string.digits
symbols = string.punctuation

# Combine all characters
all_characters = letters + digits + symbols

# Step 12
# Although the effect might seem equal to random.choice(), secrets ensure you the most secure source of randomness that your operating system can provide.

# Now, delete your two print() calls.

# del the 2 print calls for task 12
# print(all_characters)
# print(secrets.choice(all_characters))

# "Raise the roof!"

# 17% complete
# Learn Regular Expressions by Building a Password Generator
# 17% complete
