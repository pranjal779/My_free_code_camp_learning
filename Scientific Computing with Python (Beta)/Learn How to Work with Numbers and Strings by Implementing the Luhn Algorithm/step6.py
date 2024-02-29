# Step 6
# Call the main function at the end of your script.

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    print(translated_card_number)

main()

# "You're heating up!"

# 17% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 17% complete

# Output:
# >>> 4111111145551142
