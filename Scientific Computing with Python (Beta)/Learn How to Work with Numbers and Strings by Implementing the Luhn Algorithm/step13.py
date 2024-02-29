# Step 13
# Reverse the order of the digits in the last four digits of card_number, by using a slice with a step of -1. You can use either negative or positive indices for the start and end indices.

def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[-1:-5:-1]
    print(card_number_reversed)


# "Cool beans!"

# 37% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 37% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    print(translated_card_number)

    verify_card_number(translated_card_number)

main()
