# Step 7
# Define a function verify_card_number with a parameter card_number, and use the pass keyword to make the function do nothing.

def verify_card_number(card_number):
    pass

# "Bingo!"

# 20% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 20% complete


def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    print(translated_card_number)

main()

# Output:
# >>> 4111111145551142
