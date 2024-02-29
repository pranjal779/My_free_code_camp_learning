# Step 17
# Within the verify_card_number function, create a variable odd_digits that contains every other digit of the card_number_reversed string.

def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]


# "Far out!"

# 49% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 49% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    verify_card_number(translated_card_number)

main()
