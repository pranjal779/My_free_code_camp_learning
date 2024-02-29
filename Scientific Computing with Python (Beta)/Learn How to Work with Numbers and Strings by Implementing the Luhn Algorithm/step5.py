# Step 5
# Print the translated card number to the console.

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)
    print(translated_card_number)


# "Spool up the FTL drive!"

# 20% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 20% complete
