def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]

# Step 16
# Remove the print call from the main function.

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    # print(translated_card_number)

    verify_card_number(translated_card_number)


# "Here's looking at you, Code!"

# 46% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 46% complete


main()
